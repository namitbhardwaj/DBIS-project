package Home;

public class ReviewDetails {
	
	String userId;
	String userReview;
	String userRating;
	String image;

	public String getUserId() {
		return userId;
	}
	public void setUserId(String user) {
		this.userId = user;
	}
	public String getPic() {
		return image;
	}
	public void setPic(String user) {
		this.image = user;
	}
	public String getUserReview(){
		return userReview;	
	}
	public void setUserReview(String s){
		this.userReview=s;	
	}
	public String getUserRating(){
		return userRating;	
	}
	public void setUserRating(String s){
		this.userRating=s;	
	}

}
