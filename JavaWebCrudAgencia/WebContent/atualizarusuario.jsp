<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/x-icon" href="./icon/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  
<link rel="apple-touch-icon" sizes="180x180"
	href="./src/icons/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="./src/icons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="./src/icons/favicon-16x16.png">
<link rel="manifest" href="./src/icons/site.webmanifest">

  <link rel="stylesheet" href="./src/css/index.css">
  <link rel="stylesheet" href="./src/css/atualizar.css">

<title>Atualizar Usuario</title>
</head>
<body>
    <div class="principal">

      <header>

        <div class="nav">
          <nav class="navbar bg-body-tertiary" class="navbar bg-body-tertiary"
            class="navbar bg-dark border-bottom border-bottom-dark" data-bs-theme="dark">
            <div class="container-fluid">
              <img src="./src/img/travel.jpg" alt="logo agencia" width="80px" height="80px"
                class="d-inline-block align-text-top">
              <a class="navbar-brand" href="./home.html">
                Inicio
              </a>
              <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
                aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
                aria-labelledby="offcanvasNavbarLabel">
                <div class="offcanvas-header">
                  <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Agência</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>

                </div>
                <div class="offcanvas-body">
                  <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                    <ol class="navbar-nav justify-content-end flex-grow-1 pe-3">
                      <li class="nav-item"> <a href="./src/html/cadastro.html" class="nav-link active">Inscreva-se</a>
                      </li>
                      <li> <a href="./src/html/login.html" class="nav-link active">Entrar</a></li>
                    </ol>
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="./index.html">Inicio</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="./src/html/destino.html">Destinos</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" href="./src/html/promocoes.html">Promoções</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" href="./src/html/contato.html">Contato</a>
                    </li>
                  </ul>

                  <form class="d-flex mt-3" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Pesquisar</button>
                  </form>

                </div>
              </div>
            </div>
          </nav>
        </div>
      </header>
    </div>
    
	<div class="container">
		<div class="row justify-content-center cor">
			<div class="col-md-6">
				<h1 class="mt-5" >Atualizar de Cliente</h1>
				<form class="mt-5" action="UpdateController" method="post">
				<div class="form-group">
						<label for="nome">ID:</label> <input type="text"
							class="form-control" id="idUsuario" name="idUsuario" value="${usuario.idUsuario}" readonly>
					</div>
					<div class="form-group">
						<label for="nome">Nome:</label> <input type="text"
							class="form-control" id="nome" name="nome" value="${usuario.nome}" required>
					</div>
					<div class="form-group">
						<label for="login">Login:</label> <input type="text"
							class="form-control" id="login" name="login" value="${usuario.login}" required>
					</div>
					<div class="form-group">
						<label for="senha">Senha:</label> <input type="password"
							class="form-control" id="senha" name="senha" value="${usuario.senha}" required>
					</div>
					
					<div class="form-group mb-2">
						<label for="permissaoDeAcesso">Tipo de Permissão de Acesso [Admin/User]</label> <input
							type="text" value="${usuario.permissaoDeAcesso}" class="form-control" id="permissaoDeAcesso"
							name="permissaoDeAcesso" required>
					</div>
					<button type="submit" class="btn btn-primary mb-2">Atualizar</button>
				</form>
			</div>
		</div>
	</div>
	
	<footer class="bg-dark text-light py-3 text-center fixed-bottom"
		style="display: block; margin: 0; botto: 0"> &copy; 2023 Agencia
		Turística Noturna. Todos os direitos reservados. </footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"	
    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"
    integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS"
    crossorigin="anonymous"></script>

</body>
</html>