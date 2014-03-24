package fi.monaco.aleksi.projekti.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import fi.monaco.aleksi.projekti.bean.Person;
import fi.monaco.aleksi.projekti.bean.PersonImpl;

public class PersonRowMapper implements RowMapper<Person> {

	public Person mapRow(ResultSet rs, int rowNum) throws SQLException {
		Person p = new PersonImpl();
		p.setFName(rs.getString("fName"));
		p.setLName(rs.getString("lName"));
		p.setAddress(rs.getString("address"));
		p.setPostNumber(rs.getString("postnumber"));
		p.setCity(rs.getString("city"));
		p.setPhone(rs.getString("phone"));
		p.setEmail(rs.getString("email"));
		
		return p;
		
	}

}
