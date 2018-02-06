<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap 101 Template</title>

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">


</head>
<body>
	<div class="container">
		<div class="span12">
			<form class="form-horizontal" action='' method="POST">
				<fieldset>
					<div id="legend">
						<legend class="">Login</legend>
					</div>
					<div class="control-group">
						<!-- Username -->
						<label class="control-label" for="username">Username</label>
						<div class="controls">
							<input type="text" id="username" name="username" placeholder=""
								class="input-xlarge">
						</div>
					</div>
					<div class="control-group">
						<!-- Password-->
						<label class="control-label" for="password">Password</label>
						<div class="controls">
							<input type="password" id="password" name="password"
								placeholder="" class="input-xlarge">
						</div>
					</div>
					<div class="control-group">
						<!-- Button -->
						<div class="controls">
							<button class="btn btn-success">Login</button>
						</div>
					</div>
				</fieldset>
			</form>
		</div>

		<div class="col-lg-6">
			<h4>Subheading</h4>
			<p>Donec id elit non mi porta gravida at eget metus. Maecenas
				faucibus mollis interdum.</p>

			<h4>Subheading</h4>
			<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
				Cras mattis consectetur purus sit amet fermentum.</p>

			<h4>Subheading</h4>
			<p>Maecenas sed diam eget risus varius blandit sit amet non
				magna.</p>
		</div>
	</div>

	<footer class="footer">
	<p>&copy; 2016 Company, Inc.</p>
	</footer>

	</div>
	<!-- /container -->

	<script src="jquery/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>

</body>
</html>