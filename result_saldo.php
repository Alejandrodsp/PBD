<html>
<head>
<title>Agro Store</title>
</head>
<body background="img/fundo1.jpg">
<center><h3><font color="white">
<br>

<?php

$servidor = "localhost";
$user = "root";
$senha = "";
$banco = "agrostore";

$conexao = mysqli_connect($servidor,$user,$senha,$banco) or die(mysql_error());

$pesquisar=$_POST['pesquisar'];
  
    $pesquisar = $_POST['pesquisar'];
    $saldo = 0;
    $receita = 0;
    $data = date("Y/m/d");	
    $result_cursos = "SELECT * FROM lucro WHERE CNPJ LIKE '%$pesquisar%' LIMIT 5";
    $resultado_cursos = mysqli_query($conexao, $result_cursos);
    while($rows_cursos = mysqli_fetch_array($resultado_cursos)){
	$saldo = $saldo + $rows_cursos['Valor'];
    }
    $result_cursos = "SELECT * FROM despesa WHERE CNPJ LIKE '%$pesquisar%' LIMIT 5";
    $resultado_cursos = mysqli_query($conexao, $result_cursos);
    while($rows_cursos = mysqli_fetch_array($resultado_cursos)){
	$receita = $receita + $rows_cursos['Valor'];
    }
  $saldo = $saldo - $receita;
  echo "<h2>Saldo atual: R$ $saldo,00</h2>";
  $sql = mysqli_query($conexao,"INSERT INTO saldo_total (Data_saldo, Valor, CNPJ) VALUES ('$data', '$saldo', '$pesquisar');");		
   
    $result_cursos = "SELECT * FROM saldo_total WHERE CNPJ LIKE '%$pesquisar%' LIMIT 5";
    $resultado_cursos = mysqli_query($conexao, $result_cursos);
   echo "<h2>Historico:</h2>";
    while($rows_cursos = mysqli_fetch_array($resultado_cursos)){
	echo "<h3>Data: ".$rows_cursos['Data_saldo']."<br>";
	echo "<h3>Valor de saldo: R$ ".$rows_cursos['Valor']."<br>";
	
    }
?>
<br>
<br>
<br>
<br>


</center>
</body>
</html>