package servlets;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Home.Home;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
/**
 * Servlet implementation class addRestaurant
 */
@WebServlet("/AddRestaurant")
public class AddRestaurant extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddRestaurant() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  InputStream inputStream = null; // input stream of the upload file

		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String location = request.getParameter("address");
		String menuLink = request.getParameter("menu_link");
		String phone = request.getParameter("phone");
		String cost = request.getParameter("cost");
		String user = request.getParameter("user");
		System.out.println("------------------------"+user+"----------------");
		String locality = request.getParameter("locality");
		Part filePart = request.getPart("photo");
		if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
		
		Home.addRestaurantDetails(id,name,location,menuLink,phone,cost);
		Home.addRestaurant(id, locality,user);
		
		System.out.println("restaurant added");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.html");
		dispatcher.forward(request, response);

		
		
	}

}
