<?php
   require_once('dim/DimCliente.php');   
   require_once('dim/DimProduto.php');   
   require_once('dim/Sumario.php');

   use dimensions\Sumario;   
   use dimensions\DimCliente;
   use dimensions\DimProduto;

   $dimCliente = new DimCliente();
   $sumCliente = $dimCliente->carregarDimCliente();
   echo "Clientes: <br>";
   echo "Inclusões: ".$sumCliente->quantidadeInclusoes."<br>";
   echo "Alterações: ".$sumCliente->quantidadeAlteracoes."<br>";
   echo "<br>==============================================<br>";

   $dimProduto = new DimProduto();
   $sumProduto = $dimProduto->carregarDimProduto();
   echo "Produtos: <br>";
   echo "Inclusões: ".$sumProduto->quantidadeInclusoes."<br>";
   echo "Alterações: ".$sumProduto->quantidadeAlteracoes."<br>";
   echo "<br>==============================================<br>";

?>