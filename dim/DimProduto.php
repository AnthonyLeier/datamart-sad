<?php
namespace dimensions;
mysqli_report(MYSQLI_REPORT_STRICT);
require_once 'Produto.php';
require_once 'Sumario.php';
use dimensions\Produto;
use dimensions\Sumario;
class DimProduto {

    public function carregarDimProduto() {
        $dataAtual = date('Y-m-d');
        $sumario = new Sumario();

        try {
            $connDimensao = $this->conectarBanco('dm_comercial');
            $connComercial = $this->conectarBanco('bd_comercial');
        }
        catch(\Exception $e) {
            die($e->getMessage());
        }

        $sqlComercial = $connComercial->prepare("select * from produto"); //Cria variável com comando SQL
        $sqlComercial->execute(); //Executa o comando SQL
        $resultComercial = $sqlComercial->get_result(); //Atribui à variával o resultado da consulta
        if ($resultComercial->num_rows !== 0) { //Testa se a consulta retornou dados
            while ($linhaProduto = $resultComercial->fetch_assoc()) { //Atibui à variável cada linha até o último
                $produto = new Produto();
                $produto->setProduto($linhaProduto['nome_produto'], $linhaProduto['descricao_produto'], $linhaProduto['unid_medida'], $linhaProduto['preco']);
                $sqlInsertDim = $connDimensao->prepare("insert into dim_produto
                                                          (nome, descricao, unidade, preco)
                                                          values
                                                          (?,?,?,?)");
                $sqlInsertDim->bind_param("sssd", $produto->nome, $produto->descricao, $produto->unidade, $produto->preco);
                $sqlInsertDim->execute();
                $sumario->setQuantidadeInclusoes();
            }
            $sqlComercial->close();
            $sqlInsertDim->close();
            $connComercial->close();
            $connDimensao->close();
        } else {
            throw new \Exception('Erro: Erro no processo de inclusão!');
        }
        return $sumario;
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
