<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Deriva</title>

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">


</head>
<body>
	<!-- ***************************MENU********************************* -->
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
			<!-- <a class="navbar-brand" href="#">Deriva</a>-->
			<label class="navbar-brand">Deriva</label>
		</div>

		<!--  
		<!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar 
		<div id="navbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
			</ul>
			<ul class="nav navbar-nav">
				<li><a href="#">Última coleta de dados às ...</a></li>
			</ul>
		</div>
		-->
	</div>
	</nav>
	<!-- **************************************************************** -->
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-md-6">
				<div class="jumbotron">
					<h1>Deriva</h1>
					<p class="lead">Cras justo odio, dapibus ac facilisis in,
						egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor
						mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
					<p>
						<a class="btn btn-lg btn-success" style="margin-right: 10px;"
							href="UsuarioController?chave=iniciar_criar_conta" role="button">Criar
							Conta</a> <a class="btn btn-lg btn-success"
							href="UsuarioController?chave=iniciar_entrar" role="button">Entrar</a>
					</p>
				</div>
			</div>
			<!-- <div class="col-md-6">.col-md-6</div> -->
		</div>

	</div>

	<script src="JQuery/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>