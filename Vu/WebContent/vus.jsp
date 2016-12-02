<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Vus</title>
<!-- Bootstrap Core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">

<!-- Theme CSS -->
<link href="css/grayscale.min.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<c:choose>
	<c:when test="${not empty error}">
		<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top"
			onload='document.loginForm.username.focus();'>
	</c:when>
	<c:otherwise>

		<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
	</c:otherwise>
</c:choose>
<body>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<!-- Navigation -->
		<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-main-collapse">
					Menu <i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top"> <i
					class="fa fa-play-circle"></i> <span class="light">Start</span> VU
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div
				class="collapse navbar-collapse navbar-right navbar-main-collapse">
				<ul class="nav navbar-nav">
					<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
					<li class="hidden"><a href="#page-top"></a></li>
					<li><a href="#addVu"> Add Vu</a></li>
					<c:forEach var="vus" items="${vuMap}">
						<li><a class="page-scroll" href="#${vus.key}">${vus.key}</a></li>
					</c:forEach>
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


<section id="addVu">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapse1"><span
									class="glyphicon glyphicon-plus-sign"></span></a>
							</h4>
						</div>
					</div>
				</div>
				<div id="collapse1" class="panel-collapse collapse">
					<div class="panel-body">
						<form action="addVu.do" method="GET" class="form-inline"
							id="newvu">

							<input type="text" class="form-control" name="title"
								placeholder="Title" value=""> <input type="hidden"
								name="username" value="${user.username}"> <input
								type="text" class="form-control" placeholder="Start Date"
								name="startDate">

							<button type="submit" class="btn btn-primary">Enter</button>

						</form>

					</div>

				</div>
</div>
				<c:forEach var="vus" items="${vuMap}">
					<div class="panel-group">
						<div class="panel panel-default">
							<div class="panel-heading">

								<h4 class="panel-title">
									<section id="{vus.key"> <a data-toggle="collapse"
										href="#${vus.key}"> ${vus.key}</a>
								</h4>
							</div>
						</div>
					</div>


					<div id="${vus.key}" class="panel-collapse collapse">
						<c:forEach items="${vus.value}" var="vu">
							<div class="panel-body">
								<%--  ${vu}<br> --%>
								<img src="${vu.photos[0].getUrl()}"
									style="width: 15mm; height: 15mm"> <a
									href="vuUser.do?vuId=${vu.id}"> ${vu.title} ${vu.startDate}
									<br>
								</a> <a href="getVu.do?vuId=${vu.id}"><span
									class="glyphicon glyphicon-edit"></span></a> <a
									href="deleteVu.do?vuId=${vu.id}&vu=${vu}"><span
									class="glyphicon glyphicon-trash"></span></a>
								<hr>
							</div>
						</c:forEach>
					</div>
				</c:forEach>
			</div>
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
	</sec:authorize>
</body>
</html>