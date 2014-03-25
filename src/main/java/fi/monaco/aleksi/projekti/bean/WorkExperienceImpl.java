package fi.monaco.aleksi.projekti.bean;

public class WorkExperienceImpl implements WorkExperience{
	
	int id;
	String employer, title, taskDescription, startDate, endDate;
	
	public WorkExperienceImpl() {
	}

	public WorkExperienceImpl(int id, String employer, String title,
			String taskDescription, String startDate, String endDate) {
		super();
		this.id = id;
		this.employer = employer;
		this.title = title;
		this.taskDescription = taskDescription;
		this.startDate = startDate;
		this.endDate = endDate;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmployer() {
		return employer;
	}
	public void setEmployer(String employer) {
		this.employer = employer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTaskDescription() {
		return taskDescription;
	}
	public void setTaskDescription(String taskDescription) {
		this.taskDescription = taskDescription;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	@Override
	public String toString() {
		return "WorkExperienceImpl [id=" + id + ", employer=" + employer
				+ ", title=" + title + ", taskDescription=" + taskDescription
				+ ", startDate=" + startDate + ", endDate=" + endDate + "]";
	}
	
	

}
