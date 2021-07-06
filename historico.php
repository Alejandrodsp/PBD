<html>
<head>
<title>Agro Store</title>
</head>
<body background="img/fundo1.jpg">
<center><h3><font color="white">
<?php

$servidor = "localhost";
$user = "root";
$senha = "";
$banco = "agrostore";

$conexao = mysqli_connect($servidor,$user,$senha,$banco) or die(mysql_error());



    $pesquisar = $_POST['pesquisar'];
    $result_cursos = "SELECT * FROM saldo_total WHERE CNPJ LIKE '%$pesquisar%' LIMIT 5";
    $resultado_cursos = mysqli_query($conexao, $result_cursos);
    $entrou = 0;
    while($rows_cursos = mysqli_fetch_array($resultado_cursos)){
	echo "Data: ".$rows_cursos['Data_saldo']."<br>";
	echo "Valor de saldo: R$ ".$rows_cursos['Valor']."<br>";
	echo"<br><br>";
	$entrou = 1;
    }
	if($entrou == 0){
	 echo "Nenhuma movimentacao foi encontrada";
 	 
  	
	}
?>
</center>
</body>
</html>