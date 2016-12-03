<%@taglib prefix="sec"
    uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
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
        <!-- Theme CSS -->
        <link href="css/grayscale.min.css" rel="stylesheet">
        <link href="css/test.css" rel="stylesheet">
    </head>
    <body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
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
                            <li><a href="#add"> Add Vu</a></li>
                            <c:forEach var="vus" items="${vuMap}">
                                <li><a class="page-scroll" href="#${vus.key}">${vus.key}</a></li>
                            </c:forEach>
                            <li><a href="index.jsp">Signout</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid --> 
            </nav>
            <header class="intro">
                <div class="intro-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2">
                                <h1 class="brand-heading">VU</h1>
                                <p class="intro-text">Welcome ${user.firstName}</p>
                                <a href="#add" class="btn btn-circle page-scroll"> <i
                                    class="fa fa-angle-double-down animated"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <div class="container">
                <div class="panel-group test">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title" id="add">
                                <a data-toggle="collapse" href="#collapse1">
                                <span
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
                <c:forEach var="vus" items="${vuMap}">
                    <div class="panel-group">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title" id="{vus.key">
                                    <a data-toggle="collapse"
                                        href="#${vus.key}"> ${vus.key}</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                    <div id="${vus.key}" class="panel-collapse collapse">
                        <c:forEach items="${vus.value}" var="vu">
                            <div class="panel-body">
                                <%--  ${vu}<br> --%>
                                <div class= "row">
                                    <div class="col-sm-4">
                                        <p><a href= "vuUser.do?vuId=${vu.id}">
                                            ${vu.title} ${vu.startDate}</a>
                                        </p>
                                    </div>
                                    <div class="col-sm-8">
                                    </div>
                                </div>
                                <div class = "row">
                                    <div class = "col-sm-4">
                                        <a href="vuUser.do?vuId=${vu.id}">
                                        <img src="${vu.photos[0].getUrl()}"
                                            style="height: 100%; width: 100%;" ></a>
                                    </div>
                                    <div class = "col-sm-8">
                                    </div>
                                </div>
                                <br>
                                <a href="getVu.do?vuId=${vu.id}"><span
                                    class="glyphicon glyphicon-edit"></span></a> <a
                                    href="deleteVu.do?vuId=${vu.id}&vu=${vu}"><span
                                    class="glyphicon glyphicon-trash"></span></a>
                                <hr>
                            </div>
                        </c:forEach>
                    </div>
                </c:forEach>
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
            <!-- Include all compiled plugins (below), or include individual files as needed -->
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