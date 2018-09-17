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
      
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"  crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"  crossorigin="anonymous"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="css/circle.css">
      	<link rel="stylesheet" type="text/css" href="css/jquery.autocomplete1.css" />
      
      	<script type="text/javascript" 
			src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
	
	
	<script src="js/jquery.autocomplete.js"></script>  
        
	<link rel="stylesheet" href="css/animate.css">
<script src="js/wow.min.js"></script>
      <script>
      new WOW().init();
      </script>
   </head>
   <style>
      body {
      font-family: 'Raleway';
      }
   </style>
  
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
                  <form action="locality.jsp" method="post" id="bksubmit">
                     <div class="modal-body ">
                        <div class="input-group pt-2">
                           <input class="form-control mr-sm-2 border-left-0 border-right-0 border-top-0" id="roll" name="roll" type="text"  placeholder="User id" style =" font-size: 35px;font-family: 'PT Sans Narrow'" required>
                        </div>
                        <div class="input-group pt-5">
                           <input class="form-control mr-sm-2 border-left-0 border-right-0 border-top-0" name="pwd" id="pwd" type="password" placeholder="Password"  style =" font-size: 35px;font-family: 'PT Sans Narrow'" required>
                        </div>
                        <span id="uloginres"  style =" font-size: 20px;font-family: 'PT Sans Narrow';"></span>
                        
                        <span class="pt-4 text-right" style =" font-size: 25px;font-family: 'PT Sans Narrow'">
                        <p> Not a member?
                           <a data-toggle="modal" style="color:#FFCC33;" href="#" onclick="a()"data-target="#signup">Register here</a>
                        </p>
                     </div>
                     <div class="modal-footer d-flex justify-content-center">
                        <button class="btn btn-light" type="button" onclick="senduloginInfo()"><span style =" font-size: 30px;font-family: 'PT Sans Narrow';">Login</span></button>
                     </div>
                  </form>
               </div>
            </div>
         </div>
         <div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
               <div class="modal-content">
                  <div class="modal-header text-center">
                     <h4 class="modal-title w-100 " style =" font-size: 40px;font-family: 'PT Sans Narrow';color:#FFCC33;">Sign up</h4>
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                     </button>
                  </div>
                  <form action="Register" method="post" enctype="multipart/form-data" >
                     <div class="modal-body ">
                        <div class="form-group pt-2">
                           <input class="form-control mr-sm-2 border-left-0 border-right-0 border-top-0" title="Your user name must be at least six characters long." name="newroll" type="text" placeholder="User id" style =" font-size: 35px;font-family: 'PT Sans Narrow'" 
                              required pattern=".{6,}" onchange="
                              this.setCustomValidity(this.validity.patternMismatch ? this.title : '');" onblur="sendInfo()" id="newroll">
                                          
                        </div>
                                                      <span id="amit" style =" font-size: 20px;font-family: 'PT Sans Narrow';" ></span>
                        
                        <div class="form-group pt-4">
                           <input class="form-control mr-sm-2 border-left-0 border-right-0 border-top-0" name="newpwd" title="Password must contain at least 6 characters, including UPPER/lowercase and numbers" type="password" placeholder="Password" style =" font-size: 35px;font-family: 'PT Sans Narrow'" 
                              required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onchange="
                              this.setCustomValidity(this.validity.patternMismatch ? this.title : '');
                              if(this.checkValidity()) form.pswd2.pattern = RegExp.escape(this.value);">
                        </div>
                        <div class="form-group pt-4">
                           <input class="form-control mr-sm-2 border-left-0 border-right-0 border-top-0" name="pswd2" type="password" title="Please enter the same Password as above" placeholder="Reenter Password" style =" font-size: 35px;font-family: 'PT Sans Narrow'" 
                              required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onchange="
                              this.setCustomValidity(this.validity.patternMismatch ? this.title : '');
                              ">
                        </div>
                        <div class="form-group pt-4">
                           <input class="form-control mr-sm-2 border-left-0 border-right-0 border-top-0" title="Your Contact No must contain 10 digits" name="newcontact" type="text" placeholder="Contact" style =" font-size: 35px;font-family: 'PT Sans Narrow'" 
                              required pattern="([0-9]).{9}" onchange="
                              this.setCustomValidity(this.validity.patternMismatch ? this.title : '');">
                        </div>
                        <h3 class="pt-4" style="font-family: 'PT Sans Narrow';padding-left:5px;color:#FFCC33;">Upload Photo</h3>
                        <div class="pt-2" >
                           <div >
                              <input  style="font-size:25px;font-family: 'PT Sans Narrow';" type="file" name="newpic" >
                           </div>
                        </div>
                     </div>
                     <div class="modal-footer d-flex justify-content-center">
                        <button class="btn btn-light"><span style =" font-size: 30px;font-family: 'PT Sans Narrow'">Register</span></button>
                     </div>
                  </form>
               </div>
            </div>
         </div>
         <script type="text/javascript">
            // polyfill for RegExp.escape
            if(!RegExp.escape) {
              RegExp.escape = function(s) {
                return String(s).replace(/[\\^$*+?.()|[\]{}]/g, '\\$&');
              };
            }
            
         </script>
          <div class="modal fade" id="enlargeImageModal" tabindex="-1" role="dialog" aria-labelledby="enlargeImageModal" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                  </div>
                  <div class="modal-body">
                     <img src="" class="enlargeImageModalSource" style="width: 100%;">
                  </div>
               </div>
            </div>
         </div>
      <div class="container" >
        
         <nav class="navbar navbar-expand-lg  " style=" background-color: black">
            <a class="navbar-brand" href="#" style ="color:white; font-size: 45px;font-family: 'Just Another Hand';">PICASSO</a>
            <ul class="navbar-nav ml-auto" >
            	<form action="restaurantdetail_baki.jsp" method="post">
               <div class="input-group inpu">
                  <input class="form-control mr-sm-2 " type="search" id="country" name="country" placeholder="Search Restaurants..." style =" font-size: 20px;;"aria-label="Search">
                  <span class="input-group-btn"> <button type="submit" class="btn btn-outline-default"><i class="fa fa-search"></i></button>
                  </span>
               </div>
               </form>
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
	
	String name2= request.getParameter("country");
	String array1[] = name2.split(":");
	name2=array1[0];
	String local1=array1[1];
	System.out.print("!!!!!!!!!!!!!!!!!!");
	System.out.print("<h3>"+name2+"</h3>");
	System.out.print("<h3>"+local1+"</h3>");
	System.out.print("!!!!!!!!!!!!!!!!!!");
	System.out.println("restaurnrtname"+name2);
	
	Object = Home.getAllDetailsbyname(name2);
	String id_r=Object.getRestaurantId();
        	
	Object1 = Home.getAllReviewsbyname(name2,id_r);
	
	String name = Object.getRestaurantName();
	String location = Object.getLocation();
	String menuLink = Object.getpic();
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
         out.print("<div class=\"row wow fadeInUp animated\" data-wow-delay=\"0.5s\" style=\"padding-top: 10px\" >");
            out.print("<div class=\"card border mb-3 container-fluid\" >");
            out.print("<div class=\"card-body\">");
                  out.print("<div class=\"row\">");
                  out.print("<div class=\"col-10\">");
                     out.print("<h2  style=\"color:#FFCC33;float: left;font-weight: bold;\" >"+name+"</h2>");
                     out.print("</div>");
                     out.print("<div class=\"col-2\" align=\"center\">");
                     out.print("<h2 >"+((float)((int)(10*Float.parseFloat(rating))))/10+"<small>/ 5</small></h2>");
                    
                     out.print("</div>");
                     out.print("</div>");
                     out.print("</div>");
              out.print("</div>");
              out.print("</div>");
              out.print("<div class=\"row wow fadeInUp animated\" data-wow-delay=\"0.5s\">");
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
         out.print("<div class=\"row wow fadeInUp animated\" data-wow-delay=\"0.5s\">");
            out.print("<div class=\"card col-6 px-1 border-0\" align=\"center\">");
               out.print("<div  class=\"card-header text-center\" style=\"background-color:white;font-size:20px\">");
              out.print("Location");
              out.print("</div>");
              String address1="https://maps.google.com/maps?q=" + name + ","+ location + "&ie=UTF8&t=&z=17&iwloc=B&output=embed" ;
              address1 = "\"" + address1 + "\"";
              out.print("<iframe class=\"card-img-top\" style=\"height:600px\" src="+address1+"></iframe>");
               out.print("<div class=\"card-body\">");
                  out.print("<p class=\"card-text\">"+location+"</p>");
               out.print("</div>");
            out.print("</div>");
            out.print("<div class=\"card col-6 px-1 border-0\"  align=\"center\" >");
              out.print("<div class=\"card-header text-center border-0\" style=\"background-color:white;font-size:20px\">");
                  out.print("Menu");
               out.print("</div>");
               out.print("<img class=\"card-img-top\" id=\"menu\"   style=\"height:600px\" src=\"data:image/jpeg;base64,"+menuLink+"\" alt=\"\">");
               out.print("<div class=\"card-body\">");
               out.print("</div>");
            out.print("</div>");
         out.print("</div>");
         out.print("<div class=\"row pt-3 second \" id=\"review\">");
         out.print("<div class=\"card col-6 pt-3 pb-3 border-0 wow fadeInLeft animated\" data-wow-delay=\"0.5s\">");
          out.print("<div class=\"rating-block\"style=\"background-color:white;\">");
            out.print("<h3 class=\"text-center\" style=\"position:relative;bottom:25px;color:#FFCC33\">Average user rating</h3>");
                    int x= (int)Float.parseFloat(rating);
                    x=x*20;
         
                    String y=String.valueOf(x);
                    System.out.println(y);
                    System.out.println("helo1234");
                    
                    out.print("<div style=\"float:right;position: relative;right: 180px;top:20px\"class=\"c100 p"+x+"\">");
                      
                        out.print("<span>"+((float)((int)(10*Float.parseFloat(rating))))/10+"</span>");
                      
                       out.print("<div class=\"slice\"><div class=\"bar\"></div><div class=\"fill\">"+"</div></div>");
                      
                      out.print("</div>");
                      
                 out.print("</div>");
                  out.print("</div>");
                  
           
            out.print("<div class=\"card col-6 border-0 wow fadeInRight animated\" data-wow-delay=\"0.5s\" data-toggle=\"modal\" data-target=\"#login\">");
               out.print("<form action=\"\">");
                out.print("<div class=\"input-group inpu\" >");
                  out.print("<textarea class=\"form-control mr-sm-2 \"  placeholder=\"Write a Review...\" style =\" font-size: 18px ;height:150px\" disabled></textarea>");
                    
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
         out.print("<div class=\"row pt-3 wow fadeInUp animated\" data-wow-delay=\"0.2s\" >");
            
            out.print("<hr/>");

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
                        out.print("<img src=\"data:image/jpeg;base64,"+pic+"\" class=\"rounded-circle\" width=\"200\" height=\"200\">");
                        out.print("<figcaption class=\"figure-caption text-center\">"+u+"</figcaption>");
                     out.print("</figure>");
                  out.print("</div>");
                  out.print("<div class=\"col-9\">");
                     out.print("<div class=\"review-block-rate\">");
                        
                        for (int j=0;j<5;j++){
                          if(j<=xx) {
                        out.print("<button type=\"button\" class=\"btn btn-warning btn-xs ml-1\" aria-label=\"Left Align\">");
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
          
         
         %>
         </div>
         <script>
        

	var request;
	var op2;
	var op3;
	function sendInfo(){
		var v=document.getElementById("newroll").value;
		var url="index.jsp?val="+v;
		
		if(window.XMLHttpRequest){
			request=new XMLHttpRequest();
		}
		else if(window.ActiveXObject){
			request=new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		try{
			request.onreadystatechange=getInfo;
			request.open("GET",url,true);
			request.send();
		}
		catch(e){
		alert("Unable to connect to server");
		}
	}
	
	function getInfo(){
		//	alert("hello");
		if(request.readyState==4){
		var val=request.responseText;
			document.getElementById("amit").style.color = "red";
			document.getElementById('amit').innerHTML=val;

		}
	}
	
	function senduloginInfo(){
		//alert("hey");
		var v=document.getElementById("roll").value;
		var pp=document.getElementById("pwd").value;
		//alert(v);
		//alert(pp);
		var url="credCheck.jsp?val="+v+"&pass="+pp;
		//alert(url);
		if(window.XMLHttpRequest){
			op2=new XMLHttpRequest();
		}
		else if(window.ActiveXObject){
			op2=new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		try{
			op2.onreadystatechange=getuloginInfo;
			op2.open("GET",url,true);
			op2.send();
		}
		catch(e){
		alert("Unable to connect to server");
		}
	}
	
	function getuloginInfo(){
		if(op2.readyState==4){
		var val=op2.responseText;
		var yyy="a";
		var re = new RegExp(yyy, 'g');
		if(val.match(re)!="a"){
			document.getElementById("uloginres").style.color = "red";
			document.getElementById('uloginres').innerHTML="Invalid Username/Password";
		}
		else{
			document.getElementById('bksubmit').submit();
		}
		}
	}

	$("#country").autocomplete("getdata.jsp");
     
</script>


   </body>
</html>
