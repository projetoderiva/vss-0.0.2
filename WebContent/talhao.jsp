<%@page import="model.Fazenda"%>
<%@page import="model.Talhao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Talhao</title>

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap/css/mycodes.css" rel="stylesheet">

<style type="text/css">
</style>

<% List<Talhao> talhoes = (List<Talhao>) request.getAttribute("talhoes");
Fazenda buscarfazenda = (Fazenda) request.getAttribute("fazenda");


%>
</head>
<body>
<!-- *******************************MENU**************************************** -->
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
			<a class="navbar-brand" href="#">Deriva</a>
		</div>
		<!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar -->
		<div id="navbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
			</ul>
				<ul class="nav navbar-nav">
				<li><a href="#">�ltima coleta de dados �s ...</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- ************************************************************************** -->
	
	<div class="container" style="margin-top: 50px">
		<div class="row"></div>
	</div>
	
	
	
	<% if (talhoes != null && !talhoes.isEmpty()) { %>
	
	<h1 class="text-center">Selecione o Talh�o</h1>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
			
			 <% for(Talhao t : talhoes) { %>
				<div class="box">
					<div class="box-icon">
						<span class="fa fa-4x fa-map"></span>
					</div>
					<div class="info">
						<h4 class="text-center"><%=t.getNome()%></h4>
						<p>Localiza��o: <%=t.getLocalizacao()%></p>
						<p>Tipo: <%=t.getTipo()%></p>
						<a href="UsuarioController?chave=iniciar_home" class="btn">Selecionar Talh�o</a>
					</div>
				</div>
			</div>

			<% } %>
			
			<div class="info text-center">
				<a style="margin-top: 70px" href="UsuarioController?chave=iniciar_cadastro_talhao" class="btn text-center">Cadastrar Talhao</a>
			</div>	
		</div>
	</div>
	
	<% } else { %>
	
	<h1 class="text-center">N�o h� Talhoes Cadastrados</h1>
	<div class="container">
		<div class="row">
			<div class="info text-center">
				<a style="margin-top: 70px" href="UsuarioController?chave=iniciar_cadastro_talhao" class="btn text-center">Cadastrar Talhao</a>
			</div>
		</div>
	</div>
	<% } %>
	
	<script src="JQuery/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>