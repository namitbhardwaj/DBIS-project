<%@ page import="java.util.*"%>
<%@ page import="Home.Home"%>
<%@ page import="Home.RestaurantDetails"%>
<%@ page import="Home.ReviewDetails"%>
<%@ page import="Home.Userdetails"%>
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
            <a href="#">View Users</a>
          </div>
          <div class="row" style="padding-top: 10px ;font-size: 20px;font-family: 'Raleway'" >
                <div class="card border mb-3 container-fluid" >
                   <div class="card-body ">
                      <div class="row " style="padding-left:450px">
                         <h1  style="color:#FFCC33;"  >USERS</h1>
                      </div>
                      <hr>
                      <div class="form-group">
                          <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name"class="form-control">
                        </div>
                      <table id="user" class="table table-hover" >
                            <thead>
                              <tr align="center">
                                <th scope="col">Photo</th>
                                <th scope="col">User name</th>
                                <th scope="col">Contact</th>
                                <th scope="col"></th>
                              </tr>
                            </thead>
                            <tbody>
                         <%   
								List<Userdetails> user_list= Home.getallusers();
								
								for(int i=0; i< user_list.size(); i++){
                                out.print("<tr align=\"center\">");                   
							    Userdetails u=user_list.get(i);
								String user_name=u.getUser();
								String contact=u.getUserContact();
								String image=u.getPic(); 
                                out.print("<td><img class=\"rounded-circle\" src='data:image/jpeg;base64," + image + "'width=\"100\" height=\"100\"></td>");
                                out.print("<td>"+user_name+"</td>");
                                out.print("<td>"+contact+"</td>");
                                out.print("<td><button  onclick=\"del(this.id)\"id="+user_name+" type=\"button\" class=\"btn btn-light btn-lg\">Delete</button></td>");
								//out.print("<h3>"+this.id+"</h3>");
                                out.print("</tr>");
								}
                              
                           %>
                            </tbody>
                          </table>
                   </div>
                </div>
             </div>

    
     </div>
      <script>
          function myFunction() {
             
                var input, filter, table, tr, td, i;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("user");
                
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                    
                    td = tr[i].getElementsByTagName("td")[1];
                

                    if (td) {
                       // alert(td.innerHTML.toUpperCase().indexOf(filter));
                
                    if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                        ///tr[i].style.display = "";
                    } else {
                        //alert("ahsu");
                        tr[i].style.display = "none";
                    }
                    }       
                }
            }
          function del(id){
              alert(id);
        	var request;
          	var url="index2.jsp?val="+id;
        	alert(url);
        	
        	if(window.XMLHttpRequest){
        		request=new XMLHttpRequest();
        	}
        	else if(window.ActiveXObject){
        		request=new ActiveXObject("Microsoft.XMLHTTP");
        	}
        	
        	try{
        		request.onreadystatechange=getInfo1;
        		request.open("GET",url,true);
        		request.send();
        	}
        	catch(e){
        	alert("Unable to connect to server");
        	}
          }
          $('table').on('click', 'button[type="button"]', function(e){
            $(this).closest('tr').remove()
            });
          function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}
          function getInfo1() {
        	 
        	}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}

      </script>
   </body>
</html>