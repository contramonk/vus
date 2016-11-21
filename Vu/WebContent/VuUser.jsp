<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE >
<html lang="en">
<head>
	 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Vu</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <!-- Theme CSS -->
    <link href="css/grayscale.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 400px;

      margin: auto;
      
  }
  </style>

<title>Vu</title>

</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    Menu <i class="fa fa-bars"></i>
                </button>
                
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#Vu">Vu</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#photos">Photos</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Story</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#map">Map</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
     <header class="intro" id="Vu">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1> Vu Title "${vuTitle}"</h1>
                        <h3> Location "${Location}"</h3>
                        <h3>Date "${date}"</h3>
                       <a href="#photos" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
 <section id="photos" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2></h2>
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
  
  <c:forEach var="photo" items="${photoList}">
  <div class="item">
  <img src="photo">
 </div>
  
  </c:forEach>
    <div class="item active">
      <img src="https://scontent.fapa1-2.fna.fbcdn.net/t31.0-8/14425518_10154103010359472_528916013561621627_o.jpg" alt="Chania">
    </div>

    <div class="item">
      <img src="https://scontent.fapa1-2.fna.fbcdn.net/v/t1.0-9/13902785_10153990145604472_7918892357210220902_n.jpg?oh=ac5cf7aee9897064e43802bc3972a848&oe=588B4730" alt="Chania">
    </div>

    <div class="item">
      <img src="https://scontent.fapa1-2.fna.fbcdn.net/v/t1.0-9/14079631_10154028366494472_9166475305605359890_n.jpg?oh=c6346430391adbe01473738433890878&oe=58C29BA2" alt="Flower">
    </div>

    <div class="item">
      <img src="https://scontent.fapa1-2.fna.fbcdn.net/v/t1.0-9/15056306_10154263570019472_6305733730725051490_n.jpg?oh=48d7d7573a4dea91f3ba9e000208d4ea&oe=58877ECC" alt="Flower">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>

                
            </div>
        </div>
    </section>




   <section id="contact" class="container content-section text-center">
 
<div class="row">

  Description here "${description}"

</div>
</section>

<section id="map" class="container content-section text-center">
<div class="row">

<iframe
  width="600"
  height="450"
  frameborder="0" style="border:0"
  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyB0pKrEqTo-fME3GzGtr7ayYn-AGZ-erMY
    &q=Colorado">
</iframe>
</div>
</section>
<br>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

   
    <!-- Theme JavaScript -->
    <script src="js/grayscale.min.js"></script>

</body>
</html>