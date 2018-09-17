package Home;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Home {

	static Connection getConnection() {
		String dbURL = "jdbc:postgresql://localhost/cs387";
		String dbUser = "dbuser";
		String dbPass = "123456";
		Connection connection=null;
		try {
			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection(dbURL, dbUser, dbPass);
		} catch(ClassNotFoundException cnfe){
			System.out.println("JDBC Driver not found");
		} catch(SQLException sqle){
			System.out.println("Error in getting connetcion from the database");
		}

		return connection;
	}

	static void closeConnection(Connection connection) {
		try{
			connection.close();
		} catch(SQLException sqle) {
			System.out.println("Error in close database connetcion");
		}
	}

	public static List<String> getLocalities(){

		List<String> localitiesList = new ArrayList<String>();

		Connection connection=null;

		try{
			connection=getConnection();
			PreparedStatement pstmt= connection.prepareStatement("select distinct locality from locality order by locality asc",ResultSet.TYPE_SCROLL_INSENSITIVE);
			ResultSet rs= pstmt.executeQuery();
			while (rs.next()){
				localitiesList.add(rs.getString(1));
			}

		} catch(SQLException sqle){
			System.out.println("SQL exception when getting localities  in function getlocalities");
		} finally{
			closeConnection(connection);
		}


		return localitiesList;

	}
	
	
	
	public static String getlocality(String id){
	
		System.out.println("hi");

		String locality = "";

		Connection connection=null;

		try{
			connection=getConnection();
			PreparedStatement pstmt= connection.prepareStatement("select locality from locality where restaurant_id=?",ResultSet.TYPE_SCROLL_INSENSITIVE);
			pstmt.setString(1, id);
			ResultSet rs= pstmt.executeQuery();
			while (rs.next()){
				locality = rs.getString(1);
			}

		} catch(SQLException sqle){
			System.out.println("SQL exception when getting locality in function getlocality");
		} finally{
			closeConnection(connection);
		}


		return locality;

	}

	public static void addRestaurantDetails(String id,String name,String location,String menuLink,String phone,String cost){

		Connection connection=null;


		try{
			connection=getConnection();
			PreparedStatement pstmt= connection.prepareStatement("insert into restaurant values(?,?,?,?,'0',?,?)",ResultSet.TYPE_SCROLL_INSENSITIVE);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, location);
			pstmt.setString(4, menuLink);
			pstmt.setString(5, phone);
			pstmt.setInt(6, Integer.parseInt(cost));
			int rs= pstmt.executeUpdate();
			/*	while (rs.next()){

			}*/

		} catch(SQLException sqle){
			System.out.println("SQL exception when getting restaurant  in function addRestaurantDetails");
		} finally{
			closeConnection(connection);
		}

		return;
	}


	public static void addRestaurant(String id,String locality,String user){

		Connection connection=null;

		try{
			connection=getConnection();
			PreparedStatement pstmt= connection.prepareStatement("insert into locality values(?,?,?)",ResultSet.TYPE_SCROLL_INSENSITIVE);
			pstmt.setString(1, locality);
			pstmt.setString(2, id);
			pstmt.setString(3,user);
			int rs= pstmt.executeUpdate();
			System.out.println(id);
			System.out.println(locality);
			System.out.println(user);
			
			/*	while (rs.next()){

			}*/

		} catch(SQLException sqle){
			System.out.println("SQL exception when getting locality in function addRestaurant");
		} finally{
			closeConnection(connection);
		}

		return;
	}

	public static String findres(){

		Connection connection=null;
		String result="";

		try{
			connection=getConnection();
			PreparedStatement pstmt= connection.prepareStatement("select restaurant_name,locality from restaurant natural join locality",ResultSet.TYPE_SCROLL_INSENSITIVE);
			//int rs= pstmt.executeUpdate();
			//System.out.println(id);
			//System.out.println(locality);
			//System.out.println(user);
			ResultSet rs1= pstmt.executeQuery();

			while (rs1.next()){
				result=result+rs1.getString(1)+":"+rs1.getString(2)+",";
			}
			
			/*	while (rs.next()){

			}*/

		} catch(SQLException sqle){
			System.out.println("SQL exception when getting locality in function addRestaurant");
		} finally{
			closeConnection(connection);
		}

		return result;
	}
	
	public static void addPhoto(String first_name,String last_name,InputStream inputStream){

		Connection connection=null;

		try{
			System.out.println("bach gye");
			connection=getConnection();
			PreparedStatement pstmt= connection.prepareStatement("update account set pic=? where user_id=?");
			String p="ashish";
			pstmt.setString(2,p);
			if (inputStream != null) {
				pstmt.setBinaryStream(1,inputStream);
			}
			
			int rs= pstmt.executeUpdate();
            
			/*	while (rs.next()){

			}*/

		} catch(SQLException sqle){
			System.out.println("SQL exception in add photo"+sqle);
		} finally{
			closeConnection(connection);
		}

		return;
	}

	public static List<RestaurantDetails> getRestaurants(String locality){

		List<String> restId = new ArrayList<>();

		List<RestaurantDetails> detailList = new ArrayList<>();


		Connection connection=null;
		try{
			connection=getConnection();
			PreparedStatement pstmt1= connection.prepareStatement("select restaurant_id from locality where locality=?",ResultSet.TYPE_SCROLL_INSENSITIVE);
			
			pstmt1.setString(1, locality);
			ResultSet rs1= pstmt1.executeQuery();

			while (rs1.next()){
				restId.add(rs1.getString(1));
			}
			

			System.out.println("Restaurants Ids in locality "+locality+" are"+restId);

			for(int i=0;i<restId.size();i++){

				String id = restId.get(i);
				
				RestaurantDetails obj = new RestaurantDetails();
				
				obj.setRestaurantId(id);
				
				System.out.println("loop is runnning"+id);
				
				PreparedStatement pstmt2= connection.prepareStatement("select restaurant_name from restaurant where restaurant_id=?",ResultSet.TYPE_SCROLL_INSENSITIVE);
				pstmt2.setString(1, id);
				ResultSet rs2= pstmt2.executeQuery();

				while (rs2.next()){
					
					obj.setRestaurantName(rs2.getString(1));
				//	System.out.println("s1"+rs2.getString(1));
				}
				PreparedStatement pstmt3= connection.prepareStatement("select rating from restaurant where restaurant_id=?",ResultSet.TYPE_SCROLL_INSENSITIVE);
				pstmt3.setString(1, id);
				ResultSet rs3= pstmt3.executeQuery();

				while (rs3.next()){
					obj.setRating(rs3.getString(1));
				//	System.out.println("s2"+obj.getRating());

				}

				PreparedStatement pstmt4= connection.prepareStatement("select location from restaurant where restaurant_id=?",ResultSet.TYPE_SCROLL_INSENSITIVE);
				pstmt4.setString(1, id);
				ResultSet rs4= pstmt4.executeQuery();

				while (rs4.next()){
					obj.setLocation(rs4.getString(1));
				//	System.out.println("s3"+obj.getLocation());

				}

				PreparedStatement pstmt5= connection.prepareStatement("select count(restaurant_id) from reviews where restaurant_id=?",ResultSet.TYPE_SCROLL_INSENSITIVE);
				pstmt5.setString(1, id);
				ResultSet rs5= pstmt5.executeQuery();

				while (rs5.next()){
					obj.setVotes(rs5.getString(1));
				}
				
				PreparedStatement pstmt6= connection.prepareStatement("select phone_no,cost,openinghrs,cuisine,encode(pic,'base64') from restaurant where restaurant_id=?",ResultSet.TYPE_SCROLL_INSENSITIVE);
				pstmt6.setString(1, id);
				ResultSet rs6= pstmt6.executeQuery();

				while (rs6.next()){
					obj.setPhone(rs6.getString(1));
					obj.setCost(rs6.getString(2));
					obj.setopeninghrs(rs6.getString(3));
					obj.setcuisine(rs6.getString(4));
					obj.setpic(rs6.getString(5));
				}
				
				//System.out.println(obj);
				detailList.add(obj);
				
			}
			
			//System.out.println(detailList);

		} catch(SQLException sqle){
			System.out.println("SQL exception when getting restaurant details list  in function getRestaurants");
		} finally{
			closeConnection(connection);
		}
		return detailList;

	}
	
	
	public static List<RestaurantDetails> filter(String review,String popularity,String costad,String cuisine,String costpp1,String costpp2,String locality){
		
		//List<String> restId = new ArrayList<>();
		List<RestaurantDetails> detailList = new ArrayList<>();
		Connection connection=null;
		try{
			System.out.println("called");
			System.out.println(review);
			System.out.println(popularity);
			System.out.println(costad);
			System.out.println(cuisine);
			System.out.println(costpp1);
			System.out.println(costpp2);
			System.out.println(locality);
			
			connection=getConnection();
			
			String p="";
			if(review.equals("h2l")) {
				p="select t2.restaurant_id,t2.restaurant_name,t2.location,t2.menu,t1.avg,t2.phone_no,t2.cost,t1.count,t2.openinghrs,t2.cuisine,encode(t2.pic,'base64') from restaurant as t2 natural join locality left outer join (select restaurant_id,avg(user_rating),count(*) from reviews group by restaurant_id order by avg(user_rating) desc) as t1 on t2.restaurant_id=t1.restaurant_id where locality='"+locality+"'";
				
				//select restaurant.restaurant_name,restaurant.restaurant_id,t1.avg from restaurant left outer join (select restaurant_id, avg(user_rating) from reviews group by restaurant_id ) as t1 on restaurant.restaurant_id=t1.restaurant_id;
			}
			else {
				p="select t2.restaurant_id,t2.restaurant_name,t2.location,t2.menu,t1.avg,t2.phone_no,t2.cost,t1.count,t2.openinghrs,t2.cuisine,encode(t2.pic,'base64') from restaurant as t2 natural join locality left outer join (select restaurant_id,avg(user_rating),count(*) from reviews group by restaurant_id) as t1 on t2.restaurant_id=t1.restaurant_id where locality='"+locality+"'";
			}
			
			
			if(!costpp1.equals("")) {
				p=p+" and t2.cost::money::numeric>"+Integer.parseInt(costpp1)+" and t2.cost::money::numeric<"+Integer.parseInt(costpp2);
			}
			if(!cuisine.equals("")) {
				p+=" and cuisine='"+cuisine+"'";
			}
			if(!costad.equals("")){
				if(costad.equals("l2h")) {
					p+=" order by t2.cost asc";//TO-DO
				}
				else if(costad.equals("h2l")) {
					System.out.println("gotya");
					p+=" order by t2.cost desc";//TO-DO
				}
				if(!popularity.equals("")){
					p+=",t1.count";
				}
			}
			else {
				if(!popularity.equals("")){
					p+=" order by t1.count desc";
				}
			}
			System.out.println(p);
			PreparedStatement ps = connection.prepareStatement(p,ResultSet.TYPE_SCROLL_INSENSITIVE);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				RestaurantDetails obj=new RestaurantDetails();
				obj.setRestaurantId(rs.getString(1));
				obj.setRestaurantName(rs.getString(2));
				obj.setLocation(rs.getString(3));
				obj.setMenu(rs.getString(4));
				obj.setRating(rs.getString(5));
				obj.setPhone(rs.getString(6));
				obj.setCost(rs.getString(7));
				obj.setVotes(rs.getString(8));
				obj.setopeninghrs(rs.getString(9));
				obj.setcuisine(rs.getString(10));
				obj.setpic(rs.getString(11));
				detailList.add(obj);
			}
			//System.out.println(detailList);

		} 
		catch(SQLException sqle){
			System.out.println("filter->"+sqle);
		} 
		finally{
			closeConnection(connection);
		}
		return detailList;

	}
	

	public static String pics(String id) {
		System.out.println("aa gya");
		Connection connection=null;
		String imgBytes = null;
		try{
			connection=getConnection();
			PreparedStatement ps = connection.prepareStatement("SELECT encode(pic,'base64') FROM account WHERE user_id = ?",ResultSet.TYPE_SCROLL_INSENSITIVE);
//			System.out.println("hellohello");
			ps.setString(1, id);
			System.out.println(ps.toString());
			ResultSet rs = ps.executeQuery();
			if (rs != null) {
				rs.next();
			        imgBytes = rs.getString(1);
//			        System.out.println("whups");
			        // use the data in some way here
			}
			ps.close();
		
		} catch(SQLException sqle){
			System.out.println("SQL exception in pics->"+sqle);
		} finally{
			closeConnection(connection);
		}
        return imgBytes;
	}
	
	public static int Hello(){
		int a=1;
		return a;
	}
	public static RestaurantDetails getAllDetails(String id){
		RestaurantDetails obj = new RestaurantDetails();
		obj.setRestaurantId(id);
		Connection connection=null;

		try{
			connection=getConnection();
			PreparedStatement pstmt= connection.prepareStatement("select restaurant_name,location,menu,rating,phone_no,cost,openinghrs,cuisine,pic from restaurant where restaurant_id=?",ResultSet.TYPE_SCROLL_INSENSITIVE);
			pstmt.setString(1, id);
			ResultSet rs1= pstmt.executeQuery();

			while (rs1.next()){
				obj.setRestaurantName(rs1.getString(1));
				obj.setLocation(rs1.getString(2));
				obj.setMenu(rs1.getString(3));
				obj.setRating(rs1.getString(4));
				obj.setPhone(rs1.getString(5));
				obj.setCost(rs1.getString(6));
				obj.setopeninghrs(rs1.getString(7));
				obj.setcuisine(rs1.getString(8));
				obj.setpic(rs1.getString(9));
			}
			
			PreparedStatement pstmt5= connection.prepareStatement("select count(restaurant_id) from reviews where restaurant_id=?",ResultSet.TYPE_SCROLL_INSENSITIVE);
			pstmt5.setString(1, id);
			ResultSet rs5= pstmt5.executeQuery();

			while (rs5.next()){
				obj.setVotes(rs5.getString(1));
			}
			
		} catch(SQLException sqle){
			System.out.println("SQL exception when getting restaurant details list   in function getAllDetails");
		} finally{
			closeConnection(connection);
		}
		return obj;
		
	}
	
	public static void addReviews(int rating,String review,String userId,String restaurantId)
	{
		Connection connection=null;

		try{
			connection=getConnection();
			PreparedStatement pstmt= connection.prepareStatement("insert into reviews values(?,?,?,?)",ResultSet.TYPE_SCROLL_INSENSITIVE);
			pstmt.setString(1, userId);
			pstmt.setString(2, restaurantId);
			pstmt.setString(3, review);
			pstmt.setInt(4, rating);

			int rs1= pstmt.executeUpdate();

		} catch(SQLException sqle){
			System.out.println("SQL exception when getting restaurant details list   in function addReviews");
			System.out.println(sqle.getMessage());
		} finally{
			closeConnection(connection);
		}
		
	}
	
public static List<ReviewDetails> getAllReviewsbyname(String name, String id){
		
		List<ReviewDetails> review_list = new ArrayList<>();		

		Connection connection=null;
		

		try{
			connection=getConnection();
	
			PreparedStatement pstmt= connection.prepareStatement("select  user_id, encode(pic,'base64'),user_review,user_rating  from reviews natural join account where restaurant_id=?");
			pstmt.setString(1, id);
			ResultSet rs1= pstmt.executeQuery();

			while (rs1.next()){
				//obj.setopen(rs1.getString(8));
				// obj.setcuisine(rs1.getString(9));
				ReviewDetails r =new ReviewDetails();
				r.setUserId(rs1.getString(1));
				r.setPic(rs1.getString(2));
				r.setUserReview(rs1.getString(3));
				r.setUserRating(rs1.getString(4));
				review_list.add(r);
					
			}

		} catch(SQLException sqle){
			System.out.println("SQL exception when getting restaurant details list   in function getAllDetails");
		} finally{
			closeConnection(connection);
		}
		return review_list;
		
	}
public static List<Userdetails> getallusers(){
	
	List<Userdetails> user_list = new ArrayList<>();		

	Connection connection=null;
	

	try{
		connection=getConnection();

		PreparedStatement pstmt= connection.prepareStatement("select  user_id,phone,encode(pic,'base64') FROM account where admin='0'");
		ResultSet rs1= pstmt.executeQuery();

		while (rs1.next()){
			Userdetails r =new Userdetails();
			r.setUser(rs1.getString(1));
			r.setPic(rs1.getString(3));
			r.setUserContact(rs1.getString(2));
			user_list.add(r);
				
		}

	} catch(SQLException sqle){
		System.out.println("SQL exception when getting restaurant details list   in function getAllDetails");
	} finally{
		closeConnection(connection);
	}
	return user_list;
	
}


	public static RestaurantDetails getAllDetailsbyname(String name){
		RestaurantDetails obj = new RestaurantDetails();
		//String id_r;

		Connection connection=null;

		try{
			connection=getConnection();
			PreparedStatement pstmt= connection.prepareStatement("select  restaurant_id, restaurant_name,location,encode(pic,'base64'),rating,phone_no,cost,openinghrs,cuisine  from restaurant where restaurant_name=?");
			pstmt.setString(1, name);
			ResultSet rs1= pstmt.executeQuery();

			while (rs1.next()){
				obj.setRestaurantId(rs1.getString(1));
				obj.setRestaurantName(rs1.getString(2));
				obj.setLocation(rs1.getString(3));
				obj.setpic(rs1.getString(4));
				obj.setRating(rs1.getString(5));
				obj.setPhone(rs1.getString(6));
				obj.setCost(" "+rs1.getString(7).substring(1));
				obj.setopeninghrs(rs1.getString(8));
				obj.setcuisine(rs1.getString(9));
					
			}

		} catch(SQLException sqle){
			System.out.println("SQL exception when getting restaurant details list   in function getAllDetails");
		} finally{
			closeConnection(connection);
		}
		return obj;
		
	}
	
public static void addAccount(String id,String password,String phone,InputStream inputStream,String admin){
		
		Connection connection=null;
		
		try{
			connection=getConnection();
			PreparedStatement pstmt= connection.prepareStatement("insert into account values(?,?,?,?,?)",ResultSet.TYPE_SCROLL_INSENSITIVE);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			if (inputStream != null) {
				pstmt.setBinaryStream(3,inputStream);
			}
			pstmt.setInt(4,Integer.parseInt(admin));
			pstmt.setString(5,phone);
			
			//System.out.println(id + " " + password );
			
			pstmt.executeUpdate();
			
		
			
		} catch(SQLException sqle){
			System.out.println("SQL exception in addAccount->"+sqle);
		} finally{
			closeConnection(connection);
		}
		
		return;
	}

public static int checkPassword(String id,String password){
		int res=0;
		Connection connection=null;
		
		try{
			connection=getConnection();
			PreparedStatement pstmt= connection.prepareStatement("select password1 from account where user_id=?",ResultSet.TYPE_SCROLL_INSENSITIVE);
			pstmt.setString(1, id);
			ResultSet rs= pstmt.executeQuery();
			//System.out.println(id + " " + password );
			while (rs.next()){
			
				String s = rs.getString(1);
				//System.out.println("s= "+s);

				
				if(s.equals(password))
				{	res=1;
				//System.out.println(res);
				}
			}
			
		} catch(SQLException sqle){
			System.out.println("SQL exception when getting top courses list");
		} finally{
			closeConnection(connection);
		}
		
		return res;
	}

public static int checkPasswordadmin(String id,String password){
	int res=0;
	
	
	
	String s = "admin";
	

			
	if(s.equals(password) && s.equals(id)){	res=1;}
	
	
	return res;
}

	
}

