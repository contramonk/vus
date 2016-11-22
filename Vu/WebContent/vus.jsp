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
			<img
				src="https://scontent-dft4-2.xx.fbcdn.net/v/t1.0-9/15181225_10209289402223717_8978212067129912470_n.jpg?oh=6763cc4731ad4488ee6adb4a8913ba63&oe=58B78A0F"
				style="width: 4em; height: 4em; position: relative; left: 50%; right: 50%">
		</div>
		<div class="row">
			<h5>Vus by Year</h5>
		</div>
		<div class="row">
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<div class="panel-group" id="title">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" href="#collapse0"><span
												class="glyphicon glyphicon-plus-sign"></span></a>
											<div id="collapse0" class="panel-collapse collapse">
												<div class="panel-body"></div>

												<form action="addYear.do" method="GET" class="form-inline"
													id="year">
													<div class="form-group" id="year">
														<input type="text" name="year" class="form-control"
															placeholder="Year">
													</div>
													<div class="form-group"></div>
													<button type="submit">Add Year</button>
												</form>
											</div>
											<a data-toggle="collapse" href="#collapse3"><span
												class="glyphicon glyphicon-trash"></a>
											<div id="collapse3" class="panel-collapse collapse">
												<div class="panel-body"></div>

												<form action="deleteYear.do" method="GET"
													class="form-inline" id="year">
													<div class="form-group" id="year">
														<input type="text" name="year" class="form-control"
															placeholder="Year">
													</div>
													<div class="form-group"></div>
													<button type="submit">Remove Year</button>
												</form>
											</div>
										</h4>
									</div>
								</div>

							</div>
							<%-- <c:forEach items="${yearList}" var="item">
    ${item}<br>
</c:forEach>  --%>
							<div class="panel-group">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" href="#collapse6">2016<a
												href="vuAdmin.jsp" value="Add Vu"><span
													class="glyphicon glyphicon-plus-sign"></span></a> <a
												data-toggle="collapse" href="#collapse5"><span
													class="glyphicon glyphicon-trash"></span></a>
												<div id="collapse5" class="panel-collapse collapse">
													<div class="panel-body"></div>

													<form action="deleteYear.do" method="GET"
														class="form-inline" id="year">
														<div class="form-group" id="year">
															<input type="text" name="year" class="form-control"
																placeholder="Title">
														</div>
														<div class="form-group"></div>
														<button type="submit">Delete vu</button>
													</form>
												</div> <a data-toggle="collapse" href="#collapse4"><span
													class="glyphicon glyphicon-edit"></span></a>
												<div id="collapse4" class="panel-collapse collapse">
													<div class="panel-body"></div>

													<form action="editVu.do" method="GET" class="form-inline"
														href="vuAdmin.jsp" id="year">
														<div class="form-group" id="year">
															<input type="text" name="year" class="form-control"
																placeholder="Title">
														</div>
														<div class="form-group"></div>
														<button type="submit">Edit vu</button>
													</form>

												</div>
											</a>
										</h4>
									</div>
									<div id="collapse6" class="panel-collapse collapse">
										<div class="panel-body">
												<a href="VuUser.jsp">
											<img
												src="http://animal-dream.com/data_images/turkey/turkey6.jpg"
												style="width: 10mm; height: 10mm">
												
											${photo} ${title} ${date} Thanksgiving November 24, 2016</a>
												
										</div>
										<div class="panel-footer"></div>
									</div>
								</div>
							</div>
					</div>
				</div>
				</a>
				</h4>
			</div>
			<%-- 	<div id="collapse1" class="panel-collapse collapse">
				     <c:forEach items="${vusList}" var="item">
    ${item}<br>
</c:forEach> 
				
			</div> --%>
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