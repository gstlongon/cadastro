<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <title>Visualizar Chamados</title>
</head>
<body>
    <h1 class="cadastro__title">Chamados</h1>

    <table class="view__table">
        <tr class="view__head">
            <td class="view__td">RA</td>
            <td class="view__td">Nome</td>
            <td class="view__td">Problema</td>
            <td class="view__td">Descrição</td>
            <td class="view__td">Sala</td>
            <td class="view__td">Horário</td>
            <td class="view__td">Ação</td>
        </tr>
        <?php
            require("conecta.php");

            $dados_select = mysqli_query($conn, "SELECT id_chamado, ra, nome, problema.nome_problema, descricao, sala, DATE_FORMAT(horario, '%d/%m/%Y %H:%i:%s') AS horario_formatado, horario_resolucao FROM cadastro INNER JOIN problema ON cadastro.problema = problema.id_problema");
            echo "<form action='resolvido.php' method='post'>";
            while($dado = mysqli_fetch_array($dados_select)) {
                if ($dado[7] === NULL) {
                    echo '<tr>';
                    echo '<td class="view__td">'.$dado[1].'</td>';
                    echo '<td class="view__td">'.$dado[2].'</td>';
                    echo '<td class="view__td">'.$dado[3].'</td>';
                    echo '<td class="view__td">'.$dado[4].'</td>';
                    echo '<td class="view__td">'.$dado[5].'</td>';
                    echo '<td class="view__td">'.$dado['horario_formatado'].'</td>';
                    echo '<td class="view__td"><input class="view__btn" type="submit" name="enviar['.$dado[0].']" value="Resolver"></td>';
                    echo '</tr>';
                }
            }
            echo "</form>";
        ?>
    </table>
    <br />
    <a class="back__btn" href="index.html">Voltar</a>
</body>
</html>
