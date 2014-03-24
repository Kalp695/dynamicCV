package fi.monaco.aleksi.projekti.bean;

public class DegreeImpl implements Degree {
	
	int id, compYear;
	String name, school, description;
	
	public DegreeImpl(int id, int compYear, String name, String school,
			String description) {
		super();
		this.id = id;
		this.compYear = compYear;
		this.name = name;
		this.school = school;
		this.description = description;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCompYear() {
		return compYear;
	}
	public void setCompYear(int compYear) {
		this.compYear = compYear;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "DegreeImpl [id=" + id + ", compYear=" + compYear + ", name="
				+ name + ", school=" + school + ", description=" + description
				+ "]";
	}
	
	

}
