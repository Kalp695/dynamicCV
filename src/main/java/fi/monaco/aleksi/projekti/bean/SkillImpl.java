package fi.monaco.aleksi.projekti.bean;

public class SkillImpl implements Skill{

	int id;
	String name, level;
		
	public SkillImpl(int id, String name, String level) {
		super();
		this.id = id;
		this.name = name;
		this.level = level;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}

	@Override
	public String toString() {
		return "SkillImpl [id=" + id + ", name=" + name + ", level=" + level
				+ "]";
	}
	
	
}
