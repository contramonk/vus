<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
Vu Title "${vuTitle}"

<div class="panel-group" id="title">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#collapse0">Edit Title</a>
        </h4>
      </div>
      <div id="collapse0" class="panel-collapse collapse">
        <div class="panel-body"></div>
        
        <form action="addTitle.do" method="GET" class="form-inline" id="title">
        <div class="form-group" id="title">
        <label for="title">Title</label>
        <input type="text" name="title" class="form-control" id="exampleInputName1" placeholder="Title">
        </div>
        <div class="form-group"> 
        </div>
         <button type="submit" class="btn btn-primary">Enter</button>
        </form>
        
      </div>
    </div>
  </div>
  
</div>

<div class="row">
Location "${Location}"
</div>


<div class="row">
Date "${date}"

  <div class="panel-group" id="date">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#collapse1">Edit Date</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse">
        <div class="panel-body"></div>
        
        <form action="addDate.do" method="GET" class="form-inline" id="date">
        <div class="form-group" id="date">
        <label for="date">Date</label>
        <input type="text" name="date" class="form-control" id="exampleInputName1" placeholder="yyyy/mm/dd">
        </div>
        <div class="form-group"> 
        </div>
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
        <label for="img url">Image URL</label>
        <input type="text" name="img" class="form-control" id="exampleInputName2" placeholder="https://...">
        <label for="img index">Index</label>
        <input type="text" name="index" class="form-control" id="exampleInputName2" placeholder="index number">
        
        </div>
        
        <div class="form-group"> 
        </div>
         <button type="submit" class="btn btn-primary">Enter</button>
        </form>
        
      </div>
    </div>
    
  </div>

</div>

<div class="row">

<form action="addDesc.do" method="GET" class="form-group">
<div class="form-group">
    <label for="desc">Vu Description</label>
    <textarea class="form-control" name="desc" id="desc" rows="5"></textarea>
  </div>
<button type="submit" class="btn btn-primary">Submit</button>
</form>

</div>

<div class="row">

<iframe
  width="600"
  height="450"
  frameborder="0" style="border:0"
  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyB0pKrEqTo-fME3GzGtr7ayYn-AGZ-erMY
    &q=Colorado">
</iframe>

 <div class="panel-group" id="location">
    <div class="panel panel-default" id="photos">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#collapse3">Enter Location</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body"></div>

 <form action="addLocation.do" method="GET" class="form-inline">
 		Fill in atleast one of the following: 
        <div class="form-group" id="location">
        <label for="city">Address</label>
        <input type="text" name="address" class="form-control" id="exampleInputName2" placeholder="Address">
        <label for="city">City</label>
        <input type="text" name="city" class="form-control" id="exampleInputName2" placeholder="City">
        <label for="State">State</label>
        <input type="text" name="state" class="form-control" id="exampleInputName2" placeholder="CO">
        <label for="city">Zip</label>
        <input type="number" name="zip" class="form-control" id="exampleInputName2" placeholder="City">
        <label for="place">Place</label>
        <input type="text" name="Place" class="form-control" id="exampleInputName2" placeholder="Place">
        
        </div>
        
        <div class="form-group"> 
        </div>
         <button type="submit" class="btn btn-primary">Enter</button>
        </form>
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