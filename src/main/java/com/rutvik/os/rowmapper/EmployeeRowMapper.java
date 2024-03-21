package com.rutvik.os.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.rutvik.os.entity.Employee;

public class EmployeeRowMapper implements org.springframework.jdbc.core.RowMapper<Employee>{

	@Override
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Employee employee = new Employee();
		
		employee.setId(rs.getInt("id"));
		employee.setName(rs.getString("name"));
		employee.setDob(rs.getString("dob"));
		employee.setGender(rs.getString("gender"));
		employee.setAddress(rs.getString("address"));
		employee.setCity(rs.getString("city"));
		employee.setState(rs.getString("state"));
		employee.setEmail(rs.getString("email"));
		employee.setPassword(rs.getString("password"));
		
		return employee;
	}

}
