<?php require_once __DIR__ . '/../../config/env.php'; ?>

<aside id="sidebar" class="sidebar">
    <div id="mobile-menu" class="btn-icon mobile-menu">
        <span class="material-symbols-outlined open">
            menu
        </span>
        <span class="material-symbols-outlined close">
            close
        </span>
    </div>
    <nav class="nav">
        <ul id="nav-items" class="nav-items">
            <li class="nav-item">
                <a class="nav-link" href="<?= APP_CONSTANTS['APP_URL'] . APP_CONSTANTS['PATH_PAGES'] . 'admin/home.php' ?>">
                    <span class="material-icons">
                        home
                    </span>
                    <span>Home</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= APP_CONSTANTS['APP_URL'] . APP_CONSTANTS['PATH_PAGES'] . 'admin/categorias.php' ?>">
                    <span class="material-icons">
                        category
                    </span>
                    <span>Categorias</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= APP_CONSTANTS['APP_URL'] . APP_CONSTANTS['PATH_PAGES'] . 'admin/produtos.php' ?>">
                    <span class="material-icons">
                        article
                    </span>
                    <span>Produtos</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= APP_CONSTANTS['APP_URL'] . APP_CONSTANTS['PATH_PAGES'] . 'admin/usuarios.php' ?>">
                    <span class="material-icons">
                        group
                    </span>
                    <span>Usuários</span>
                </a>
            </li>
        </ul>
    </nav>
</aside>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">