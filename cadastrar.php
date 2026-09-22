<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

$servidor = "localhost";
$usuario = "root";
$senha = "usbw";
$banco = "bancov";

$conexao = new mysqli($servidor, $usuario, $senha, $banco);

if ($conexao->connect_error) {
    die("Falha na conexão: " . $conexao->connect_error);
}

$conexao->set_charset("utf8mb4");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome      = $_POST["nome"];
    $tamanho   = $_POST["tamanho"];   
    $material  = $_POST["material"];
    $peso      = $_POST["peso"];      
    $descricao = $_POST["descricao"];
    $preco     = $_POST["preco"];     
    $categoria = $_POST["categoria"];

   
    $sql = "INSERT INTO cadproduto (nome, tamanho, material, peso, descricao, preco, categoria) VALUES (?, ?, ?, ?, ?, ?, ?)";
    
    $stmt = $conexao->prepare($sql);
    
    if ($stmt) {
        $stmt->bind_param("sisssss", $nome, $tamanho, $material, $peso, $descricao, $preco, $categoria);

        if ($stmt->execute()) {
            echo "Produto cadastrado com sucesso! <br><a href='teste.php'>Voltar</a>";
        } else {
            echo "Erro ao cadastrar produto (Execute): " . $stmt->error;
        }
        
        $stmt->close();
    } else {
        echo "Erro na preparação da query: " . $conexao->error;
    }
}

$conexao->close();
?>