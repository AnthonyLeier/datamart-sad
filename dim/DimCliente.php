<?php
namespace dimensions;
mysqli_report(MYSQLI_REPORT_STRICT);
require_once 'Cliente.php';
require_once 'Sumario.php';
use dimensions\Cliente;
use dimensions\Sumario;
class DimCliente {
    public function carregarDimCliente() {
        $dataAtual = date('Y-m-d');
        $sumario = new Sumario();
        try {
            $connDimensao = $this->conectarBanco('dm_comercial');
            $connComercial = $this->conectarBanco('bd_comercial');
        }
        catch(\Exception $e) {
            die($e->getMessage());
        }
        $sqlDim = $connDimensao->prepare('select SK_cliente, cpf, nome, sexo, idade, rua, bairro, cidade, uf from dim_cliente');
        $sqlDim->execute();
        $result = $sqlDim->get_result();
        if ($result->num_rows === 0) {
            //Dimensão Vazia
            //Carregar todos os registros da base transacional no Datamart
            $sqlComercial = $connComercial->prepare("select * from cliente"); //Cria variável com comando SQL
            $sqlComercial->execute(); //Executa o comando SQL
            $resultComercial = $sqlComercial->get_result(); //Atribui à variával o resultado da consulta
            if ($resultComercial->num_rows !== 0) { //Testa se a consulta retornou dados
                while ($linhaCliente = $resultComercial->fetch_assoc()) { //Atibui à variável cada linha até o último
                    $cliente = new Cliente();
                    $cliente->setCliente($linhaCliente['cpf'], $linhaCliente['nome'], $linhaCliente['sexo'], $linhaCliente['idade'], $linhaCliente['rua'], $linhaCliente['bairro'], $linhaCliente['cidade'], $linhaCliente['uf']);
                    $slqInsertDim = $connDimensao->prepare("insert into dim_cliente
                                                          (cpf, nome, sexo, idade, rua, bairro, cidade, uf, data_ini)
                                                          values
                                                          (?,?,?,?,?,?,?,?,?)");
                    $slqInsertDim->bind_param("sssisssss", $cliente->cpf, $cliente->nome, $cliente->sexo, $cliente->idade, $cliente->rua, $cliente->bairro, $cliente->cidade, $cliente->uf, $dataAtual);
                    $slqInsertDim->execute();
                    $sumario->setQuantidadeInclusoes();
                }
                $sqlComercial->close();
                $sqlDim->close();
                $slqInsertDim->close();
                $connComercial->close();
                $connDimensao->close();
            }
        } else {
            //Dimensão com dados
            //Buscar os registros na base de dados transacional
            $sqlComercial = $connComercial->prepare('select * from cliente');
            $sqlComercial->execute();
            $resultComercial = $sqlComercial->get_result();
            while ($linhaComercial = $resultComercial->fetch_assoc()) {
                $sqlDim = $connDimensao->prepare('SELECT SK_cliente, nome, cpf, sexo, idade, rua, bairro, cidade, uf FROM
                                                dim_cliente
                                                WHERE
                                                cpf = ?
                                                AND
                                                data_fim IS NULL'); //Importante
                $sqlDim->bind_param('s', $linhaComercial['cpf']);
                $sqlDim->execute();
                $resultDim = $sqlDim->get_result();
                //Fazer uma busca em cada cliente para saber se já está no datamart
                if ($resultDim->num_rows === 0) {
                    //Cliente da base transacional não está no datamart
                    //Insere o cliente no datamart
                    $sqlInsertDim = $connDimensao->prepare('INSERT INTO dim_cliente (cpf, nome, sexo, idade, rua, bairro,
                                                            cidade, uf, data_ini) VALUES
                                                            (?,?,?,?,?,?,?,?,?)');
                    $sqlInsertDim->bind_param('sssisssss', $linhaComercial['cpf'], $linhaComercial['nome'], $linhaComercial['sexo'], $linhaComercial['idade'], $linhaComercial['rua'], $linhaComercial['bairro'], $linhaComercial['cidade'], $linhaComercial['uf'], $dataAtual);
                    $sqlInsertDim->execute();
                    if ($sqlInsertDim->error) {
                        throw new \Exception('Erro: Cliente novo não incluso');
                    }
                    $sumario->setQuantidadeInclusoes();
                } else {
                    //Cliente da base transacional já está no datamart
                    $strComercialTeste = $linhaComercial['cpf'] . $linhaComercial['nome'] . $linhaComercial['sexo'] . $linhaComercial['idade'] . $linhaComercial['rua'] . $linhaComercial['bairro'] . $linhaComercial['cidade'] . $linhaComercial['uf'];
                    $linhaDim = $resultDim->fetch_assoc();
                    $strDimensionalTeste = $linhaDim['cpf'] . $linhaDim['nome'] . $linhaDim['sexo'] . $linhaDim['idade'] . $linhaDim['rua'] . $linhaDim['bairro'] . $linhaDim['cidade'] . $linhaDim['uf'];
                    //Verificar se houve alteração
                    if (!$this->strIgual($strComercialTeste, $strDimensionalTeste)) {
                        //Houve alteração
                        //Primeiro: atualizar a data final do registro atual do Datamart
                        //Segundo: incluir o registro atualizado da base de dados transacional no Datamart
                        $sqlUpdateDim = $connDimensao->prepare('UPDATE dim_cliente SET
                                                         data_fim = ?
                                                         where
                                                         SK_cliente = ?');
                        $sqlUpdateDim->bind_param('si', $dataAtual, $linhaDim['SK_cliente']);
                        $sqlUpdateDim->execute();
                        if (!$sqlUpdateDim->error) {
                            $sqlInsertDim = $connDimensao->prepare('INSERT INTO dim_cliente
                                                            (cpf, nome, sexo, idade, rua, bairro, cidade, uf, data_ini)
                                                            VALUES
                                                            (?, ?, ?, ?, ?, ?, ?, ?, ?)');
                            $sqlInsertDim->bind_param("sssisssss", $linhaComercial['cpf'], $linhaComercial['nome'], $linhaComercial['sexo'], $linhaComercial['idade'], $linhaComercial['rua'], $linhaComercial['bairro'], $linhaComercial['cidade'], $linhaComercial['uf'], $dataAtual);
                            $sqlInsertDim->execute();
                            $sumario->setQuantidadeAlteracoes();
                        } else {
                            //Não houve alteração
                            throw new \Exception('Erro: Erro no processo de alteração!');
                        }
                    }
                }
            }
        }
        return $sumario;
    }
    private function strIgual($strDM, $strTS) {
        $hashDM = md5($strDM);
        $hashTS = md5($strTS);
        if ($hashDM === $hashTS) {
            return true;
        } else {
            return false;
        }
    }
    private function conectarBanco($banco) {
        if (!defined('DS')) {
            define('DS', DIRECTORY_SEPARATOR);
        }
        if (!defined('BASE_DIR')) {
            define('BASE_DIR', dirname(__FILE__) . DS);
        }
        require BASE_DIR . 'configDB.php';
        try {
            $conn = new \MySQLi($dbhost, $user, $password, $banco);
            return $conn;
        }
        catch(mysqli_sql_exception $e) {
            throw new \Exception($e);
            die;
        }
    }
}
