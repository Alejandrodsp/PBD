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
$Data_despesa = $_POST['Data_despesa'];
$Valor = $_POST['Valor'];
$Descricao = $_POST['Descricao'];
$CNPJ = $_POST['CNPJ'];
$categoria = $_POST['categoria'];
$sql = mysqli_query($conexao,"INSERT INTO despesa (Data_despesa, Valor, Descricao, CNPJ, Categoria) VALUES ('$Data_despesa','$Valor', '$Descricao', '$CNPJ', '$categoria');");
header('Location: fazendeiro.php');
?>
</body>
</html>