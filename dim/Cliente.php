<?php
namespace dimensions;

class Cliente
{
    public $cpf;
    public $nome;
    public $sexo;
    public $idade;
    public $email;
    public $rua;
    public $bairro;
    public $cidade;

    public function setCliente($cpf, $nome, $sexo, $idade, $rua, $bairro, $cidade, $uf){
        $this->cpf = $cpf;
        $this->nome = $nome;
        $this->sexo = $sexo;
        $this->idade = $idade;
        $this->rua = $rua;
        $this->bairro = $bairro;
        $this->cidade = $cidade;
        $this->uf = $uf;
    }
}
