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
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"  crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"  crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"  crossorigin="anonymous"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
         <span style="color:white; font-size:30px;cursor:pointer; padding-right:10px" onclick="openNav()">&#9776; </span>
         <a class="navbar-brand" href="" style ="color:white; font-size: 45px;font-family: 'Just Another Hand'">PICASSO</a>
         <ul class="navbar-nav ml-auto" >
            <ul class="navbar-nav mr-auto">
               <li class="nav-item">
                  <a class="nav-link " style ="color:white" href="index.html" ><span  style =" font-size: 30px;font-family: 'Just Another Hand'">LOGOUT</span></a>
               </li>
            </ul>
         </ul>
      </nav>
      <div id="mySidenav" class="sidenav">
         <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
         <a href="admin.html">Home</a>
         <a href="#">View Restaurants</a>
         <a href="#">Add restaurant</a>
         <a href="user.jsp">View Users</a>
      </div>
      <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" data-interval="2000">
         <div class="carousel-inner">
            <div class="hero">
               <div  >
                  <p style ="font-size: 100px;font-family: 'Just Another Hand';color:#FFCC33;">Picasso</p>
                  <p style ="font-size: 50px;font-family: 'Just Another Hand';color:#FFCC33;">Welcome Admin</p>
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
      <div class="row" style="padding-top: 10px ;font-size: 20px;font-family: 'Raleway'" >
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
      <div class="row" style="padding-top: 10px ;font-size: 20px;font-family: 'Raleway'" >
         <div class="card border mb-3 container-fluid" >
            <div class="card-body ">
               <div class="row "  style="padding-left:450px">
                  <h1  style="color:#FFCC33;" >OUR TEAM</h1>
               </div>
               <div class="row" >
                  <div class="col-4 " align="center" >
                     <figure class="figure">
                        <img class="img-rounded" src="images/ashu.jpg" width="230" height="230">
                        <figcaption class="figure-caption text-center pt-2">Ashutosh Agarwal</figcaption>
                     </figure>
                  </div>
                  <div class="col-4"  align="center">
                     <figure class="figure">
                        <img class="img-rounded" src="images/namit.jpg" width="230" height="230">
                        <figcaption class="figure-caption text-center pt-2">Namit Bhardwaj</figcaption>
                     </figure>
                  </div>
                  <div class="col-4"  align="center">
                     <figure class="figure">
                        <img class="img-rounded" src="images/ashish.jpg" width="230" height="230">
                        <figcaption class="figure-caption text-center pt-2">Ashish Arora</figcaption>
                     </figure>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <script>
         function openNav() {
         document.getElementById("mySidenav").style.width = "250px";
         }
         
         function closeNav() {
         document.getElementById("mySidenav").style.width = "0";
         }
      </script>
   </body>
</html>