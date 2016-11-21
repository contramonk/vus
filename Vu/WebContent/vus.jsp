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
				<li><a href="vus.jsp">Home</a></li>
				<li><a href="index.html">Signout</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<div class=container-fluid>
		<div class="row">
		<img src="https://scontent-dft4-2.xx.fbcdn.net/v/t1.0-9/15181225_10209289402223717_8978212067129912470_n.jpg?oh=6763cc4731ad4488ee6adb4a8913ba63&oe=58B78A0F" style="width: 4em; height: 4em ; position: relative; left:50%; right:50%">
			<div class="panel-group" id="title">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" href="#collapse0">+</a>
							<div id="collapse0" class="panel-collapse collapse">
								<div class="panel-body"></div>

								<form action="addYear.do" method="GET" class="form-inline"
									id="year">
									<div class="form-group" id="year">
										<input type="text" name="year" class="form-control"
											placeholder="Year">
									</div>
									<div class="form-group"></div>
									<button type="submit">Enter</button>
								</form>
							</div>
							<a data-toggle="collapse" href="#collapse3">-</a>
							<div id="collapse3" class="panel-collapse collapse">
								<div class="panel-body"></div>

								<form action="deleteYear.do" method="GET" class="form-inline"
									id="year">
									<div class="form-group" id="year">
										<input type="text" name="year" class="form-control"
											placeholder="Year">
									</div>
									<div class="form-group"></div>
									<button type="submit">Enter</button>
								</form>
							</div>
						</h4>
					</div>
				</div>

			</div>
		</div>
		<div class="row">
			<h5>Vus by Year</h5>
		</div>
		<div class="row">
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<%-- <c:forEach items="${yearList}" var="item">
    ${item}<br>
</c:forEach> --%> 
							<a data-toggle="collapse" href="#collapse1">${year} 2016 
							<a href="vuAdmin.jsp" value="Add Vu">+</a>
<!-- 							<a data-toggle="collapse" href="#collapse5">-</a>
								<div id="collapse5" class="panel-collapse collapse">
									<div class="panel-body"></div>

									<form action="deleteYear.do" method="GET" class="form-inline"
										id="year">
										<div class="form-group" id="year">
											<input type="text" name="year" class="form-control"
												placeholder="Title">
										</div>
										<div class="form-group"></div>
										<button type="submit">Enter</button>
									</form>
								</div> 
							<a
								data-toggle="collapse" href="#collapse4">Update Vu</a>
								<div id="collapse4" class="panel-collapse collapse">
									<div class="panel-body"></div>

									<form action="editVu.do" method="GET" class="form-inline" href="vuAdmin.jsp"
										id="year">
										<div class="form-group" id="year">
											<input type="text" name="year" class="form-control"
												placeholder="Title">
										</div>
										<div class="form-group"></div>
										<button type="submit">Enter</button>
									</form>
								</div> -->


									<!-- <form action="addVu.do" method="GET" class="form-inline" id="newvu">
        <input type="text" class="form-control" id="newvu" placeholder="Title">
        <input type="text" class="form-control" id="newvu" placeholder="Date">
        <input type="text" class="form-control" id="newvu" placeholder="Image url">
        <input type="text" class="form-control" id="newvu" placeholder="Description"><br>
        <input type="text" name="address" class="form-control" id="exampleInputName2" placeholder="Address">
        <input type="text" name="city" class="form-control" id="exampleInputName2" placeholder="City">
        <input type="text" name="state" class="form-control" id="exampleInputName2" placeholder="CO">
        <input type="text" name="zip" class="form-control" id="exampleInputName2" placeholder="City">
        <input type="text" name="Place" class="form-control" id="exampleInputName2" placeholder="Place">
        <button type="submit" class="btn btn-primary">Enter</button>
        </form>  -->

					</div>
				</div>
				</a>
				</h4>
			</div>
			<div id="collapse1" class="panel-collapse collapse">
				<%--     <c:forEach items="${vusList}" var="item">
    ${item}<br>
</c:forEach> --%>
				<div class="panel-body">${vu}
					<h5>
						<!-- Christmas 2016 -->
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
								<li data-target="#myCarousel" data-slide-to="3"></li>
							</ol>
							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">

								<c:forEach var="vu" items="${vuList}">
									<div class="item">
										<img src="photo">
									</div>

								</c:forEach>
								<div class="item active"
									style="position: relative; text-align: center;">
									<a href="VuUser.jsp">${title} The Greatest Vu Yet ${photo}</a>
								</div>
								<div class="item"
									style="position: relative; text-align: center;">Vu2</div>
								<div class="item"
									style="position: relative; text-align: center;">Vu3</div>
								<div class="item"
									style="position: relative; text-align: center;">Vu4</div>
							</div>
							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel" role="button"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel"
								role="button" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</h5>
					<input type="button" value="update" action="updateVu.do"> <input
						type="button" value="delete" action="deleteVu.do">
				</div>
			</div>
		</div>
	</div>
	</div>
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

</body>
</html>