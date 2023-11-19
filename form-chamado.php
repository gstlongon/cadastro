<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- font -->
cadastro-chamado    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <title>Cadastro de chamados</title>
</head>
<body>
    <form class="form__register" method="post" action="cadastra_chamado.php">
        <div class="form__input-box">
            <label class="form__label" for="ra">RA:</label>
            <input class="form__input" name="ra" type="text" placeholder="Digite o RA">
        </div>
        <div class="form__input-box">
            <label class="form__label" for="nome">Nome:</label>
            <input class="form__input" name="nome" type="text" placeholder="Digite seu nome">
        </div>
        <div class="form__input-box">
            <?php
                require("conecta.php");
                $dados_select = mysqli_query($conn, "SELECT id_problema, nome_problema FROM problema");
            ?>
            <label class="form__label" for="nome_problema">Problema:</label>
            <select class="form__select" name='nome_problema'>
            <?php
                while($dado = mysqli_fetch_array($dados_select)) {
                    echo '<option class="form__option" value='.$dado[0].'>'.$dado[1].'</option>';
                }
            ?>
            </select>
        </div>
        <div class="form__input-box">
            <label class="form__label" for="descricao">Descrição:</label>
            <textarea class="form__input" name="descricao" type="text" placeholder="Descreva o problema"></textarea>
        </div>
        <div class="form__input-box">
            <label class="form__label" for="sala">Sala:</label>
            <input class="form__input" name="sala" type="text" placeholder="Digite a sala">
        </div>
        <input type="submit" value="Cadastrar">
        <input type="reset" value="Limpar">
    </form>
</body>
</html>