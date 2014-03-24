package fi.monaco.aleksi.projekti.bean;

import javax.validation.constraints.Size;

public class MessageImpl implements Message {
	
	private int id;
	
	@Size(min = 5, max = 500)
	private String message;
	
	private String time, date;
	
	private String name;
	
	

	public MessageImpl() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "MessageImpl [id=" + id + ", message=" + message + ", time="
				+ time + ", date=" + date + ", name=" + name + "]";
	}

}
