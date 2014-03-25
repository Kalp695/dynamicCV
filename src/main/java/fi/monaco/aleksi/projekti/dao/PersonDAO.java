package fi.monaco.aleksi.projekti.dao;

import java.util.List;

import fi.monaco.aleksi.projekti.bean.Degree;
import fi.monaco.aleksi.projekti.bean.Message;
import fi.monaco.aleksi.projekti.bean.Person;
import fi.monaco.aleksi.projekti.bean.WorkExperience;

public interface PersonDAO {
	
	public abstract Person getContInfo(int id);
	
	public abstract List<Degree> getAllDegrees(int id);
	
	public abstract List<WorkExperience> getAllWorkExperiences(int id);
	
	public abstract void saveMessage(int id, Message message);

}
