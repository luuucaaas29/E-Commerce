<%@page import="java.util.ArrayList"%>
<%@page import="entidade.Product.Product" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<title>Shop Homepage - Start Bootstrap Template</title>
		
		<!-- Bootstrap core CSS -->
		<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Custom styles for this template -->
		<link href="css/shop-homepage.css" rel="stylesheet">
	</head>
	<body>
		<!-- Navigation -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<div class="container">
				<a class="navbar-brand" href="#">Start Bootstrap</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active">
							<a class="nav-link" href="#">Home
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">About</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">Contact</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="login.html">Login</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>

		<!-- Page Content -->
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<h1 class="my-4">Shop Name</h1>
					<div class="list-group">
						<a href="#" class="list-group-item">Category 1</a>
						<a href="#" class="list-group-item">Category 2</a>
						<a href="#" class="list-group-item">Category 3</a>
					</div>
					
					<form action="aula" >
						<input type="number" name="valorUm"><br>
						<button class="btn btn-primary" type="submit">teste</button>
					</form>
				</div> <!-- /.col-lg-3 -->
				
				<div class="col-lg-9">
					<div class="row">
						<%
							String product;
				
							ArrayList<Product> productList =  (ArrayList) request.getAttribute("productList");
							
							String lista = "";
							for(Product oneProduct : productList){
								lista += "<BR>" + oneProduct.toString();
							}
							out.println(lista);

							       
							for(int i=0; i<6; i++){
								product = "<div class='col-lg-4 col-md-6 mb-4'>";
								product += "	<div class='card h-100'>";
								product += "		<a href='#'><img class='card-img-top' src='http://placehold.it/700x400' alt=''></a>";
								product += "		<div class='card-body'>";
								product += "			<h4 class='card-title'>";
								product += "				<a href='#'>Item "+i+"</a>";
								product += "			</h4>";
								product += "			<h5>$24.99</h5>";
								product += "			<p class='card-text'>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>";
								product += "		</div>";
								product += "		<div class='card-footer'>";
								product += "			<small class='text-muted'>&#9733; &#9733; &#9733; &#9733; &#9734;</small>";
								product += "		</div>";
								product += "	</div>";
								product += "</div>";
								
								out.println(product);
						}
						%>
					</div> <!-- /.row -->
				</div> <!-- /.col-lg-9 -->
			</div> <!-- /.row -->
		</div> <!-- /.container -->

		<!-- Footer -->
		<footer class="py-5 bg-dark">
			<div class="container">
				<p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
			</div> <!-- /.container -->
		</footer>
		
		<!-- Bootstrap core JavaScript -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	</body>

</html>
