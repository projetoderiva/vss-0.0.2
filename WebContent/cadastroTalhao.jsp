<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Cadastro Talhao</title>

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<style type="text/css">
</style>

<%
	String deuCerto = (String) request.getAttribute("deucerto");
%>

</head>
<body>
	<!-- ************************MENU*************************-->
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
			<!--<a class="navbar-brand" href="#">Deriva</a>-->
			<label class="navbar-brand">Deriva</label>
		</div>
		<!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar -->
		<div id="navbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="UsuarioController?chave=iniciar_home">Home</a></li>

			</ul>

			<ul class="nav navbar-nav">
				<li><a href="#">Última Coleta de Dados</a></li>

			</ul>

		</div>
	</div>
	</nav>
	<!-- **********************************************************-->
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<form class="form-horizontal" method="post"	action="TalhaoController?chave=iniciar_cadastro_talhao">
						
				<fieldset>

					<!-- Form Name -->
					<legend>
						<h2>Cadastrar novo talhão</h2>
					</legend>

					<!-- Nome do talhao -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="User Name">Nome
							do Talhão</label>
						<div class="col-md-6">
							<input id="Nome
								do Talhao"
								name="nome" type="text"
								placeholder="ex: Talhão laranja" class="form-control input-md">

						</div>
					</div>
					<!-- Localização -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="Mail Id ">Localização
						</label>
						<div class="col-md-6">
							<input id="localizacao" name="localizacao " type="text"
								placeholder=""
								class="form-control input-md">

						</div>
					</div>

					<!-- plantation type-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="Password">Tipo de plantação</label>
						<div class="col-md-6">
							<input id="planta" name="tipo" type="planta" placeholder="ex: laranja" class="form-control input-md">

						</div>
					</div>

					<!-- Button -->
					<div class="form-group">
						<label class="col-md-4 control-label" for=""></label>
						<div class="col-md-4">
						<input type="submit" value="cadastar talhao" class="btn btn-success">
						</div>
					</div>
					

					

				</fieldset>
			</form>
		</div>
	</div>
	<script src="JQuery/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>