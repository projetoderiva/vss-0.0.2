<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Entrar</title>

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">


<style type="text/css">
</style>

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
		
		<!-- FOI RETIRADO POIS SE O USUARIO NAO LOGADO ENTAO NAO PODE TER ESTES DADOS -->
		<!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar 
		<div id="navbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="UsuarioController?chave=iniciar_home">Home</a></li>
			</ul>
		</div> 
		-->
	</div>
	</nav>
	<!-- ****************************************************************************** -->
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-md-6">
				<div class="col-md-12 "> <!-- inicio -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">
								<strong>Entrar</strong>
							</h3>
						</div>
						<div class="panel-body">
							<form role="form" action="UsuarioController?chave=aposlogin" method="post">
								<div class="form-group">
									<label for="exampleInputEmail1">Nome do usuário ou email</label> <input
										type="email" class="form-control" style="border-radius: 0px"
										id="exampleInputEmail1" placeholder="usuário ou email">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Senha <a
										href="/sessions/forgot_password">(esqueceu a senha?)</a></label> <input
										type="password" class="form-control"
										style="border-radius: 0px" id="exampleInputPassword1"
										placeholder="Senha">
								</div>
								<button type="submit" class="btn btn-sm btn-default" style="size:90px">Entrar</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-6">.col-md-6</div>
		</div>
	</div>
	<script src="JQuery/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>