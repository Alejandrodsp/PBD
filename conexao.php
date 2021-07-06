<?php

$servidor = "localhost";
$user = "root";
$senha = "";
$banco = "agrostore";

$conexao = mysqli_connect($servidor,$user,$senha,$banco) or die(mysql_error());


?>
<html>
<head>
<title>Agro Store</title>
<script type="text/javascript">
function loginsuccessfully(){
	setTimeout("window.location = 'index.php'",5000);
}
function loginfailed(){
	setTimeout("window.location = 'index.php'",5000);
}
</script>
</head>
<body background="img/fundo1.jpg">

<?php
$email = $_POST['email'];
$senha = $_POST['senha'];
$sql = mysqli_query($conexao,"SELECT * FROM fazendeiro WHERE email = '$email' and senha = '$senha'") or die (mysql_error());
$row = mysqli_num_rows($sql);
if($row > 0){
 session_start();
$_SESSION['email'] =$_POST['email'];
$_SESSION['senha'] =$_POST['senha'];
echo "<center>Logado com sucesso!</center>";
echo "<script>loginsucessfully()</script>";
usleep(3000000);
header('Location: fazendeiro.php');
}
else{
echo "<center>Login ou senha invalido!! Aguarde um instante.</center>";
echo "<script>loginfailed()</script>";
}
?>
</body>
</html>