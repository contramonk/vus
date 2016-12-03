<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>VU</title>
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
                        <li><a class="page-scroll" href="#about">About</a></li>
                        <li><a class="page-scroll" href="#download">Login</a></li>
                        <li><a class="page-scroll" href="#contact">Register</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>
        <!-- Intro Header -->
        <header class="intro">
            <div class="intro-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h1 class="brand-heading">VU</h1>
                            <p class="intro-text">Remembering the good times.</p>
                            <a href="#about" class="btn btn-circle page-scroll"> <i
                                class="fa fa-angle-double-down animated"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- About Section -->
        <section id="about" class="container content-section text-center">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2>About VU</h2>
                    <p>
                        Grayscale is a free Bootstrap 3 theme created by Start Bootstrap. It
                        can be yours right now, simply download the template on <a
                            href="http://startbootstrap.com/template-overviews/grayscale/">the
                        preview page</a>. The theme is open source, and you can use it for any
                        purpose, personal or commercial.
                    </p>
                    <p>
                        This theme features stock photos by <a
                            href="http://gratisography.com/">Gratisography</a> along with a
                        custom Google Maps skin courtesy of <a href="http://snazzymaps.com/">Snazzy
                        Maps</a>.
                    </p>
                    <p>Grayscale includes full HTML, CSS, and custom JavaScript files
                        along with LESS files for easy customization.
                    </p>
                </div>
            </div>
        </section>
        <!-- Login Section -->
        <section id="download" class="content-section text-center">
            <div class="download-section">
                <div class="container">
                    <div class="col-lg-8 col-lg-offset-2">
                        <h2>Login</h2>
                        <c:if test="${not empty error}">
                            <div class="error">${error}</div>
                        </c:if>
                        <c:if test="${not empty msg}">
                            <div class="msg">${msg}</div>
                        </c:if>
                        <form name='loginForm'
                            action="<c:url value='/j_spring_security_check' />" method='POST'>
                            <div class="form-group">
                                <label for="username">Username</label> <input type="text"
                                    class="form-control" name="username" aria-describedby="username"
                                    placeholder="Enter Username">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label> <input
                                    type="password" class="form-control" name="password"
                                    placeholder="Password">
                            </div>
                            <input name="submit" type="submit" value="submit"
                                class="btn btn-primary" /> <input type="hidden"
                                name="${_csrf.parameterName}" value="${_csrf.token}" />
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- Register Section -->
        <section id="contact" class="container content-section text-center">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2>Register</h2>
                    <form action="register.do">
                        <div class="form-group">
                            <label for="userCreate">Username</label> <input type="text"
                                class="form-control" id="userCreate"
                                aria-describedby="userName help" placeholder="Username"
                                name="username">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label> <input
                                type="password" class="form-control" id="createPassword"
                                placeholder="Password" name="password">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputFirstName1">First Name</label> <input
                                type="text" class="form-control" id="createFirstName"
                                placeholder="First Name" name="firstname">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputLastName1">Last Name</label> <input
                                type="text" class="form-control" id="createLastName"
                                placeholder="LastName" name="lastname">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </section>
        <section class="container content-section">
            <iframe id="map" width="100%" height="450" style="border: 0"
                src="https://www.google.com/maps/embed/v1/place?key=AIzaSyB0pKrEqTo-fME3GzGtr7ayYn-AGZ-erMY
                &q=Colorado&zoom=2">
            </iframe>
        </section>
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
        <!-- jQuery -->
        <script src="vendor/jquery/jquery.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!-- Plugin JavaScript -->
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
        <!-- Theme JavaScript -->
        <script src="js/grayscale.min.js"></script>
    </body>
</html>