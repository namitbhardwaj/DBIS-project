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
	<link rel="stylesheet" type="text/css" href="css/jquery.autocomplete1.css" />
	<script type="text/javascript" 
			src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
	<script src="js/jquery.autocomplete.js"></script>  
   
   </head>
   <style>
      body {
      font-family: 'Just Another Hand';
      }
   </style>
   <body>
      <div  >
         <!-- Modal -->
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
         <nav class="navbar navbar-expand-lg  navbar-light  " style=" background-color: black">
            <a class="navbar-brand" href="#" style ="color:white; font-size: 45px;">PICASSO</a>
            <ul class="navbar-nav ml-auto" >
               
               
                <form action="restaurantdetail_baki.jsp" method="post">
                <div class="input-group" style="padding-top:8px">
                  <input class="form-control mr-sm-2" id="country" name="country" type="search" placeholder="Search Restaurants..." style =" font-size: 20px;font-family: 'Raleway'"aria-label="Search">
                  <span class="input-group-btn"> <button type="submit" class="btn btn-outline-default"><i class="fa fa-search"></i></button>
                  
                  </span>
                  </div>
                   </form>
               
               <ul class="navbar-nav mr-auto">
                  <li class="nav-item">
                     <a class="nav-link " style ="color:white" href="#" data-toggle="modal" data-target="#login"><span  style =" font-size: 30px;">LOGIN</span></a>
                  <li class="nav-item">
                     <a class="nav-link" style ="color:white" style =" font-size: 40px;" href="#" data-toggle="modal" data-target="#signup"><span  style =" font-size: 30px;">SIGNUP</span></a>
                  </li>
               </ul>
            </ul>
         </nav>
         <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" data-interval="2000">
            <div class="carousel-inner">
               <div class="hero">
                  <div >
                     <p style ="font-size: 100px;">Picasso</p>
                     <p style ="font-size: 50px;">Search and review Restaurants</p>
                     <button class="btn btn-outline-light  locate" >
                        <p style ="font-size: 40px;">Locate Restaurants near me</p>
                     </button>
                  </div>
               </div>
               <div class="carousel-item active">
                  <img class="d-block w-100" src="images/ashu1-03.jpeg" alt="First slide">
               </div>
               <div class="carousel-item">
                  <img class="d-block w-100" src="images/ashu3-01.jpeg" alt="Second slide">
               </div>
               <div class="carousel-item">
                  <img class="d-block w-100" src="images/ashu8-02.jpeg" alt="Third slide">
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
      </div>
<script>

	function a(){
		$('#login').modal('toggle');
	}
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
		//alert(val);
		var yyy="a";
		var y2="b";
		var re = new RegExp(yyy, 'g');
		var re2 = new RegExp(y2, 'g');
		if(val.match(re)!="a"){
			if(val.match(re2)=="b"){
				document.getElementById('bksubmit').action="admin.jsp";
				document.getElementById('bksubmit').submit();
			}
			else{
				document.getElementById("uloginres").style.color = "red";
				document.getElementById('uloginres').innerHTML="Invalid Username/Password";
			}
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