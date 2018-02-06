<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Cadastro de Fazenda</title>

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<style type="text/css">
</style>

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
			<!-- <a class="navbar-brand" href="#">Deriva</a> -->
			<label class="navbar-brand">Deriva</label>
		</div>
		<!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar -->
		<div id="navbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
			</ul>
			<ul class="nav navbar-nav">
				<li><a href="#">Última coleta de dados às ...</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- ***************************************************************************** -->
	
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<form class="form-horizontal" method="post"	action="FazendaController?chave=cadastro_fazenda">
				<fieldset>

					<!-- Form Name -->
					<legend>
						<h2>Cadastrar nova fazenda</h2>
					</legend>

					<!-- Nome do usuario -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="User Name">Nome
							da Fazenda</label>
						<div class="col-md-6">
							<input id="Nome
								da fazenda"
								name="nome" type="text"
								placeholder="ex: fazenda novos embriões" class="form-control input-md">

						</div>
					</div>
					<!-- Registro -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="Mail Id ">Registro/CNPJ
						</label>
						<div class="col-md-6">
							<input id="cnpj" name="registro" type="text"
								placeholder=""
								class="form-control input-md">

						</div>
					</div>

					<!-- City input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="Password">Cidade</label>
						<div class="col-md-6">
							<input id="cidade" name="cidade" type="cidade"
								placeholder="" class="form-control input-md">

						</div>
					</div>

					<!-- State input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="Password Again">Estado</label>
						<div class="col-md-6">
							<input id="state" name="estado" type="estado"
								placeholder="" class="form-control input-md">

						</div>
					</div>
					
					<!-- Size input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="Password Again">Tamanho</label>
						<div class="col-md-6">
							<input id="tamanho" name="tamanho" type="tamanho"
								placeholder="hectares, km²..." class="form-control input-md">

						</div>
					</div>
					
					<!-- GPS input
					<div class="form-group">
						<label class="col-md-4 control-label" for="Password Again">Localização</label>
						<div class="col-md-6">
							<input id="local" name="localizacao" type="local"
								placeholder="" class="form-control input-md">

						</div>
					</div> -->

					<!-- Button -->
					<div class="form-group">
						<label class="col-md-4 control-label" for=""></label>
						<div class="col-md-4">
						<input type="submit" value="cadastar fazenda"
								class="btn btn-success">
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