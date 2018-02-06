<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="model.Plataforma"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css"></style>
<title>Suas plataformas</title>

<%
	List<Plataforma> listPlataforma = (List<Plataforma>) request.getAttribute("plataform");
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
	<div class="container" style="margin-top: 50px">
		<div class="row"></div>
	</div>
	<%
		if (listPlataforma != null && !listPlataforma.isEmpty()) {
	%>
	<h1 class="text-center">Suas Platafromas</h1>
	<div class="container-fluid" style="margin-top: 50px">

		<div class="row">
			<table class="table">
				<thead>
					<tr class="info">
						<th>Localização</th>
						<th>Data de Instalação</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<%
					for (Plataforma plataforma : listPlataforma) {
				%>

				<tbody>
					<tr>
						<td><%=plataforma.getLocalizacao()%></td> class="btn btn-success
						<td>TESTE 15/04/2018</td>/
						<td><a
							href="PlataformaController?chave=alterar&id_plataforma=<%=plataforma.getId()%>"
							class="btn btn-warning">Alterar plataforma</a></td>
						<td><a
							href="PlataformaController?chave=deletar&id_plataforma=<%=plataforma.getId()%>"
							class="btn btn-danger">Deletar plataforma</a></td>
					</tr>

				</tbody>
			</table>
			<%
				}
			%>
		</div>
		<%
			} else {
		%>
		<h1 class="text-center">Não há Plataformas Cadastradas</h1>
		<div class="container">
			<div class="row">
				<div class="info text-center">
					<a style="margin-top: 70px"
						href="UsuarioController?chave=cadastrar_plataforma"
						class="btn text-center btn-success">Cadastrar Plataforma</a>
				</div>
			</div>
		</div>
		<%
			}
		%>

		<script src="JQuery/jquery.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>