<?php

require_once __DIR__ . '/../../../config/env.php';
require_once __DIR__ . '/../../../model/ProdutoModel.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $produtoModel = new ProdutoModel();

    if (empty($_POST['id'])) {
        // Criar - se não tiver id
        $salvou = $produtoModel->criar($_POST['nome']);
    } else {
        // Editar - se tiver id
        $salvou = $produtoModel->editar([
            'id' => (int) $_POST['id'],
            'nome' => $_POST['nome'],
        ]);
    }

    if ($salvou) {
        header('Location: ' . APP_CONSTANTS['APP_URL'] . APP_CONSTANTS['PATH_PAGES'] . 'admin/produtos.php');    
    } else {
        echo "ERRO";
    }

} else {
    header('Location: ' . APP_CONSTANTS['APP_URL'] . APP_CONSTANTS['PATH_PAGES'] . 'admin/produtos.php');
} 