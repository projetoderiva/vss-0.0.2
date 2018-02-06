<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Cadastro de Plataformas</title>

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<style type="text/css"></style>


</head>
<body>
	<!-- *******************************MENU**************************************** -->
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
				<li class="active"><a
					href="UsuarioController?chave=iniciar_home">Home</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- ****************************************************************************** -->
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<form class="form-horizontal"
				action="plataformaController?chave=cadastrar_plataformas">
				<fieldset>

					<!-- Form Name -->
					<legend>
						<h2>Cadastrar nova plataforma</h2>
					</legend>

					<!-- Localização -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="Mail Id ">Localização
						</label>
						<div class="col-md-6">
							<input id="localizacao" name="localizacao " type="text"
								placeholder="" class="form-control input-md">
						</div>
					</div>

					<!-- Button -->
					<div class="form-group">
						<label class="col-md-4 control-label" for=""></label>
						<div class="col-md-4">
							<a class="btn btn-success"
								href="UsuarioController?chave=iniciar_home">Cadastrar
								Plataforma</a>
								
							<!--<input type="submit" value="cadastrar plataforma" class="btnbtn-success" >-->
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