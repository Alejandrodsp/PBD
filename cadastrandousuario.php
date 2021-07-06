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
$cpf = $_POST['cpf'];
$nome = $_POST['nome'];
$email = $_POST['email'];
$senha = $_POST['senha'];
$telefone = $_POST['telefone'];
$sql = mysqli_query($conexao,"INSERT INTO usuario_comum (CPF, Nome, Email, Senha, Telefone) VALUES ('$cpf', '$nome', '$email', '$senha','$telefone');");
header('Location: index.php');
?>
</body>
</html>