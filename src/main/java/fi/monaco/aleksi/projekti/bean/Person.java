package fi.monaco.aleksi.projekti.bean;

public interface Person {
	
	public abstract int getId();
	public abstract void setId(int id);
	
	public abstract String getFName();
	public abstract void setFName(String fName);
	
	public abstract String getLName();
	public abstract void setLName(String lName);
	
	public abstract String getAddress();
	public abstract void setAddress(String address);
	
	public abstract String getPostNumber();
	public abstract void setPostNumber(String postnumber);
	
	public abstract String getCity();
	public abstract void setCity(String city);
	
	public abstract String getPhone();
	public abstract void setPhone(String phone);
	
	public abstract String getEmail();
	public abstract void setEmail(String email);

}
