<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="sec"
    uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
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
        <style>
            /* .carousel-inner>.item>img, .carousel-inner>.item>a>img {
            width: 100%;
            margin: auto;
            } */
            .carousel img {
            width: 100%;
            height: 100% max-height: 100%;
            }
            /* .carousel-inner {
            height = 500px;
            } */
        </style>
        <title>VuAdmin</title>
        <!-- <link rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            target="_blank"> -->
    </head>
    <body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
        <sec:authorize access="hasRole('ROLE_ADMIN')">
            <!--  navbar -->
            <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-main-collapse">
                        Menu <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand page-scroll" href="vuUser.do?vuId=${Vu.id}">
                        <i class="fa fa-play-circle"></i> <span class="light">See
                        Vu</span>
                        </a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div
                        class="collapse navbar-collapse navbar-right navbar-main-collapse">
                        <ul class="nav navbar-nav">
                            <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                            <li class="hidden"><a href="#page-top"></a></li>
                            <li><a href="getVus.do">Home</a></li>
                            <li><a class="page-scroll" href="#photos">Photos</a></li>
                            <li><a class="page-scroll" href="#contact">Description</a></li>
                            <li><a class="page-scroll" href="#map">Location</a></li>
                            <li><a href="index.jsp">Signout</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container -->
            </nav>
            <div class="row">
                <section id="photos">
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
                            <c:forEach items="${Vu.photos}" var="photo" varStatus="status">
                                <div class="item<c:if test='${status.first}'> active</c:if>">
                                    <img src="${photo.url}">
                                    <div class="carousel-caption">
                                        <p>${photo.id}</p>
                                    </div>
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
                </section>
            </div>
            
            <section id="contact" class="container content-section text-center">
                <div class="row">
                    <h1>${Vu.title}</h1>
                    <h3>${Vu.location}</h3>
                    <c:choose>
                        <c:when test="${not empty Vu.endDate}">
                            <h5>
                            <fmt:formatDate value="${Vu.startDate}" pattern="MM-dd-yyyy"/> -
                            <fmt:formatDate value="${Vu.endDate}" pattern="MM-dd-yyyy"/>
                            </h5>
                        </c:when>
                        <c:otherwise>
                            <h5><fmt:formatDate value="${Vu.startDate}" pattern="MM-dd-yyyy"/></h5>
                        </c:otherwise>
                    </c:choose>
                </div>
                <div class="row"></div>
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <div>
                        <hr>
                    </div>
                    <div style="white-space: pre-wrap">${Vu.post}</div>
                    <div>
                        <hr>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
            </section>
            <section class="container content-section">
                <!-- Map -->
            <c:if test='${empty Vu.location}'>
                <iframe id="map" width="100%" height="450" style="border: 0"
               src="https://www.google.com/maps/embed/v1/place?key=AIzaSyB0pKrEqTo-fME3GzGtr7ayYn-AGZ-erMY
               &q=Colorado&zoom=2">
                </iframe>
            </c:if>
            <c:if test='${!empty Vu.location}'>
               <iframe id="map" width="100%" height="450" style="border: 0"
                   src="https://www.google.com/maps/embed/v1/place?key=AIzaSyB0pKrEqTo-fME3GzGtr7ayYn-AGZ-erMY
                   &q=${Vu.location}">
               </iframe>
            </c:if>
            </section>
            <br>
            <br>
            <div class="container">
                <div class="row">
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
            </div>
            <div class="container">
                <div class="row">
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
                                            placeholder="dd/mm/yyyy">
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
                                            placeholder="dd/mm/yyyy">
                                    </div>
                                    <div class="form-group"></div>
                                    <button type="submit" class="btn btn-primary">Enter</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="panel-group" id="location">
                        <div class="panel panel-default" id="photos">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" href="#collapse3">Edit Location</a>
                                </h4>
                            </div>
                            <div id="collapse3" class="panel-collapse collapse">
                                <div class="panel-body"></div>
                                <div class="col-sm-1"></div>
                                <form action="addAddress.do" method="GET" class="form-inline">
                                    <label for="address">Address</label> <input type="hidden"
                                        name="vuId" value="${Vu.id}"> <input type="text"
                                        name="address" class="form-control" id="exampleInputName2"
                                        placeholder="Address"> <label for="address">City</label>
                                    <input type="text" name="city" class="form-control"
                                        id="exampleInputName2" placeholder="City"> <label
                                        for="address">State</label> <input type="text" name="state"
                                        class="form-control" id="exampleInputName2" placeholder="State">
                                    <label for="address">Zip</label> <input type="text" name="zip"
                                        class="form-control" id="exampleInputName2" placeholder="Zip">
                                    <label for="address">Place</label> <input type="text"
                                        name="place" class="form-control" id="exampleInputName2"
                                        placeholder="Ex. Meagan's Beach">
                                    <button type="submit" class="btn btn-primary">Enter</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="panel-group" id="photos">
                        <div class="panel panel-default" id="photos">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" href="#collapse2">Add/Remove Photo</a>
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
                                <form action="deletePhoto.do" method="GET" class="form-inline">
                                    <div class="form-group" id="photos">
                                        <label for="img url">Delete Photo</label> <input type="hidden"
                                            name="vuId" value="${Vu.id}"> <input type="number"
                                            name="photoId" class="form-control" id="exampleInputName2"
                                            placeholder="Enter ID">
                                    </div>
                                    <div class="form-group"></div>
                                    <button type="submit" class="btn btn-primary">Enter</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <form action="addPost.do" method="GET" class="form-group">
                        <div class="form-group">
                            <label for="post">Vu Description</label> <input type="hidden"
                                name="vuId" value="${Vu.id}">
                            <pre>
					<textarea class="form-control" name="post" id="post" rows="5"></textarea>
					</pre>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
            <!-- Footer -->
            <div class="container text-center">
                <footer>
                    <div class="container text-center">
                        <p>
                            <a href="aboutUs.jsp">About Us</a> | <a href="privacyPolicy.jsp">Privacy
                            Policy</a>
                        </p>
                        <p>© 2016 Rockin Executioners. All rights reserved</p>
                    </div>
                </footer>
            </div>
            <script
                src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="js/bootstrap.min.js"></script>
            <script
                src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script
                src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
            <!-- Plugin JavaScript -->
            <script
                src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
            <!-- Theme JavaScript -->
            <script src="js/grayscale.min.js"></script>
        </sec:authorize>
    </body>
</html>