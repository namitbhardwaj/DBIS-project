<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="servlets.DummyDB"%>
<%@page import="servlets.DummyDB.*"%>
<%
	DummyDB db = new DummyDB();

	String query = request.getParameter("q");
	System.out.println(query);	
	System.out.println("query");	
	List<String> countries = db.getData(query);
	
	Iterator<String> iterator = countries.iterator();
	//System.out.println("hell0");
	while(iterator.hasNext()) {
		String country = (String)iterator.next();
		out.println(country);
	}
%>

