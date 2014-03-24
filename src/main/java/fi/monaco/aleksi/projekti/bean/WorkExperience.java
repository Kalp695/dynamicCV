package fi.monaco.aleksi.projekti.bean;

public interface WorkExperience {
	
	public abstract int getId();
	public abstract void setId(int id);
	
	public abstract String getEmployer();
	public abstract void setEmployer(String employer);
	
	public abstract String getTitle();
	public abstract void setTitle(String title);
	
	public abstract String getTaskDescription();
	public abstract void setTaskDescription(String taskDesc);
	
	public abstract String getStartDate();
	public abstract void setStartDate(String sd);
	
	public abstract String getEndDate();
	public abstract void setEndDate(String ed);

}
