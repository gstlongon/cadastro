<?php
    require("conecta.php");

    $ra = $_POST['ra'];
    $nome = $_POST['nome'];
    $nome_problema = $_POST['nome_problema'];
    $descricao = $_POST['descricao'];
    $sala = $_POST['sala'];
   
    
    $sql = "INSERT INTO cadastro(ra, nome, problema, descricao, sala)
    VALUES ('$ra', '$nome', '$nome_problema', '$descricao', '$sala')";

    if ($conn->query($sql) === TRUE) {
      echo "<center><h1>Registro Inserido com Sucesso</h1>";
      echo "<a href='index.html'><input type='button' value='Voltar'></a></center>";
    } else {
      echo "<h3>OCORREU UM ERRO: </h3>: " . $sql . "<br>" . $conn->error;
    }

?>