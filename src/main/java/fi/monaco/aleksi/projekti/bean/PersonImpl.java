package fi.monaco.aleksi.projekti.bean;

public class PersonImpl implements Person{
	
	private int id;
	private String fName, lName, address, postNumber, city, phonenumber, email;
	
	
	public PersonImpl() {
		super();
		
	}

	public PersonImpl(int id, String fName, String lName, String address,
			String postNumber, String city, String phonenumber, String email) {
		super();
		this.id = id;
		this.fName = fName;
		this.lName = lName;
		this.address = address;
		this.postNumber = postNumber;
		this.city = city;
		this.phonenumber = phonenumber;
		this.email = email;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFName() {
		return fName;
	}
	public void setFName(String fName) {
		this.fName = fName;
	}
	public String getLName() {
		return lName;
	}
	public void setLName(String lName) {
		this.lName = lName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPostNumber() {
		return postNumber;
	}
	public void setPostNumber(String postNumber) {
		this.postNumber = postNumber;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPhone() {
		return phonenumber;
	}
	public void setPhone(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "PersonImpl [id=" + id + ", fName=" + fName + ", lName=" + lName
				+ ", address=" + address + ", postNumber=" + postNumber
				+ ", city=" + city + ", phonenumber=" + phonenumber
				+ ", email=" + email + "]";
	}

	
}
