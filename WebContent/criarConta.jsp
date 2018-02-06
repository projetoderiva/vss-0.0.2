<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Criar conta</title>

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<%
	String deuCerto = (String) request.getAttribute("deucerto");
%>

</head>
<body>
<!-- *******************************MENU**************************************** -->
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
			<!-- <a class="navbar-brand" href="#">Deriva</a>-->
			<label class="navbar-brand">Deriva</label>
		</div>
		<!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar -->
		<div id="navbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="UsuarioController?chave=iniciar_entrar">Entrar</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- ******************************************************************************************* -->
	
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-md-6">
				<form class="form-horizontal"
					action="UsuarioController?chave=criar_conta" method="post">
					<fieldset>

						<!-- Form Name -->
						<legend>
							<h2>Criar nova conta</h2>
						</legend>

						<!-- Nome do usuario -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="User Name">Nome
								do usuário</label>
							<div class="col-md-6">
								<input id="Nome
								do usuário" name="nome" type="text"
									placeholder="ex: Fernanda Tiemi" class="form-control input-md"
									required="">

							</div>
						</div>
						<!-- Email -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="Mail Id ">Email
							</label>
							<div class="col-md-6">
								<input id="Mail Id " name="email" type="text"
									placeholder="ex: tiemitaso@email.com"
									class="form-control input-md" required="">

							</div>
						</div>

						<!-- Password input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="Password">Senha</label>
							<div class="col-md-6">
								<input id="Password" name="senha" type="password"
									placeholder="Senha" class="form-control input-md" required="">

							</div>
						</div>

						<!-- Password input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="Password Again">Confirmar
								Senha</label>
							<div class="col-md-6">
								<input id="Password Again" name="senha" type="password"
									placeholder="Confirmar senha" class="form-control input-md"
									required="">

							</div>
						</div>

						<!-- Button -->
						<div class="form-group">
							<label class="col-md-4 control-label" for=""></label>
							<div class="col-md-4">
								<button id="" name="" class="btn btn-success">Criar	conta</button>
							</div>

							<%
								if (deuCerto != null) {
							%>

							<%
								if (deuCerto.equals("1")) {
							%>
							<span style="color: green;"> Sucesso </span>
							<%
								} else {
							%>
							<span style="color: green;"> erro </span>
							<%
								}
								}
							%>

						</div>

					</fieldset>
				</form>
			</div>
			<!-- Outra div/coluna -->
			<div class="col-md-6"></div>
		</div>
	</div>
	<script src="JQuery/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>