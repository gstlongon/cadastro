<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <title>Sucesso</title>
</head>
<body>
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
        echo "<center><h1 class='cadastro__title'>Registro Inserido com Sucesso</h1>";
        echo "<a class='back__btn' href='index.html'>Voltar</a></center>";
        } else {
        echo "<h3>OCORREU UM ERRO: </h3>: " . $sql . "<br>" . $conn->error;
        }

    ?>
</body>
</html>


