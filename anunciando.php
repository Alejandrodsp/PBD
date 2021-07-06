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
$Produto = $_POST['Produto'];
$Valor = $_POST['Valor'];
$CNPJ_anunciante = $_POST['CNPJ_anunciante'];
$sql = mysqli_query($conexao,"INSERT INTO anuncia (Valor, Produto, CNPJ_anunciante) VALUES ('$Valor', '$Produto', '$CNPJ_anunciante');");
header('Location: fazendeiro.php');
?>
</body>
</html>