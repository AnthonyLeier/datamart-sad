<?php
   require_once('dim/DimCliente.php');   
   require_once('dim/Sumario.php');

   use dimensions\Sumario;   
   use dimensions\DimCliente;

   $dimCliente = new DimCliente();
   $sumCliente = $dimCliente->carregarDimCliente();
   echo "Clientes: <br>";
   echo "Inclusões: ".$sumCliente->quantidadeInclusoes."<br>";
   echo "Alterações: ".$sumCliente->quantidadeAlteracoes."<br>";
   echo "<br>==============================================<br>";

?>