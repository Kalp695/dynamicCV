package fi.monaco.aleksi.projekti.dao;

import fi.monaco.aleksi.projekti.bean.Message;
import fi.monaco.aleksi.projekti.bean.Person;

public interface PersonDAO {
	
	public abstract Person getContInfo(int id);
	
	public abstract void saveMessage(int id, Message message);

}
