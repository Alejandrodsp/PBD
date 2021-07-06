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
<font color="WHITE">ADICIONAR DESPESA</font>
<br/><br/>

</h1>
</center>
<h3>
<center>
<form name ="createanuncio" method = "post" action = "resultdespesa.php">
<input type="text" name="Data_despesa"placeholder="Insira a data" /><br /><br/>
<input type="text" name="Valor"placeholder="Insira o valor" /><br /><br/>
<input type="text" name="Descricao"placeholder="Descrição..." /><br /><br/>
<input type="text" name="CNPJ"placeholder="Confirme seu CNPJ" /><br /><br/>
<select name="categoria">
<option value ="">Categoria</option>
<?php
$getcategories = "SELECT * FROM categoria";
$getcategoriesquery = mysqli_query($conexao,$getcategories);
while($linha = mysqli_fetch_array($getcategoriesquery)){
$Id_categoria = $linha['Id_categoria'];
$categoria = $linha['Nome'];
echo"<option value = '$Id_categoria'>$categoria</option>";
}
?>
</select>
<br>
<br>

<input type="submit" value="Adicionar" />
</form>
</center>
</h3>
</body>

</html>