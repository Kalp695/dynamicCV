package fi.monaco.aleksi.projekti.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import fi.monaco.aleksi.projekti.bean.WorkExperience;
import fi.monaco.aleksi.projekti.bean.WorkExperienceImpl;

public class WorkExperienceRowMapper implements RowMapper<WorkExperience>{

	public WorkExperience mapRow(ResultSet rs, int rowNum) throws SQLException {
		WorkExperience we = new WorkExperienceImpl();
		we.setId(rs.getInt("work_id"));
		we.setEmployer(rs.getString("employer"));
		we.setTitle(rs.getString("title"));
		we.setTaskDescription(rs.getString("taskDescription"));
		
		String startDate = rs.getString("startDate");
		String[] formatStartDate = startDate.split("-");
		String realStartFormat = formatStartDate[2] + "." + formatStartDate[1] + "." + formatStartDate[0];
		we.setStartDate(realStartFormat);
		
		
		String endDate = rs.getString("endDate");
		if(endDate != null){
			String[] formatEndDate = endDate.split("/");
			endDate = formatEndDate[2] + "." + formatEndDate[1] + formatEndDate[0];
		}
		we.setEndDate(endDate);
		
		return we;
	}

}
