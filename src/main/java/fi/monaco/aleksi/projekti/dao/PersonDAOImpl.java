package fi.monaco.aleksi.projekti.dao;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.inject.Inject;

import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import fi.monaco.aleksi.projekti.bean.Message;
import fi.monaco.aleksi.projekti.bean.Person;

@Repository
public class PersonDAOImpl implements PersonDAO {
	
	@Inject
	private JdbcTemplate jdbcTemplate;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public Person getContInfo(int id) {
		final String sql = "SELECT fName, lName, address, postnumber, city, phone, email FROM person WHERE person_id=?";
		Object[] parameters = new Object[] { id };
		RowMapper<Person> rm = new PersonRowMapper();
		
		Person p = null;
		try { 
		    p = jdbcTemplate.queryForObject(sql , parameters, rm);
		 } catch(IncorrectResultSizeDataAccessException e) {
		    	
		 }
		 
		return p;
		
	}

	public void saveMessage(int id, Message message) {
		
		//GET CURRENT DATE
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
        Date date = new Date();
        message.setDate(dateFormat.format(date));
        
        //GET CURRENT TIME
        Calendar cal = Calendar.getInstance();
    	cal.getTime();
    	SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
    	message.setTime(sdf.format(cal.getTime()));
		
		this.jdbcTemplate.update("INSERT INTO message (message, mTime, mDate, name, person_id) "
				+ "VALUES (?,?,?,?,?)", message.getMessage(), message.getTime(), message.getDate(),
				 message.getName() ,id);
		
		
	}

}
