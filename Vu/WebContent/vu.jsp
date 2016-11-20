<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE >
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 400px;

      margin: auto;
      
  }
  </style>

<title>Vu</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class=container-fluid>
<div class="row">
Vu Title
</div>



<div class="row">
Date 

  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#collapse1">Edit Date</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse">
        <div class="panel-body"></div>
       
        <div class="panel-footer">Panel Footer</div>
      </div>
    </div>
  </div>
 </div>

 <hr>

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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</div>
</body>
</html>