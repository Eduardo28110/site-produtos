<?php

require_once __DIR__ . "/../config/Database.php";

class ProdutoModel {
    private $produtos;

    private $produtoModel;

    private $tabela = "produto";

    private $conn;
    public function __construct() {
        $db = new Database();
        $this->conn = $db->conectar();
    }

    public function listar() {
        $query = "SELECT * FROM $this->tabela;";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function buscarPorId($id) {
        $query = "SELECT * FROM $this->tabela WHERE id = $id;";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt->fetch();
    }

    public function criar($nome) {
        $query = "INSERT INTO $this->tabela (nome, descricao, categoria_id, preco, imagem_url) VALUES
         (:nome, :descricao, :categoria_id, :preco, :imagem_url);";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':nome', $nome);
        $stmt->bindParam(':descricao', $descricao);
        $stmt->bindParam(':categoria_id', $categoria_id);
        $stmt->bindParam(':preco', $preco);
        $stmt->bindParam(':imagem_url', $imagem_url);
        
        $stmt->execute();

        return $stmt->rowCount() > 0;
    }

    public function editar($produto) {
        $query = "UPDATE $this->tabela SET nome = :nome WHERE id = :id;";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(":id", $produto["id"]);
        $stmt->bindParam(":nome", $produto["nome"]);
        return $stmt->execute();
    }

    public function excluir($id) {
        $query = "DELETE FROM $this->tabela WHERE id = :id;";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(":id", $id);
        $stmt->execute();

        return $stmt->rowCount() > 0;
    }

}