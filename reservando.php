<html>
<head>
<title>Cadastro</title>
<body>
<?php
$host = "localhost";
$user = "root";
$pass = "";
$banco = "agrostore";
$conexao = mysqli_connect($host, $user, $pass, $banco)or die(mysql_error());;
?>
<?php
$Data = $_POST['Data'];
$Quantidade = $_POST['Quantidade'];
$CPF = $_POST['CPF'];
$Produto = $_POST['Produto'];
$Anuncio = $_POST['Anuncio'];
$sql = mysqli_query($conexao,"INSERT INTO reserva (Data, Quantidade, CPF , Produto, Anuncio) VALUES ('$Data', '$Quantidade', '$CPF', '$Produto', '$Anuncio');");
header('Location: index.php');
?>
</body>
</html>