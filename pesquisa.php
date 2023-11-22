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
    <h1 class="cadastro__title">Pesquisar Chamados por RA</h1>

    <form class="form__register" action="" method="GET">
        <div class="form__input-box">
            <label class="form__label" for="ra">Digite o RA:</label>
            <input class="form__input" type="text" id="ra" name="ra" required>
        </div>
        <input class="submit__btn" type="submit" value="Pesquisar">
    </form>


        <?php
require("conecta.php");

if(isset($_GET['ra'])) {
    $ra_pesquisa = $_GET['ra'];
    $query = "SELECT ra, nome, problema.nome_problema, descricao, sala, DATE_FORMAT(horario, '%d/%m/%Y %H:%i:%s') AS horario_formatado, horario_resolucao FROM cadastro INNER JOIN problema ON cadastro.problema = problema.id_problema 
            WHERE cadastro.ra LIKE '$ra_pesquisa%'";
    $dados_select = mysqli_query($conn, $query);    

    if(mysqli_num_rows($dados_select) > 0) {
        echo '<table class="view__table">';
        echo '<tr class="view__head">
                <td class="view__td">RA</td>
                <td class="view__td">Nome</td>
                <td class="view__td">Problema</td>
                <td class="view__td">Descrição</td>
                <td class="view__td">Sala</td>
                <td class="view__td">Horário</td>
                <td class="view__td">Resolvido</td>
            </tr>';

        while($dado = mysqli_fetch_array($dados_select)) {
            echo '<tr>';
                echo '<td class="view__td">'.$dado['ra'].'</td>';
                echo '<td class="view__td">'.$dado['nome'].'</td>';
                echo '<td class="view__td">'.$dado['nome_problema'].'</td>';
                echo '<td class="view__td">'.$dado['descricao'].'</td>';
                echo '<td class="view__td">'.$dado['sala'].'</td>';
                echo '<td class="view__td">'.$dado['horario_formatado'].'</td>';
                if ($dado['horario_resolucao'] === NULL) {
                    echo '<td class="view__td"><div class="align"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20"><path d="M920,470a10,10,0,1,1,10-10,10,10,0,0,1-10,10Zm5-6.682a1.136,1.136,0,0,1,0,1.606l-.074.073a1.14,1.14,0,0,1-1.611,0l-2.921-2.918a.57.57,0,0,0-.806,0l-2.914,2.916a1.14,1.14,0,0,1-1.612,0L915,464.93a1.136,1.136,0,0,1,.006-1.614l2.945-2.912a.567.567,0,0,0,0-.81L915,456.686a1.136,1.136,0,0,1-.006-1.615l.064-.064a1.138,1.138,0,0,1,.806-.333,3.386,3.386,0,0,1,1.291.818l2.429,2.429a.569.569,0,0,0,.806,0L923.315,455a1.14,1.14,0,0,1,1.611,0l.074.076a1.136,1.136,0,0,1,0,1.606l-2.909,2.912a.567.567,0,0,0,0,.8Z" transform="translate(-910 -450)" fill="#bf0000" fill-rule="evenodd"/></svg></div></td>';
                } else {
                echo '<td class="view__td"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20"><path d="M22,12A10,10,0,1,1,12,2,10,10,0,0,1,22,12ZM16.03,8.97a.75.75,0,0,1,0,1.061l-5,5a.75.75,0,0,1-1.061,0l-2-2A.75.75,0,1,1,9.03,11.97l1.47,1.47L12.735,11.2,14.97,8.97A.75.75,0,0,1,16.03,8.97Z" transform="translate(-2 -2)" fill="#116301" fill-rule="evenodd"/></svg>'.$dado['horario_formatado'].'</td>';

                }
                echo '</tr>';
        }

        echo '</table>';
    } else {
        echo '<span class="not__found">Nenhum resultado encontrado.</span>';
    }
}
?>

    <br />
    <a class="back__btn" href="index.html">Voltar</a>
</body>
</html>


