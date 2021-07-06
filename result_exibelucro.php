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

$pesquisar=$_POST['pesquisar'];
  
    $pesquisar = $_POST['pesquisar'];
    $result_cursos = "SELECT * FROM lucro WHERE CNPJ LIKE '%$pesquisar%' LIMIT 5";
    $resultado_cursos = mysqli_query($conexao, $result_cursos);
    $entrou = 0;
    while($rows_cursos = mysqli_fetch_array($resultado_cursos)){
	echo "Lucro: ".$rows_cursos['Id_lucro']."<br>";
	echo "Data: ".$rows_cursos['Data_lucro']."<br>";
	echo "Valor: R$ ".$rows_cursos['Valor']."<br>";
        echo "Descricao: ".$rows_cursos['Descricao']."<br>";
	echo "Categoria: ".$rows_cursos['Categoria']."<br>";
	echo"<br><br>";
	$entrou = 1;
    }
	if($entrou == 0){
	 echo "Nenhum lucro encontrado!";
 	 
  	
	}
?>
</center>
</body>
</html>