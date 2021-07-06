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
    $result_cursos = "SELECT * FROM anuncia WHERE Produto LIKE '%$pesquisar%' LIMIT 5";
    $resultado_cursos = mysqli_query($conexao, $result_cursos);
    $entrou = 0;
    while($rows_cursos = mysqli_fetch_array($resultado_cursos)){
	echo "Anuncio: ".$rows_cursos['Id_anuncio']."<br>";
	echo "Produto: ".$rows_cursos['Produto']."<br>";
	echo "Valor: R$ ".$rows_cursos['Valor']."<br>";
        echo "Fazendeiro anunciante: ".$rows_cursos['CNPJ_anunciante']."<br>";
	echo"<br><br>";
	$entrou = 1;
    }
	if($entrou == 0){
	 echo "Nenhum produto encontrado!";
 	 
	}
?>
<a  href="reserva.php"><center><input type="button" name="create" value="Efetuar Reserva"style="width: 145px; height: 50px"></a></center>
</center>
</body>
</html>