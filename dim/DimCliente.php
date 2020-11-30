<?php

namespace dim;
mysqli_report(MYSQLI_REPORT_STRICT);

class DimCliente {
    public function carregarDimCliente(){
        //Verificar se a dimensão no Datamart está vazia
        if(){ 
            //Dimensão Vazia
            //Carregar todos os registros da base transacional no Datamart

        }else{ 
            //Dimensão com dados
            //Buscar os registros na base de dados transacional

            //Fazer uma busca em cada cliente para saber se já está no datamart
            if(){
                //Cliente da base transacional não está no datamart
                //Insere o cliente no datamart
            }else{
                //Cliente da base transacional já está no datamart

                //Verificar se houve alteração
                if(){
                    //Houve alteração
                    //Primeiro: atualizar a data final do registro atual do Datamart
                    //Segundo: incluir o registro atualizado da base de dados transacional no Datamart

                }else{
                    //Não houve alteração
                }
            }
        }
    }

    private function strIgual($strDM, $strTS){
        $hashDM = md5($strDM);
        $hashTS = md5($strTS);

        if($hashDM === $hashTS){
            return true;
        }else {
            return false;
        }
    } 

    private function conectarBanco($banco){
        if(!defined('DS')){
            define('DS', DIRECTORY_SEPARATOR);
        }
        if(!defined('BASE_DIR')){
            define('BASE_DIR', dirname(__FILE__).DS);
        }
            require(BASE_DIR.'configDB.php');
        try{
            $conn = new \MySQLi($dbhost, $user, $password, $banco);
            return $conn;
        }catch(mysqli_sql_exception $e){
            throw new \Exception($e);
            die;
        }
    }
}

?>