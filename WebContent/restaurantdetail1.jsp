<%@page import="Home.Home"%>
<%@page import="Home.RestaurantDetails"%>
<%@page import="Home.ReviewDetails"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <link rel="stylesheet" href="css/circle.css">

   </head>
   <style>
      body {
      font-family: 'Raleway';
      }
   </style>
   <script>
      function a(){
          $('#login').modal('toggle');
      }
      
      
      $(function() {
      $('#menu').on('click', function() {
      $('.enlargeImageModalSource').attr('src', $(this).attr('src'));
      $('#enlargeImageModal').modal('show');
      });
      });
      
   </script>
   <body>
      <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
               <div class="modal-header text-center">
                  <h4 class="modal-title w-100 " style =" font-size: 40px;font-family: 'PT Sans Narrow';color:#FFCC33;">Login</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body ">
                  <div class="input-group pt-2">
                     <input class="form-control mr-sm-2" type="search" placeholder="User id" style =" font-size: 35px;font-family: 'PT Sans Narrow';"aria-label="Search">
                  </div>
                  <div class="input-group pt-5">
                     <input class="form-control mr-sm-2" type="search" placeholder="Password" style =" font-size: 35px;font-family: 'PT Sans Narrow';"aria-label="Search">
                  </div>
                  <span class="pt-4 text-right" style =" font-size: 25px;font-family: 'PT Sans Narrow';">
                     <p> Not a member?
                        <a data-toggle="modal" style="color:#FFCC33;" href="#" onclick="a()"data-target="#signup">Register here</a>
                     </p>
                  </span>
               </div>
               <div class="modal-footer d-flex justify-content-center">
                  <button class="btn btn-light"><span style =" font-size: 25px;">Login</span></button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
               <div class="modal-header text-center">
                  <h4 class="modal-title w-100  " style =" font-size: 40px;font-family: 'PT Sans Narrow';color:#FFCC33;">Sign up</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body ">
                  <div class="input-group pt-2">
                     <input class="form-control mr-sm-2" type="search" placeholder="User id" style =" font-size: 35px;font-family: 'PT Sans Narrow';"aria-label="Search">
                  </div>
                  <div class="input-group pt-5">
                     <input class="form-control mr-sm-2" type="search" placeholder="Password" style =" font-size: 35px;font-family: 'PT Sans Narrow';"aria-label="Search">
                  </div>
                  <div class="input-group pt-5">
                     <input class="form-control mr-sm-2" type="search" placeholder="Reenter Password" style =" font-size: 35px;font-family: 'PT Sans Narrow';"aria-label="Search">
                  </div>
               </div>
               <div class="modal-footer d-flex justify-content-center">
                  <button class="btn btn-light"><span style =" font-size: 30px;font-family: 'PT Sans Narrow';">Register</span></button>
               </div>
            </div>
         </div>
      </div>
      <div class="container" >
         <div class="modal fade" id="enlargeImageModal" tabindex="-1" role="dialog" aria-labelledby="enlargeImageModal" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">Ã</span></button>
                  </div>
                  <div class="modal-body">
                     <img src="" class="enlargeImageModalSource" style="width: 100%;">
                  </div>
               </div>
            </div>
         </div>
         <nav class="navbar navbar-expand-lg  " style=" background-color: black">
            <a class="navbar-brand" href="#" style ="color:white; font-size: 45px;font-family: 'Just Another Hand';">PICASSO</a>
            <ul class="navbar-nav ml-auto" >
               <div class="input-group inpu">
                  <input class="form-control mr-sm-2 " type="search" placeholder="Search Restaurants..." style =" font-size: 20px;;"aria-label="Search">
                  <span class="input-group-btn"> <button type="submit" class="btn btn-outline-default"><i class="fa fa-search"></i></button>
                  </span>
               </div>
               <ul class="navbar-nav mr-auto">
                  <li class="nav-item">
                     <a class="nav-link " style ="color:white" href="#" data-toggle="modal" data-target="#login"><span  style =" font-size: 30px;font-family: 'Just Another Hand';">LOGIN</span></a>
                  <li class="nav-item">
                     <a class="nav-link" style ="color:white" style =" font-size: 40px;" href="#" data-toggle="modal" data-target="#signup"><span  style =" font-size: 30px;font-family: 'Just Another Hand';">SIGNUP</span></a>
                  </li>
               </ul>
            </ul>
         </nav>
	<% 
	System.out.println("hellothere");
	RestaurantDetails Object = new RestaurantDetails();
	
	List<ReviewDetails> Object1 = new ArrayList<>();
	
	String name2= request.getParameter("name");	
	String loc=request.getParameter("locality");
	System.out.println("restaurnrtname"+name2);
	System.out.println("restaurnrtloc"+loc);
	
	Object = Home.getAllDetailsbyname(name2);
	String id_r=Object.getRestaurantId();
        	
	Object1 = Home.getAllReviewsbyname(name2,id_r);
	
	String name = Object.getRestaurantName();
	String location = Object.getLocation();
	String menuLink = Object.getMenu();
	String cost = Object.getCost();
	String rating = Object.getRating();
	String phone = Object.getPhone();
	String cuisine = Object.getcuisine();
	String openhrs = Object.getopeninghrs();
	System.out.println("==================================");
	System.out.println(name);
	System.out.println(location);
	System.out.println(menuLink);
	System.out.println(cost);
	System.out.println(rating);
	System.out.println("==================================");
	// String location = name+","+locality+","+"Mumbai";
	String address ="https://maps.google.com/maps?q="+name+","+location+"&ie=UTF8&t=&z=17&iwloc=B&output=embed";
	address = "\"" + address+ "\"";
         out.print("<div class=\"row\" style=\"padding-top: 10px\" >");
            out.print("<div class=\"card border mb-3 container-fluid\" >");
            out.print("<div class=\"card-body\">");
                  out.print("<div >");
                     out.print("<h2  style=\"color:#FFCC33;float: left;font-weight: bold;\" >"+name+"</h2>");
                     out.print("<h2  style=\"float: right\"><span style=\"background-color:#FFCC33; color:white;\">"+((float)((int)(10*Float.parseFloat(rating))))/10+"</span></h2>");
                     out.print("</div>");
                     out.print("</div>");
              out.print("</div>");
              out.print("</div>");
              out.print("<div class=\"row\">");
                out.print("<div class=\"card border mb-3 container-fluid\" >");
               out.print("<div class=\"card-body \">");
                out.print("<div class=\"row\">");
                  out.print("<div class=\"col-4 \">");
                        out.print("<h4  style=\"color:#FFCC33\">Contact No</h4>");
                        out.print(phone);
                     out.print("</div>");
                     out.print("<div class=\"col-4 \">");
                        out.print("<h4 style=\"color:#FFCC33\">Location</h4>");
                        out.print(location);
                     out.print("</div>");
                     out.print("<div class=\"col-4 \">");
                        out.print("<h4 style=\"color:#FFCC33\">Cost Per person</h4>");
                        out.print("Rs"+cost);
                     out.print("</div>");
                  out.print("</div>");
                  out.print("<div class=\"row pt-3\">");
                     out.print("<div class=\"col-4 \">");
                        out.print("<h4 style=\"color:#FFCC33\">Opening hrs</h4>");
                        out.print(openhrs);
                        out.print("</div>");
                        out.print("<div class=\"col-4 \">");
                        out.print("<h4 style=\"color:#FFCC33\">Cuisines</h4>");
                        out.print(cuisine);
                        out.print("</div>");
                  out.print("</div>");
               out.print("</div>");
            out.print("</div>");
         out.print("</div>");
         out.print("<div class=\"row\">");
            out.print("<div class=\"card col-6 px-1\">");
               out.print("<div  class=\"card-header text-center\">");
              out.print("Location");
              out.print("</div>");
              String address1="https://maps.google.com/maps?q=" + name + ","+ location + "&ie=UTF8&t=&z=17&iwloc=B&output=embed" ;
              address1 = "\"" + address1 + "\"";
              out.print("<iframe class=\"card-img-top\" style=\"height:600px\" src="+address1+"></iframe>");
               out.print("<div class=\"card-body\">");
                  out.print("<p class=\"card-text\">"+location+"</p>");
               out.print("</div>");
            out.print("</div>");
            out.print("<div class=\"card col-6 px-1\" >");
              out.print("<div class=\"card-header text-center \">");
                  out.print("Menu");
               out.print("</div>");
               out.print("<img class=\"card-img-top\" id=\"menu\"  style=\"height:600px\" src=\"+menuLink+\" alt=\"Card image cap\">");
               out.print("<div class=\"card-body\">");
               out.print("</div>");
            out.print("</div>");
         out.print("</div>");
         out.print("<div class=\"row pt-3 second\" id=\"review\">");
         out.print("<div class=\"card col-6 pt-3 pb-3\">");
          out.print("<div class=\"rating-block\">");
            out.print("<h4 class=\"text-center\" style=\"color:#FFCC33\">Average user rating</h4>");
            out.print("<div style=\"display:inline\">");
                    out.print("<h2 class=\"bold padding-bottom-7 pt-5\" style=\"position: relative;left: 100px;\">"+((float)((int)(10*Float.parseFloat(rating))))/10+"<small>/ 5</small></h2>");
                    int x= (int)Float.parseFloat(rating);
                    x=x*20;
         
                    String y=String.valueOf(x);
                    System.out.println(y);
                    System.out.println("helo1234");
                    
                    out.print("<div style=\"float:right;position: relative;bottom: 65px;right: 100px\"class=\"c100 p"+x+"\">");
                      
                        out.print("<span>"+((float)((int)(10*Float.parseFloat(rating))))/10+"</span>");
                      
                        
                      
                      out.print("</div>");
                      
                 out.print("</div>");
                  out.print("</div>");
                  
            out.print("</div>");
            out.print("<div class=\"card col-6\" data-toggle=\"modal\" data-target=\"#login\">");
               out.print("<form action=\"\">");
                out.print("<div class=\"input-group inpu\" >");
                  out.print("<textarea class=\"form-control mr-sm-2 \"  placeholder=\"Write a Review...\" style =\" font-size: 18px ;height:200px\" disabled></textarea>");
                    
                  out.print("</div>");
                  out.print("<div style=\"display:inline\">");
                    out.print("<h4 class=\"pt-4\" >Rate:</h4>");
                    out.print("<div class=\"rating\">");
                      out.print("<input type=\"radio\" id=\"star5\" name=\"rating\" value=\"5\" / disabled><label for=\"star5\" >5 stars</label>");
                      out.print("<input type=\"radio\" id=\"star4\" name=\"rating\" value=\"4\" / disabled><label for=\"star4\" >4 stars</label>");
                      out.print("<input type=\"radio\" id=\"star3\" name=\"rating\" value=\"3\" / disabled><label for=\"star3\" >3 stars</label>");
                      out.print("<input type=\"radio\" id=\"star2\" name=\"rating\" value=\"2\" / disabled><label for=\"star2\" >2 stars</label>");
                      out.print("<input type=\"radio\" id=\"star1\" name=\"rating\" value=\"1\" / disabled><label for=\"star1\" >1 star</label>");
                      out.print("</div>");
                      out.print("<button style=\"float: right\" class=\"btn btn-light\" disabled>");
                      out.print("<h5>Submit</h5>");
                      out.print("</button>");
                      out.print("</div>");
                      out.print("</form>");
                      out.print("</div>");
                      out.print("</div>");
         out.print("<div class=\"row pt-3 \" >");
            
            out.print("<hr>");

            out.print("<div class=\"review-block card col-12\">");
              ///////////////////////////////////////   
              for (int ii=0; ii<Object1.size(); ii++){
                  
                  String u =Object1.get(ii).getUserId();
                  String pic =Object1.get(ii).getPic();
                 // String pic= "a.jpg";
                  String r =Object1.get(ii).getUserReview();
                  String ra =Object1.get(ii).getUserRating();
                  System.out.println(ra);
                  System.out.println("andar aa gaya");
                  int xx= (int)Float.parseFloat(ra);
                  
              
                out.print("<div class=\"row\">");
                  out.print("<div class=\"col-3\" >");
                     out.print("<figure class=\"figure\">");
                        out.print("<img src="+pic+"class=\"img-rounded im\">");
                        out.print("<figcaption class=\"figure-caption text-right\">"+u+"</figcaption>");
                     out.print("</figure>");
                  out.print("</div>");
                  out.print("<div class=\"col-9\">");
                     out.print("<div class=\"review-block-rate\">");
                        
                        for (int j=0;j<5;j++){
                          if(j<=xx) {
                        out.print("<button type=\"button\" class=\"btn btn-warning btn-xs\" aria-label=\"Left Align\">");
                        out.print("<span class=\"fa fa-star-o\" aria-hidden=\"true\"></span>");
                        out.print("</button>");}
                        else{
                          out.print("<button type=\"button\" class=\"btn btn-default btn-grey btn-xs\" aria-label=\"Left Align\">");
                              out.print("<span class=\"fa fa-star-o\" aria-hidden=\"true\"></span>");
                              out.print("</button>");
                        }
                        }
                        // out.print("<button type=\"button\" class=\"btn btn-warning btn-xs\" aria-label=\"Left Align\">");
                        // out.print("<span class=\"fa fa-star-o\" aria-hidden=\"true\"></span>");
                        // out.print("</button>");
                        // out.print("<button type=\"button\" class=\"btn btn-warning btn-xs\" aria-label=\"Left Align\">");
                        // out.print("<span class=\"fa fa-star-o\" aria-hidden=\"true\"></span>");
                        // out.print("</button>");
                        // 
                        // out.print("<button type=\"button\" class=\"btn btn-default btn-grey btn-xs\" aria-label=\"Left Align\">");
                        // out.print("<span class=\"fa fa-star-o\" aria-hidden=\"true\"></span>");
                        // out.print("</button>");
                     out.print("</div>");
                     out.print("<div class=\"review-block-description pt-3\">"+r+"</div>");
                  out.print("</div>");
               out.print("</div>");
                ///////////
              }
            out.print("</div>");
               
               
              
            out.print("</div>");
          
         out.print("</div>");
         %>

   </body>
</html>
