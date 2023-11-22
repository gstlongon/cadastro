<?php
    require("conecta.php");

    foreach ($_POST['enviar'] as $id => $value) {
        $horario_resolucao = date('Y-m-d H:i:s');
    
        $sql = "UPDATE cadastro SET horario_resolucao = ? WHERE id_chamado = ?";
    
        $stmt = $conn->prepare($sql);

        if ($stmt) {
            $stmt->bind_param("si", $horario_resolucao, $id);
            $stmt->execute();
        } else {
            echo "Erro ao preparar a declaração.";
        }
    }

    header("Location: ver_chamados.php");
    exit();
?>
