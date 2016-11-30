<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE >
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 400px;
	margin: auto;
}
</style>

<title>VuAdmin</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	"target="_blank">
</head>
<body>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<div class=container-fluid>
			<a href="VuUser.jsp">See Vu</a>
			<div class="row">
				${Vu.title}
				<div class="panel-group" id="title">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapse0">Edit Title</a>
							</h4>
						</div>
						<div id="collapse0" class="panel-collapse collapse">
							<div class="panel-body"></div>

							<form action="addTitle.do" method="GET" class="form-inline"
								id="title">
								<div class="form-group" id="title">
									<label for="title">Title</label> <input type="hidden"
										name="vuId" value="${Vu.id}"> <input type="text"
										name="title" class="form-control" id="exampleInputName1"
										placeholder="Title">
								</div>
								<div class="form-group"></div>
								<button type="submit" class="btn btn-primary">Enter</button>
							</form>

						</div>
					</div>
				</div>

			</div>

			<div class="row">${Vu.location.state}</div>


			<div class="row">
				<fmt:formatDate value="${Vu.startDate}" pattern="yyyy-MM-dd" />
				<fmt:formatDate value="${Vu.endDate}" pattern="yyyy-MM-dd" />


				<div class="panel-group" id="date">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapse1">Edit Date</a>
							</h4>
						</div>
						<div id="collapse1" class="panel-collapse collapse">
							<div class="panel-body"></div>

							<form action="addDate.do" method="GET" class="form-inline"
								id="date">
								<div class="form-group" id="date">
									<label for="startDate">Start Date</label> <input type="hidden"
										name="vuId" value="${Vu.id}"> <input type="text"
										name="startDate" class="form-control" id="exampleInputName1"
										placeholder="yyyy/mm/dd">
								</div>
								<div class="form-group"></div>
								<button type="submit" class="btn btn-primary">Enter</button>
							</form>

							<form action="addEndDate.do" method="GET" class="form-inline"
								id="endDate">
								<div class="form-group" id="enddate">
									<label for="endDate">End Date</label> <input type="hidden"
										name="vuId" value="${Vu.id}"> <input type="text"
										name="endDate" class="form-control" id="exampleInputName1"
										placeholder="yyyy/mm/dd">
								</div>
								<div class="form-group"></div>
								<button type="submit" class="btn btn-primary">Enter</button>
							</form>
						</div>
					</div>
				</div>
			</div>



			<div class="row">

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
						<c:forEach items="${Vu.photos}" var="photo">
							<div class="item-active">
								<img src="${photo.url}">
							</div>
						</c:forEach>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>

				<div class="panel-group" id="photos">
					<div class="panel panel-default" id="photos">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapse2">Add Photo</a>
							</h4>
						</div>
						<div id="collapse2" class="panel-collapse collapse">
							<div class="panel-body"></div>

							<form action="addPhotos.do" method="GET" class="form-inline">
								<div class="form-group" id="photos">
									<label for="img url">Image URL</label> <input type="hidden"
										name="vuId" value="${Vu.id}"> <input type="text"
										name="imgUrl" class="form-control" id="exampleInputName2"
										placeholder="https://...">
								</div>

								<div class="form-group"></div>
								<button type="submit" class="btn btn-primary">Enter</button>
							</form>

						</div>
					</div>

				</div>

			</div>

			<div class="row">
				${Vu.post}

				<form action="addPost.do" method="GET" class="form-group">
					<div class="form-group">
						<label for="post">Vu Description</label> <input type="hidden"
							name="vuId" value="${Vu.id}">
						<textarea class="form-control" name="post" id="post" rows="5"></textarea>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>

			</div>

			<div class="row">

				<iframe width="450" height="250" frameborder="0" style="border: 0"
					src="https://www.google.com/maps/embed/v1/search?key=AIzaSyB0pKrEqTo-fME3GzGtr7ayYn-AGZ-erMY&q=${Vu.location.state}"
					allowfullscreen> </iframe>
				${Vu.location.address}
			</div>
			<div class="col-sm-4">
				<div class="panel-group" id="location">
					<div class="panel panel-default" id="photos">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapse3">Enter Location</a>
							</h4>
						</div>
						<div id="collapse3" class="panel-collapse collapse">
							<div class="panel-body"></div>


							<form action="addAddress.do" method="GET" class="form-inline">
								<div class="form-group" id="address">
									<label for="address">Address</label> <input type="hidden"
										name="vuId" value="${Vu.id}"> <input type="text"
										name="address" class="form-control" id="exampleInputName2"
										placeholder="Address">
								</div>
								<button type="submit" class="btn btn-primary">Enter</button>
							</form>

							<form action="addCity.do" method="GET" class="form-inline">
								<div class="form-group" id="city">
									<label for="city">City</label> <input type="hidden" name="vuId"
										value="${Vu.id}"> <input type="text" name="city"
										class="form-control" id="exampleInputName2" placeholder="City">
								</div>
								<button type="submit" class="btn btn-primary">Enter</button>
							</form>

							<form action="addState.do" method="GET" class="form-inline">
								<div class="form-group" id="state">
									<label for="State">State</label> <input type="hidden"
										name="vuId" value="${Vu.id}"> <input type="text"
										name="state" class="form-control" id="exampleInputName2"
										placeholder="CO">
								</div>
								<button type="submit" class="btn btn-primary">Enter</button>
							</form>

							<form action="addZip.do" method="GET" class="form-inline">
								<div class="form-group" id="zip">
									<label for="city">Zip</label> <input type="hidden" name="vuId"
										value="${Vu.id}"> <input type="number" name="zip"
										class="form-control" id="exampleInputName2" placeholder="Zip">
								</div>
								<button type="submit" class="btn btn-primary">Enter</button>
							</form>

							<form action="addPlace.do" method="GET" class="form-inline">
								<div class="form-group" id="place">
									<label for="place">Place</label> <input type="hidden"
										name="vuId" value="${Vu.id}"> <input type="text"
										name="place" class="form-control" id="exampleInputName2"
										placeholder="Place">
								</div>
								<button type="submit" class="btn btn-primary">Enter</button>
							</form>



						</div>
					</div>

					<script
						src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
					<!-- Include all compiled plugins (below), or include individual files as needed -->
					<script src="js/bootstrap.min.js"></script>
					<script
						src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
					<script
						src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
				</div>
			</div>
	</sec:authorize>
</body>
</html>