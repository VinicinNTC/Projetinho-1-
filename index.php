<?php
$servidor = "localhost";
$usuario = "root";
$senha = "usbw";
$banco = "bancov";

$conexao = new mysqli("localhost", "root", "usbw", "banco");

if ($conexao->connect_error) {
    die("Falha na conexão: " . $conexao->connect_error);
}





$conexao->set_charset("utf8mb4");
$conexao->close();
header("Location: index.php");
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible"
    content="IE=edge">
	<title>Cad. Produtos</title>

	<link rel="stylesheet" href="estilo.css">

</head>
<body>
	<main class="card">
		<h1>Cadastro de Produto</h1>
		<p class="subtitle">Preencha os dados do novo produto.</p>

		<form action="#" method="post">

		<div class="campo">
				<label for="nomeFornecedor">Nome do Fornecedor</label>
				<input type="text" id="nomeFornecedor" name="nomeFornecedor" placeholder="" required>
		</div>

			<div class="campo">
				<label for="nome">Nome do produto</label>
				<input type="text" id="nome" name="nome" placeholder="ex: Brinco Prata" required>
			</div>

			<div class="campo">
				<label for="descricao">Descrição</label>
				<textarea id="descricao" name="descricao" placeholder="Descreva o produto"></textarea>
			</div>

			<div class="linha">
				<div class="campo">
					<label for="preco">Preço (R$)</label>
					<input type="number" id="preco" name="preco" min="0" step="0.01" placeholder="0,00" required>
				</div>
				<div class="campo">
					<label for="estoque">Quantidade em estoque</label>
					<input type="number" id="qtd_estoque" name="estoque" min="0" step="1" placeholder="0" required>
				</div>
			</div>

			<div class="campo">
				<label for="categoria">Categoria</label>
				<select id="categoria" name="categoria" required>
					<option value="">Selecione uma categoria</option>
					<option value="alianca">Aliança</option>
					<option value="brinco">Brinco</option>
					<option value="ouro">Ouro</option>
					<option value="prata">Prata</option>
					<option value="outros">Outros</option>
				</select>
			</div>

			<button type="submit">Cadastrar produto</button>
		</form>
	</main>
</body>
</html>