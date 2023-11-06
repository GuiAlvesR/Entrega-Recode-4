<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="model.Usuario"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Usuarios</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">

<link rel="apple-touch-icon" sizes="180x180"
	href="./src/icons/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="./src/icons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="./src/icons/favicon-16x16.png">
<link rel="manifest" href="./src/icons/site.webmanifest">

<link rel="stylesheet" href="./src/css/index.css">
<link rel="stylesheet" href="./src/css/listagem.css">

</head>
<body class="text-center">
	<div class="principal">

		<header>

			<div class="nav">
				<nav class="navbar bg-body-tertiary" class="navbar bg-body-tertiary"
					class="navbar bg-dark border-bottom border-bottom-dark"
					data-bs-theme="dark">
					<div class="container-fluid">
						<img src="./src/img/travel.jpg" alt="logo agencia" width="80px"
							height="80px" class="d-inline-block align-text-top"> <a
							class="navbar-brand" href="./home.html"> Inicio </a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
							aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="offcanvas offcanvas-end" tabindex="-1"
							id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
							<div class="offcanvas-header">
								<h5 class="offcanvas-title" id="offcanvasNavbarLabel">Agência</h5>
								<button type="button" class="btn-close"
									data-bs-dismiss="offcanvas" aria-label="Close"></button>

							</div>
							<div class="offcanvas-body">
								<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
									<ol class="navbar-nav justify-content-end flex-grow-1 pe-3">
										<li class="nav-item"><a href="./src/html/cadastro.html"
											class="nav-link active">Inscreva-se</a></li>
										<li><a href="./src/html/login.html"
											class="nav-link active">Entrar</a></li>
									</ol>
									<li class="nav-item"><a class="nav-link active"
										aria-current="page" href="./index.html">Inicio</a></li>
									<li class="nav-item"><a class="nav-link active"
										aria-current="page" href="./src/html/destino.html">Destinos</a>
									</li>
									<li class="nav-item"><a class="nav-link active"
										href="./src/html/promocoes.html">Promoções</a></li>
									<li class="nav-item"><a class="nav-link active"
										href="./src/html/contato.html">Contato</a></li>
								</ul>

								<form class="d-flex mt-3" role="search">
									<input class="form-control me-2" type="search"
										placeholder="Search" aria-label="Search">
									<button class="btn btn-outline-success" type="submit">Pesquisar</button>
								</form>

							</div>
						</div>
					</div>
				</nav>
			</div>
		</header>
	</div>


	<h1 class="mt-5 text-light">Lista de Usuarios</h1>
	<div class="container mt-5">
		<a href="./src/html/cadastro.html" type="button"
			class="btn btn-dark mb-4"S>Criar novo Usuario</a>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>Login</th>
					<th>Senha</th>
					<th>Tipo de Permissão de Acesso</th>
					<th>Ações</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach items="${usuario}" var="usuario">
					<tr>
						<td>${usuario.idUsuario}</td>
						<td>${usuario.nome}</td>
						<td>${usuario.login}</td>
						<td>${usuario.senha}</td>
						<td>${usuario.permissaoDeAcesso}</td>
						
				       <td><a href="UpdateController?idUsuario=${usuario.idUsuario}"
							class="btn btn-success">Editar</a> 
							<a
							href="DeleteController?idUsuario=${usuario.idUsuario}"
							class="btn btn-danger">Excluir</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<footer class="bg-dark text-light py-3 fixed-bottom"
		style="display: block; margin: 0; bottom:0"> &copy; 2023 Agencia
		Turística Noturna. Todos os direitos reservados. </footer>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"
		integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS"
		crossorigin="anonymous"></script>
		

</body>
</html>