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
$Data_lucro = $_POST['Data_lucro'];
$Valor = $_POST['Valor'];
$Descricao = $_POST['Descricao'];
$CNPJ = $_POST['CNPJ'];
$categoria = $_POST['categoria'];
$sql = mysqli_query($conexao,"INSERT INTO lucro (Data_lucro, Valor, Descricao, CNPJ, Categoria) VALUES ('$Data_lucro','$Valor', '$Descricao', '$CNPJ', '$categoria');");
header('Location: fazendeiro.php');
?>
</body>
</html>