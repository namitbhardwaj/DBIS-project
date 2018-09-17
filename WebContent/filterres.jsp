<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Home.Home"%>
<%@ page import="Home.RestaurantDetails"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%
String sloc=request.getParameter("sloc");
String rev=request.getParameter("rev");
String cpp=request.getParameter("cpp");
String cppfil=request.getParameter("cppfil");
String pop1=request.getParameter("pop1");
String cuis=request.getParameter("cuis");
//out.print("<h3>ashlulz</h3>");
//System.out.println(sloc);
//System.out.println(rev);
//System.out.println(cpp);
//System.out.println(cppfil);
//System.out.println(pop1);
//System.out.println(cuis);

String a=sloc;

List<RestaurantDetails> reslocal=new ArrayList<>();
reslocal=Home.getRestaurants(a);
String costpp1,costpp2;
if(cppfil!=""){
	 costpp1=cppfil.split("-")[0];
	 costpp2=cppfil.split("-")[1];
}
else{
	 costpp1="";
	 costpp2="";
}
reslocal=Home.filter(rev,pop1,cpp,cuis,costpp1,costpp2,sloc);

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
	out.print("<div class=\"row\" style=\"padding-top: 10px\" >");
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
	//out.print("<script>$(\"[data-toggle=popover]\").popover();</script>");
	out.print("       <button type=\"button\" class=\"btn btn-light btn-lg\"  data-toggle=\"modal\"  data-target=\"#enlargeImageModal\" data-whatever=\"data:image/jpeg;base64,"+resmenu+"\">Menu</button>");
	out.print("          </div>");
	out.print("            <div class=\"col-3\"></div>");
	out.print("          </div>");
	out.print("         </div>");
	out.print("       </div>");
	out.print("     </div>");
}   


  



%>