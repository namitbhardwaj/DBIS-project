<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 String user = request.getParameter("user"); 
 %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2> Add new Restaurant</h2>
<br>
<form method="post" action="AddRestaurant" id="form" >
  
		<div align="center">
		<table>
		<tr>
		<td><font size="5px">Id</font>  </td>
		<td><input type='text' name='id'> </td>
		</tr>
		
		<tr>
		<td><font size="5px">Name</font>  </td>
		<td><input type='text' name='name'> </td>
		</tr>

		<tr>
		<td><font size="5px">Locality</font>  </td>
		<td><input type='text' name='locality'> </td>
		</tr>

		<tr>
		<td><font size="5px">Address</font>  </td>
		<td><input type='text' name='address'> </td>
		</tr>

		<tr>
		<td><font size="5px">Menu Link</font>  </td>
		<td><input type='text' name='menu_link'> </td>
		</tr>
		
		<tr>
		<td><font size="5px">Phone Number</font>  </td>
		<td><input type='text' name='phone'> </td>
		</tr>

		<tr>
		<td><font size="5px">Cost per Person</font>  </td>
		<td><input type='text' name='cost'> </td>
		</tr>
	    <tr>
            <td>Portrait Photo: </td>
            <td><input type="file" name="photo" size="50"/></td>
        </tr>
		<tr></tr><tr></tr><tr></tr><tr></tr>
		<tr></tr><tr></tr><tr></tr><tr></tr>

		<tr>
		<td> <input type="submit" name="submit" id="submit" value="Submit" /> </td>
		<td> <input type="reset" name="reset" id="reset" value="Reset" /> </td>
		</tr> 	
	  <% out.print("<input type=\"hidden\" name=\"user\" value="+user+">");%>
			
		</table>	
		<br><br>


        </div>
		
</form>

</div>



</body>
</html>