<%@ page import="java.sql.*"%>

<%
String s=request.getParameter("val");
if(s==null || s.trim().equals("")){
out.print("Please enter the username");
}
else{
try{
	Class.forName("org.postgresql.Driver");
	String dbURL = "jdbc:postgresql://localhost/cs387";
	String dbUser = "dbuser";
	String dbPass = "123456";
	Connection con=null;
	con= DriverManager.getConnection(dbURL, dbUser, dbPass);
	PreparedStatement ps=con.prepareStatement("select user_id from account where user_id=?");
	//out.print(s);
	ps.setString(1,s);
	ResultSet rs=ps.executeQuery();
	int i=0;
	while(rs.next()){
		out.print("Username already exists, try again");
	}
	con.close();
	}catch(Exception e){e.printStackTrace();}
}
%>