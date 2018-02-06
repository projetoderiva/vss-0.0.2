<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Home</title>

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
.business-card {
	border: 1px solid #cccccc;
	background: #f8f8f8;
	padding: 10px;
	border-radius: 4px;
	margin-bottom: 10px;
}

.job {
	color: #666666;
	font-size: 17px;
}

.mail {
	font-size: 16px;
}
</style>


</head>
<body>
	<!-- ***************************MENU********************************* -->
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
			<ul class="nav navbar-nav">
				<li><a href="#">Última coleta de dados às ...</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- ***************************************************************** -->
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-6 col-md-4">
				<div class="business-card">
					<div class="media">
						<div class="media-body">
							<h2 class="media-heading">Cálculo Deriva</h2>
							<div class="job">Cras justo odio, dapibus ac facilisis in,
								egestas eget quam. Fusce dapibus, tellus ac cursus commodo,
								tortor mauris condimentum nibh, ut fermentum massa justo sit
								amet risus.</div>
							<button type="submit" class="btn btn-sm  btn-success" style="size: 90px">Calcular Deriva</button>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-md-4">
				<div class="business-card">
					<div class="media">

						<div class="media-body">
							<h2 class="media-heading">Dados Climáticos</h2>
							<div class="job">Cras justo odio, dapibus ac facilisis in,
								egestas eget quam. Fusce dapibus, tellus ac cursus commodo,
								tortor mauris condimentum nibh, ut fermentum massa justo sit
								amet risus.</div>
							<a class="btn btn-sm btn-success" style="size: 90px;"
								href="PlataformaController?chave=dados_climaticos"
								role="button">Ver dados Climáticos</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-md-4">
				<div class="business-card">
					<div class="media">
						<div class="media-body">
							<h2 class="media-heading">Cadastrar Plataformas</h2>
							<div class="job">Cras justo odio, dapibus ac facilisis in,
								egestas eget quam. Fusce dapibus, tellus ac cursus commodo,
								tortor mauris condimentum nibh, ut fermentum massa justo sit
								amet risus.</div>
							<a class="btn btn-sm btn-success" style="size: 90px;"
								href="UsuarioController?chave=cadastrar_plataforma"
								role="button">Cadastrar Plataformas</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-md-4">
				<div class="business-card">
					<div class="media">
						<div class="media-body">
							<h2 class="media-heading">Suas Plataformas</h2>
							<div class="job">Cras justo odio, dapibus ac facilisis in,
								egestas eget quam. Fusce dapibus, tellus ac cursus commodo,
								tortor mauris condimentum nibh, ut fermentum massa justo sit
								amet risus.</div>
							<a class="btn btn-sm btn-success" style="size: 90px;"
								href="PlataformaController?chave=iniciar_plataforma"
								role="button">Listar Plataformas</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="JQuery/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>