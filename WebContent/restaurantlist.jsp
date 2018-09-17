<%@ page import="java.util.*"%>
<%@ page import="Home.Home"%>
<%@ page import="Home.RestaurantDetails"%>

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
   
   <% 
   String s=request.getParameter("locality");
   out.print("<h3>"+s+"</h3>");
   %>
      <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
               <div class="modal-header text-center">
                  <h4 class="modal-title w-100 " style =" font-size: 40px;font-family: 'PT Sans Narrow';color:#FFCC33;">Login</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <form action="result.jsp" method="post">
                  <div class="modal-body ">
                     <div class="input-group pt-2">
                        <input class="form-control mr-sm-2" name="roll" type="text" placeholder="User id" style =" font-size: 35px;font-family: 'PT Sans Narrow'" required>
                     </div>
                     <div class="input-group pt-5">
                        <input class="form-control mr-sm-2" name="pwd"  type="password" placeholder="Password" style =" font-size: 35px;font-family: 'PT Sans Narrow'" required>
                     </div>
                     <span class="pt-4 text-right" style =" font-size: 25px;font-family: 'PT Sans Narrow'">
                     <p> Not a member?
                        <a data-toggle="modal" style="color:#FFCC33;" href="#" onclick="a()"data-target="#signup">Register here</a>
                     </p>
                  </div>
                  <div class="modal-footer d-flex justify-content-center">
                     <button class="btn btn-light" type="submit"><span style =" font-size: 30px;font-family: 'PT Sans Narrow';">Login</span></button>
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
                     <div class="input-group pt-2">
                        <input class="form-control mr-sm-2" title="Your user name must be at least six characters long." name="newroll" type="text" placeholder="User id" style =" font-size: 35px;font-family: 'PT Sans Narrow'" 
                           required pattern=".{6,}" onchange="
                           this.setCustomValidity(this.validity.patternMismatch ? this.title : '');">
                     </div>
                     <div class="input-group pt-4">
                        <input class="form-control mr-sm-2" name="newpwd" title="Password must contain at least 6 characters, including UPPER/lowercase and numbers" type="password" placeholder="Password" style =" font-size: 35px;font-family: 'PT Sans Narrow'" 
                           required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onchange="
                           this.setCustomValidity(this.validity.patternMismatch ? this.title : '');
                           if(this.checkValidity()) form.pswd2.pattern = RegExp.escape(this.value);">
                     </div>
                     <div class="input-group pt-4">
                        <input class="form-control mr-sm-2" name="pswd2" type="password" title="Please enter the same Password as above" placeholder="Reenter Password" style =" font-size: 35px;font-family: 'PT Sans Narrow'" 
                           required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onchange="
                           this.setCustomValidity(this.validity.patternMismatch ? this.title : '');
                           ">
                     </div>
                     <div class="input-group pt-4">
                        <input class="form-control mr-sm-2" title="Your Contact No must contain 10 digits" name="newcontact" type="text" placeholder="Contact" style =" font-size: 35px;font-family: 'PT Sans Narrow'" 
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
               <div class="modal-header text-center">
                  <h5 class="modal-title " style="padding-left:350px">MENU</h5>
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
         <div class="row">
            <div class="col-4 fadeInLeftBig animated" >
               <div class="row" style="padding-top: 10px;padding-right: 10px;">
                  <div class="card border mb-3 container-fluid" >
                     <div class="card-body ">
                        <div class="row ">
                           <span style="margin-left:130px">FILTERS</span>
                        </div>
                        <hr>
                        <div class="row ">
                           SORT BY
                        </div>
                        <form action="x.jsp" method="post">
                     
                        <div class="custom-control custom-checkbox">
                           <input type="checkbox" class="custom-control-input" id="rate" value="h2l">
                           <label class="custom-control-label" for="rate">Review-High to Low</label>
                        </div>
                        <div class="custom-control custom-checkbox ">
                           <input type="checkbox" class="custom-control-input" id="pop" value="h2l" >
                           <label class="custom-control-label" for="pop" >Popularity-High to Low</label>
                        </div>
                        <div class="custom-control custom-radio">
                           <input type="radio" id="cpph" name="cpp" class="custom-control-input" value="h2l">
                           <label class="custom-control-label" for="cpph">Cost per person-High to Low</label>
                        </div>
                        <div class="custom-control custom-radio">
                           <input type="radio" id="cppl" name="cpp" class="custom-control-input" value="l2h">
                           <label class="custom-control-label" for="cppl">Cost per person-Low to High</label>
                        </div>
                        <hr>
                        <div class="row ">
                           <span>CUISINES</span>
                        </div>
                        <div class="custom-control custom-radio">
                           <input type="radio" class="custom-control-input" id="chi" value="Chinese" name="cuis">
                           <label class="custom-control-label" for="chi">Chinese</label>
                        </div>
                        <div class="custom-control custom-radio">
                           <input type="radio" class="custom-control-input" id="ita" value="Italian" name="cuis">
                           <label class="custom-control-label" for="ita">Italian</label>
                        </div>
                        <div class="custom-control custom-radio">
                           <input type="radio" class="custom-control-input" id="con" value="Continental" name="cuis">
                           <label class="custom-control-label" for="con">Continental</label>
                        </div>
                        <div class="custom-control custom-radio">
                           <input type="radio" class="custom-control-input" id="nor" value="North Indian" name="cuis">
                           <label class="custom-control-label" for="nor">North Indian</label>
                        </div>
                        <div class="custom-control custom-radio">
                           <input type="radio" class="custom-control-input" id="sou" value="South Indian" name="cuis">
                           <label class="custom-control-label" for="sou">South Indian</label>
                        </div>
                        <div class="custom-control custom-radio">
                           <input type="radio" class="custom-control-input" id="th" value="Thai" name="cuis">
                           <label class="custom-control-label" for="th">Thai</label>
                        </div>
                        <div class="custom-control custom-radio">
                           <input type="radio" class="custom-control-input" id="fas" value="Fast Food" name="cuis">
                           <label class="custom-control-label" for="fas">Fast Food</label>
                        </div>
                        <div class="custom-control custom-radio">
                           <input type="radio" class="custom-control-input" id="cafe" value="Cafe" name="cuis">
                           <label class="custom-control-label" for="cafe">Cafe</label>
                        </div>
                        <div class="custom-control custom-radio">
                           <input type="radio" class="custom-control-input" id="des" value="Dessert" name="cuis">
                           <label class="custom-control-label" for="des">Dessert</label>
                        </div>
                        <hr>
                        <div class="row ">
                           COST PER PERSON
                        </div>
                        <div class="custom-control custom-radio" >
                           <input type="radio" id="a" class="custom-control-input" name="cppfil" value="0-100">
                           <label class="custom-control-label" for="a">Less than <i class="fa fa-inr" aria-hidden="true"></i>100</label>
                        </div>
                        <div class="custom-control custom-radio" >
                           <input type="radio" id="b" class="custom-control-input" name="cppfil" value="100-200">
                           <label class="custom-control-label" for="b"><i class="fa fa-inr" aria-hidden="true"></i>100-<i class="fa fa-inr" aria-hidden="true"></i>200</label>
                        </div>
                        <div class="custom-control custom-radio " >
                           <input type="radio" id="c" class="custom-control-input" name="cppfil" value="200-300">
                           <label class="custom-control-label" for="c" ><i class="fa fa-inr" aria-hidden="true"></i>200-<i class="fa fa-inr" aria-hidden="true"></i>300</label>
                        </div>
                        <div class="custom-control custom-radio " >
                           <input type="radio" id="d" class="custom-control-input" name="cppfil" value="300-400">
                           <label class="custom-control-label" for="d" ><i class="fa fa-inr" aria-hidden="true"></i>300-<i class="fa fa-inr" aria-hidden="true"></i>400</label>
                        </div>
                        <div class="custom-control custom-radio " >
                           <input type="radio" id="e" class="custom-control-input" name="cppfil" value="400-500">
                           <label class="custom-control-label" for="e" ><i class="fa fa-inr" aria-hidden="true"></i>400-<i class="fa fa-inr" aria-hidden="true"></i>500</label>
                        </div>
                        <div class="custom-control custom-radio " >
                           <input type="radio" id="f" class="custom-control-input" name="cppfil" value="500-40000">
                           <label class="custom-control-label" for="f" >>=<i class="fa fa-inr" aria-hidden="true"></i>500</label>
                        </div>
                        <div class="row">
                           <div class="col-3"></div>
                           <div class="col-6">
                              <button type="button" class="btn btn-light " onclick="sendFilInfo()">APPLY FILTERS</button>
                           </div>
                           <div class="col-3"></div>
                        </div>
                           <%             
    					String s1=request.getParameter("locality"); 
                        out.print("<input type=\"hidden\" name=\"locality1\" id=\"locality1\" value="+s1);%>
                       </form>
                     </div>
                  </div>
               </div>
            </div>
            
            <div class="col-8" id="gghogya">
<%             
    	String a=request.getParameter("locality");
        List<RestaurantDetails> reslocal=new ArrayList<>();
        reslocal=Home.getRestaurants(a);
        for(int i=0;i<reslocal.size();i++){//reslocal.size()
        	RestaurantDetails r1=reslocal.get(i);
        	String resname=r1.getRestaurantName();
        	String resloc=r1.getLocation();
        	String resmenu=r1.getpic();
        	String resphone=r1.getPhone();
        	String rescuisine=r1.getcuisine();
        	String resoh=r1.getopeninghrs();
        	String resvotes=r1.getVotes();
        	String resRating=r1.getRating();
        	String resCost=r1.getCost();
        	resCost="Rs. "+resCost.substring(1);
			out.print("<div class=\"row wow fadeInUp animated\" data-wow-delay=\"0.5s\" style=\"padding-top: 10px\"  >");
			out.print("<div class=\"card border mb-3 container-fluid\" >");
			out.print("          <div class=\"card-body \">");
			out.print("     <div class=\"row\"  >");
			out.print("<div class=\"col-9\">");
			out.print("          <a  href=\"restaurantdetail1.jsp?locality="+a+"&name="+resname+"\" style=\"color:#FFCC33;font-weight: bold;font-size:24px\" >"+resname+"</a><br>");
			out.print(resloc);
			out.print("       </div>");
			out.print("      <div class=\"col-3\" >");
            out.print("<figure class=\"figure\" style=\"float:right\">");

			out.print("         <h2  style=\"float: right;margin-right: 10px;\" ><span style=\"background-color:#FFCC33; color:white;\">"+resRating+"</span></h2>");
            out.print("<figcaption class=\"figure-caption text-center\">"+resvotes+" Votes</figcaption></figure>");

			out.print("      </div>");
			out.print("    </div>");
			out.print("     <hr>");
			out.print("     <div class=\"row\">");
			out.print("        <div class=\"col-4\">");
			out.print("          <h5 style=\"color:#FFCC33\">Cuisines</h5>");
			out.print(rescuisine);
			out.print("       </div>");
			out.print("      <div class=\"col-4\" >");
			out.print("      <h5 style=\"color:#FFCC33\">Opening hrs</h5>");
			out.print(resoh);
			out.print("   </div>		");		
			out.print(" <div class=\"col-4\" >");
                 out.print("   <h5 style=\"color:#FFCC33\">Cost perperson</h5>");
                out.print(resCost);
			out.print("     </div>");
			out.print("            </div>");
			out.print("   <div class=\"row pt-2\">");
			out.print("     <div class=\"col-3\"></div>");
			out.print("     <div class=\"col-6\">");
			out.print("       <button type=\"button\" class=\"btn btn-light btn-lg pop\" data-toggle=\"popover\" data-placement=\"left\"   data-content=\""+resphone+"\">Contact</button>");
			out.print("       <button type=\"button\" class=\"btn btn-light btn-lg\"  data-toggle=\"modal\"  data-target=\"#enlargeImageModal\" data-whatever=\"data:image/jpeg;base64,"+resmenu+"\">Menu</button>");
			out.print("          </div>");
			out.print("            <div class=\"col-3\"></div>");
			out.print("          </div>");
			out.print("         </div>");
			out.print("       </div>");
			out.print("     </div>");
        }   
%>
            </div>
         </div>
      </div>
      <script>
         function a(){
             $('#login').modal('toggle');
         }
      
         $('#enlargeImageModal').on('show.bs.modal', function (event) {
          $('.pop').popover('hide');
           var button = $(event.relatedTarget) ;
           var recipient = button.data('whatever') ;
           var modal = $(this)
           $('.enlargeImageModalSource').attr('src', recipient);
         });
       
         $("[data-toggle=popover]").popover();
         //$('#cpp').iCheck('uncheck');
         var fil;
         function sendFilInfo(){
        	// alert("hello");
	         var sloc=document.getElementById("locality1").value;
	         
	         var revob=document.getElementById("rate");
	         var rev;
	         if(revob.checked==true){
	        	 rev="h2l";
	         }
	         else{
	        	 rev="";
	         }
	         var popob=document.getElementById("pop");
	         var pop1;
	         if(popob.checked==true){
	        	 pop1="h2l";
	         }
	         else{
	        	 pop1="";
	         }
	         var cpp=$('input[name=cpp]:checked').val();
	         if(typeof cpp=="undefined"){
	        	 cpp="";
	         }
	         var cost=$('input[name=cppfil]:checked').val();
	         if(typeof cost=="undefined"){
	        	 cost="";
	         }
	         var cuis=$('input[name=cuis]:checked').val();
	         if(typeof cuis=="undefined"){
	        	 cuis="";
	         }
	         var cppfil=$('input[name=cppfil]:checked').val();
	         if(typeof cppfil=="undefined"){
	        	 cppfil="";
	         }
	       //alert(cpp);
	        // alert(cuis);
	        // alert(cost);
	         //var url="filterres.jsp?sloc="+sloc+"&rev="+rev+"&cpp="+cpp+"&cuis="+cuis+"&cppfil="+cppfil+"&pop1="+pop1;
			var url="filterres.jsp?sloc="+sloc+"&rev="+rev+"&pop1="+pop1+"&cpp="+cpp+"&cuis="+cuis+"&cppfil="+cppfil;
	         //alert(url);
	         if(window.XMLHttpRequest){
	        	 fil=new XMLHttpRequest();
	         }
	         else if(window.ActiveXObject){
	         	fil=new ActiveXObject("Microsoft.XMLHTTP");
	         }
	
	         try
	         {
	        	 //alert(url);
		         fil.onreadystatechange=getfilInfo;
		         fil.open("GET",url,true);
		         fil.send();
	         }
	         catch(e)
	         {
	         	alert("Unable to connect to server");
	         }
         }
		
         function getfilInfo(){
        	 //alert("aa gya");
	         if(fil.readyState==4){
		         var val=fil.responseText;
		   		alert(val);
		         $("[data-toggle=popover]").popover();

		   		$('#gghogya').html(val);
	         	//document.getElementById('col-8').innerHTML=val;
    	     }
         }

         
      </script>
      
 
   </body>
</html>