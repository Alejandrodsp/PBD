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
</head>
<body background="img/fundo1.jpg">
<br/><br/>
<br/><br/>
<h1>
<center>
<font color="WHITE">EFETUAR RESERVA</font>
<br/><br/>

</h1>
</center>
<h3>
<center>
<form name ="createreserva" method = "post" action = "reservando.php">
<input type="text" name="Data"placeholder="Insira a data de retirada" /><br /><br/>
<input type="text" name="Quantidade"placeholder="Insira a quantidade" /><br /><br/>
<input type="text" name="CPF"placeholder="Confirme seu CPF" /><br /><br/>
<select name="Produto">
<option value ="">Produto</option>
<?php
$getcategories = "SELECT * FROM produto";
$getcategoriesquery = mysqli_query($conexao,$getcategories);
while($linha = mysqli_fetch_array($getcategoriesquery)){
$categoria = $linha['Nome'];
echo"<option value = '$categoria'>$categoria</option>";
}
?>
</select>
<input type="text" name="Anuncio"placeholder="Insira o numero do anuncio" /><br /><br/>
<input type="submit" value="Reservar" />
</center>
</h3>
</body>


</html>