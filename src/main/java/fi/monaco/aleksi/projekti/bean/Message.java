package fi.monaco.aleksi.projekti.bean;

public interface Message {
	
	public abstract int getId();
	public abstract void setId(int id);
	
	public abstract String getMessage();
	public abstract void setMessage(String message);
	
	public abstract String getTime();
	public abstract void setTime(String time);
	
	public  abstract String getDate();
	public abstract void setDate(String date);
	
	public abstract String getName();
	public abstract void setName(String name);
}
