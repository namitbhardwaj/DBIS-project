package Home;

public class RestaurantDetails {
	
	String restaurantId;
	String restaurantName;
	String location;
	String menu;
	String rating;
	String phone;
	String cost;
	String user;
	String votes;
	String openinghrs;
	String cuisine;
	String pic;
	
	public String getUser() {
		return restaurantId;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getRestaurantId() {
		return restaurantId;
	}
	public void setRestaurantId(String restaurantId) {
		this.restaurantId = restaurantId;
	}
	public String getRestaurantName() {
		return restaurantName;
	}
	public void setRestaurantName(String restaurantName) {
		this.restaurantName = restaurantName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	
	public String getpic() {
		return pic;
	}
	public void setpic(String menu) {
		this.pic = menu;
	}
	
	public String getopeninghrs() {
		return openinghrs;
	}
	public void setopeninghrs(String menu) {
		this.openinghrs = menu;
	}
	
	public String getcuisine() {
		return cuisine;
	}
	public void setcuisine(String menu) {
		this.cuisine = menu;
	}
	
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	
	public String getVotes() {
		return votes;
	}
	public void setVotes(String votes) {
		this.votes = votes;
	}

}
