package fi.monaco.aleksi.projekti.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import fi.monaco.aleksi.projekti.bean.Degree;
import fi.monaco.aleksi.projekti.bean.DegreeImpl;

public class DegreeRowMapper implements RowMapper<Degree> {

	public Degree mapRow(ResultSet rs, int rowNum) throws SQLException {
		Degree d = new DegreeImpl();
		d.setId(rs.getInt("degree_id"));
		d.setName(rs.getString("name"));
		d.setCompYear(rs.getInt("compYear"));
		d.setDescription(rs.getString("description"));
		d.setSchool(rs.getString("school"));
		
		return d;
	}

}
