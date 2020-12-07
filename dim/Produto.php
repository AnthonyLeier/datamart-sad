<?php
namespace dimensions;

class Produto {

    public $nome;
    public $descricao;
    public $unidade;
    public $preco;

    public function setProduto($nome, $descricao, $unidade, $preco){
        $this->nome = $nome;
        $this->descricao = $descricao;
        $this->unidade = $unidade;
        $this->preco = $preco;
    }
}
