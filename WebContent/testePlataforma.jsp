<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="model.RssfDados"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css"></style>
<title>Suas plataformas</title>

<%

List<RssfDados> listDados = (List<RssfDados>)request.getAttribute("rssfDados");

%>
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
		<div class="row"></div>
	</div>

	<% 
		if (listDados != null && !listDados.isEmpty()) {
		%>
	<h1 class="text-center">Dados Climáticos</h1>
	<div class="container" style="margin-top: 50px">
		<div class="row"></div>
	</div>

	<div class="container">
		<% for(RssfDados dados : listDados) { %>

		<table class="table">
			<thead>
				<tr>
					<th>Id</th>
					<th>Temperatura</th>
					<th>Umidade</th>
					<th>Anemometro</th>
					<th>Data/hora da coleta</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><%=dados.getId()%></td>
					<td><%=dados.getSensorTemperatura()%></td>
					<td><%=dados.getSensorUmidade()%></td>
					<td><%=dados.getSensorAnemometro()%></td>
					<td>5.666.564</td>
				</tr>
			</tbody>
			<% } %>
		</table>
	</div>
	<% } else { %>
	<h1 class="text-center">Não há dados disponíveis!</h1>
	<div class="container">
		<div class="row">
			<div class="info text-center">
				<a style="margin-top: 70px" href="UsuarioController?chave=cadastrar_plataforma" class="btn text-center btn-success">Teste</a>
			</div>
		</div>
	</div>
	<% } %>
	
	<script src="JQuery/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>