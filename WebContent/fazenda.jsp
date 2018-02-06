<%@page import="model.Fazenda"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Home Teste</title>

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap/css/mycodes.css" rel="stylesheet">
<link href="font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<!-- http://fontawesome.io/icons/ -->

<style type="text/css">
</style>
<%

List<Fazenda> fazendas = (List<Fazenda>) request.getAttribute("fazs");

%>

</head>
<body>
<!-- **********************************MENU**************************************************************************** -->
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
			<!--<a class="navbar-brand" href="#">Deriva</a> -->
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
	<!-- ******************************************************************************************************************* -->
	<div class="container" style="margin-top: 50px">
		<div class="row"></div>
	</div>
	
	<% if (fazendas != null && !fazendas.isEmpty()) { %>
	
	
	<h1 class="text-center">Suas Fazendas</h1>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
			
			   <% for(Fazenda f : fazendas) { %>
			
				<div class="box">
					<div class="box-icon">
						<span class="fa fa-4x fa-map"></span>
					</div>
					<div class="info">
						<h4 class="text-center"><%=f.getNome()%></h4>
						<p>Cidade: <%=f.getCidade()%></p>
						<p>Estado: <%=f.getEstado()%></p>
						<p>Tamanho: <%=f.getTamanho()%></p>
						<p>Registro: <%=f.getRegistro()%></p> 
						<a href="FazendaController?chave=iniciar_talhao&id_fazenda=<%=f.getId()%>" class="btn">Selecionar
							Fazenda</a>
					</div>
				</div>
				<% } %>
			</div>
			<div class="info text-center">
				<a style="margin-top: 70px" href="UsuarioController?chave=iniciar_cadastro_fazenda" class="btn text-center">Cadastrar Fazenda</a>
			</div>
		</div>
	</div>
	
	<% } else { %>
	<h1 class="text-center">Não há Fazendas Cadastradas</h1>
	<div class="container">
		<div class="row">
			<div class="info text-center">
				<a style="margin-top: 70px" href="UsuarioController?chave=iniciar_cadastro_fazenda" class="btn text-center">Cadastrar Fazenda</a>
			</div>
		</div>
	</div>
	<% } %>
	
	<script src="JQuery/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>