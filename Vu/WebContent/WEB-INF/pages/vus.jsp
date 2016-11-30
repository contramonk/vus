<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Vus</title>

</head>

<body>

	<nav class="navbar navbar-default" role="navigation">

	<div class="container">

		<!-- Brand and toggle get grouped for better mobile display -->

		<div class="navbar-header">

			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar-brand-centered">

				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>

			</button>

			<div class="navbar-brand navbar-brand-centered">vu</div>

		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->

		<div class="collapse navbar-collapse" id="navbar-brand-centered">

			<ul class="nav navbar-nav">

				<li></li>

				<li><a href="getVus.do">Home</a></li>

				<li><a href="index.jsp">Signout</a></li>

			</ul>

		</div>

		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<div class=container-fluid>
		<div class="row">
			<img
				src="https://scontent-dft4-2.xx.fbcdn.net/v/t1.0-9/15181225_10209289402223717_8978212067129912470_n.jpg?oh=6763cc4731ad4488ee6adb4a8913ba63&oe=58B78A0F"
				style="width: 4em; height: 4em; position: relative; left: 50%; right: 50%">
		</div>
		<div class="row">
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a href="vuAdmin.jsp" value="Add Vu">Add Vu<span
								class="glyphicon glyphicon-plus-sign"></span></a>
						</h4>
					</div>
				</div>
			</div>
		</div>

		<%-- <c:forEach items="${Vus}" var="vu"> --%>

		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">



					<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapse0">${vu.startDate}
							2016 </a>
					</h4>
					</a>
				</div>
			</div>
			<div id="collapse0" class="panel-collapse collapse">
				<div class="panel-body">

					<c:forEach items="${Vus}" var="vu">
						<%--  ${vu}<br> --%>
						<img src="${vu.photos[0].getUrl()}" style="width:15mm; height:15mm">
						<a href="getVu.do?vuId=${vu.id}"> 
						<%-- ${vu} --%> 
						${vu.title}
							${vu.startDate}
						<br>
						</a>
						<a href="getVu.do?vuId=${vu.id}"><span class="glyphicon glyphicon-edit"></span></a>
						<a href="deleteVu.do"><span class="glyphicon glyphicon-trash"></span></a>
						<hr>
					</c:forEach>
</div>

					<!-- <a href="vuAdmin.jsp"> <img
						src="http://animal-dream.com/data_images/turkey/turkey6.jpg"
						style="width: 10mm; height: 10mm"> Thanksgiving November 24,
						2016

<br>
					</a> <a href="vuAdmin.jsp"><span class="glyphicon glyphicon-edit"></span></a>
					 <a href="deleteVu.do"><span
						class="glyphicon glyphicon-trash"></span></a>

 -->

				</div>
				<%-- </c:forEach>
 --%>
				<div class="container">
					<div class="row">
						<hr>
						<div class="col-lg-12">
							<div class="col-md-8">
								<a href="aboutUs.jsp">About Us</a> | <a href="privacyPolicy.jsp">Privacy
									Policy</a>
							</div>
							<div class="col-md-4">
								<p class="muted pull-right">© 2016 Rockin Executioners. All
									rights reserved</p>
							</div>
						</div>
					</div>
				</div>
</body>
</html>