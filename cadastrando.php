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
$cnpj = $_POST['cnpj'];
$nome = $_POST['nome'];
$email = $_POST['email'];
$senha = $_POST['senha'];
$endereco = $_POST['endereco'];
$telefone = $_POST['telefone'];
$sql = mysqli_query($conexao,"INSERT INTO fazendeiro (CNPJ, Nome, Email, Senha, Endereco, Telefone) VALUES ('$cnpj', '$nome', '$email', '$senha', '$endereco', '$telefone');");
header('Location: index.php');
?>
</body>
</html>