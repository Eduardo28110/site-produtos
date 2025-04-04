<?php
require_once __DIR__ . '/../../../config/env.php';
require_once __DIR__ . '/../../../model/ProdutoModel.php';
require_once __DIR__ . '/../../../model/CategoriaModel.php';

$categoriaModel = new CategoriaModel();
$categorias = $categoriaModel->listar();

// modo edição ou criação
if (isset($_GET['id'])) {
    $modo = 'EDICAO';
    $produtoModel = new ProdutoModel();
    $produto = $produtoModel->buscarPorId($_GET['id']);
} else {
    $modo = 'CRIACAO';
    $produto = [
        'id' => '',
        'nome' => '',
        'descricao' => '',
        'categoria_id' => '',
        'preco' => '',
        'imagem_url' => '',
    ];
}

?>

<?php require_once __DIR__ . '/../../components/head.php'; ?>

<body class="container-adm">
    <?php require_once __DIR__ . '/../../components/navbar.php'; ?>
    <?php require_once __DIR__ . '/../../components/sidebar.php'; ?>

    <main class="content-adm">
        <h3>Produtos >> <?= $modo == 'EDICAO' ? 'Editar ' . $produto['id'] : 'Criar' ?></h3>

        <div class="container">
            <form class="form" method="POST" action="<?= APP_CONSTANTS['APP_URL'] . APP_CONSTANTS['PATH_PAGES'] . 'admin/produto_salvar.php' ?>">
                <div class="form-content">
                    <input name="id" type="hidden" value="<?= $produto['id'] ?>">

                    <div class="input-group">
                        <label for="categoria_id">Categoria</label>
                        <select name="categoria_id" required>
                            <option value=""></option>
                            <?php foreach ($categorias as $categoria) { ?>
                                <option value="<?= $categoria['id'] ?>"
                                    <?= $produto['categoria_id'] == $produto['id'] ? 'selected' : '' ?>>
                                    <?= $categoria['nome'] ?>
                                </option>
                            <?php } ?>
                        </select>
                    </div>

                    <div class="input-group">
                        <label for="nome">Nome</label>
                        <input name="nome" type="text" value="<?= $produto['nome'] ?>" required>
                    </div>

                    <div class="input-group">
                        <label for="descricao">Descrição</label>
                        <textarea name="descricao" rows="30" required><?= $produto['descricao'] ?></textarea>

                        <div class="input-group">
                            <label for="imagem_url">URL da Imagem</label>
                            <input name="imagem_url" type="text" value="<?= $produto['imagem_url'] ?>">
                        </div>
                        <div class="input-group">
                            <label for="preco">Preço do Produto</label>
                            <input name="preco" type="text" value="<?= $produto['preco'] ?>" required>
                        </div>
                    </div>
                </div>

                <div class="form-actions">
                    <a href="<?= APP_CONSTANTS['APP_URL'] . APP_CONSTANTS['PATH_PAGES'] . 'admin/produtos.php' ?>">
                        <button class="btn" type="button">
                            Cancelar
                        </button>
                    </a>
                    <button class="btn btn-primary">Salvar</button>
                </div>
            </form>
        </div>
    </main>

    <?php require_once __DIR__ . '/../../components/footer.php'; ?>

    <script src="<?= APP_CONSTANTS['APP_URL'] . APP_CONSTANTS['PATH_JS'] ?>main.js"></script>
</body>

</html>