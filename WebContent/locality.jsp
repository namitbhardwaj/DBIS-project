<%@ page import="java.util.*"%>
<%@ page import="Home.Home"%>
<%@ page import="Home.RestaurantDetails"%>
<%@ page import="Home.ReviewDetails"%>

<!DOCTYPE HTML>
<html>
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>Picasso-Review Restaurants</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="css/index.css">
      
      <link href='https://fonts.googleapis.com/css?family=Just Another Hand' rel='stylesheet'>
      <link href='https://fonts.googleapis.com/css?family=PT Sans Narrow' rel='stylesheet'>
      <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet'>
      <script src="js/bootstrap.js"></script>
      <link rel="stylesheet" href="css/animate.css">
      <script src="js/wow.min.js"></script>
      <script>
      new WOW().init();
      </script>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"  crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"  crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"  crossorigin="anonymous"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script> 
      <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script> 
      <script type="text/javascript"> 
          var geocoder;
          function f() {
              if (navigator.geolocation) {
                  navigator.geolocation.getCurrentPosition(successFunction, errorFunction);
              }
          }
          function successFunction(position) {
              var lat = position.coords.latitude;
              var lng = position.coords.longitude;
              codeLatLng(lat, lng)
          }
          function errorFunction() {
              
              document.getElementById('locate').placeholder = 'Pincode';
              document.getElementById('sear').disabled = true;
          }
          function initialize() {
              geocoder = new google.maps.Geocoder();
          }
          function codeLatLng(lat, lng) {
              var latlng = new google.maps.LatLng(lat, lng);
              geocoder.geocode({
                  'latLng': latlng
              }, function(results, status) {
                  if (status == google.maps.GeocoderStatus.OK) {
                      console.log(results)
                      if (results[1]) {
                          for (var i = 0; i < results[0].address_components.length; i++) {
                              for (var b = 0; b < results[0].address_components[i].types.length; b++) {
                                  if (results[0].address_components[i].types[b] == "postal_code") {                                     
                                      document.getElementById('locate').placeholder = results[0].address_components[i].short_name;
                                      document.getElementById('sear').disabled = false;
                                  }
                              }
                          }
                         
                      } else {
                          alert("No results found");
                      }
                  } else {
                      alert("Geocoder failed due to: " + status);
                  }
              });
          }
      </script> 
   </head>
   <style>
      .car {
      -webkit-filter: blur(5px); 
      filter: blur(5px);
      }
   </style>
   <body onload="initialize()" >
      <div  class="container">
      <nav class="navbar navbar-expand-lg  navbar-light  " style=" background-color: black">
         <a class="navbar-brand" href="" style ="color:white; font-size: 45px;font-family: 'Just Another Hand'">PICASSO</a>
         <ul class="navbar-nav ml-auto" >
            <div class="input-group" style="padding-top:8px">
               <input class="form-control mr-sm-2" type="search" placeholder="Search Restaurants..." style =" font-size: 20px;font-family: 'Raleway'"aria-label="Search">
               <span class="input-group-btn"> <button type="submit" class="btn btn-outline-default"><i class="fa fa-search"></i></button>
               </span>
            </div>
            <ul class="navbar-nav mr-auto">
               <li class="nav-item">
                  <a class="nav-link " style ="color:white" href="index_ashu.jsp" ><span  style =" font-size: 30px;font-family: 'Just Another Hand'">LOGOUT</span></a>
               </li>
            </ul>
         </ul>
      </nav>
      <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" data-interval="2000">
         <div class="carousel-inner">
            <div class="hero">
               <div  >
                  <p style ="font-size: 100px;font-family: 'Just Another Hand';color:#FFCC33;">Picasso</p>
                  <p style ="font-size: 50px;font-family: 'Just Another Hand';color:#FFCC33;">Search and review Restaurants</p>
                  <div class="input-group" style="padding-top:8px">
                     <input class="form-control mr-sm-2" type="search" id="locate" placeholder="Pincode" style =" font-size: 20px;font-family: 'Raleway'"aria-label="Search" disabled>
                     <button type="button" class="btn btn-light"onclick="f()">LOCATE</button>
                     <span class="input-group-btn"> <button type="submit" id="sear" class="btn btn-outline-default" disabled><i class="fa fa-search"></i></button>
                     </span>
                  </div>
                  <div class="btn-group pt-3">
                     <button type="button" class="btn btn-light btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     Select Locality
                     </button>
                     <div class="dropdown-menu">
                     
<%               
		out.print("	<form method=\"post\" action=\"restaurantlist.jsp\">");    %>
		<select id="myRestaurants" name="locality">     
<%
		List<String> localityList = Home.getLocalities();		
						  for(int i=0;i<localityList.size();i++){
							String s = localityList.get(i);
							out.print("<option value=\""+s+"\">"+s+"</option>");
//							out.print("<a class=\"dropdown-item\"  href=\"#\">"+s+"</a>");
						}  

			out.print("</select> <input type=\"submit\" value=\"Submit\" /></form>");
%>
                     </div>
                  </div>
               </div>
            </div>
            <div class="carousel-item active">
               <img class="d-block w-100 car" src="images/a.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
               <img class="d-block w-100 car" src="images/b.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
               <img class="d-block w-100 car" src="images/d.jpg" alt="Third slide">
            </div>
         </div>
         <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
         <span class="carousel-control-prev-icon" aria-hidden="true"></span>
         <span class="sr-only">Previous</span>
         </a>
         <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
         <span class="carousel-control-next-icon" aria-hidden="true"></span>
         <span class="sr-only">Next</span>
         </a>
      </div>
      <div class="row fadeInLeftBig  animated" data-wow-delay="0.5s" style="padding-top: 10px ;font-size: 20px;font-family: 'Raleway'" >
         <div class="card border mb-3 container-fluid" >
            <div class="card-body ">
               <div class="row "  style="padding-left:30px">
                  <h1  style="color:#FFCC33;" >ABOUT</h1>
               </div>
               <hr>
               <p>
                  This project is developed by Ashutosh ,Namit and Ashish as a course project in DBIS course autumn semester 2018.
                  A customer without registering can view information about restaurants and search restaurants near him/her.After logging in he/she can 
                  write reviews and also apply filters to gat a list of restaurants near him/her.
               </p>
            </div>
         </div>
      </div>
      <div class="row wow fadeInRightBig animated" data-wow-delay="0.5s" style="padding-top: 10px ;font-size: 20px;font-family: 'Raleway'" >
         <div class="card border mb-3 container-fluid" >
            <div class="card-body ">
               <div class="row "  style="padding-left:450px">
                  <h1  style="color:#FFCC33;" >OUR TEAM</h1>
               </div>
               <div class="row " >
                  <div class="col-4 " align="center" >
                     <figure class="figure">
                        <img class="rounded-circle"  src="images/ashu.jpg" width="230" height="230">
                        <figcaption class="figure-caption text-center pt-2  wow bounceIn animated " data-wow-delay="1.25s">Ashutosh Agarwal</figcaption>
                     </figure>
                  </div>
                  <div class="col-4"  align="center">
                     <figure class="figure">
                        <img class="rounded-circle" src="images/namit.jpg" width="230" height="230">
                        <figcaption class="figure-caption text-center pt-2 wow bounceIn animated " data-wow-delay="1.25s">Namit Bhardwaj</figcaption>
                     </figure>
                  </div>
                  <div class="col-4"  align="center">
                     <figure class="figure">
                        <img class="rounded-circle" src="images/ashish.jpg" width="230" height="230">
                        <figcaption class="figure-caption text-center pt-2 wow bounceIn animated " data-wow-delay="1.25s" >Ashish Arora</figcaption>
                     </figure>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </body>
</html>