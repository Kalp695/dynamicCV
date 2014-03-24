package fi.monaco.aleksi.projekti.bean;

public interface Degree {
	
	public abstract int getId();
	public abstract void setId(int id);
	
	public abstract String getName();
	public abstract void setName(String name);
	
	public abstract int getCompYear();
	public abstract void setCompYear(int compYear);
	
	public abstract String getSchool();
	public abstract void setSchool(String school);
	
	public abstract String getDescription();
	public abstract void setDescription(String desc);

}
