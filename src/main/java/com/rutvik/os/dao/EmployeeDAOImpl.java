package com.rutvik.os.dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rutvik.os.entity.Employee;
import com.rutvik.os.rowmapper.EmployeeRowMapper;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public void saveEmployee(Employee employee) {
		Object[] sqlParameter = { employee.getName(), employee.getDob(), employee.getGender(), employee.getAddress(),
				employee.getCity(), employee.getState(), employee.getEmail(), employee.getPassword() };
		String sql = "INSERT INTO employee (name, dob, gender, address, city, state, email, password) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, sqlParameter);
	}

	@Override
	public Employee loginEmailAndPassword(String email, String password) {
		String sql = "SELECT email, password FROM employee WHERE email = ? AND password = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { email, password }, new EmployeeRowMapper());
	}

	@Override
	public boolean isValid(String email, String password) {
		String sql = "SELECT COUNT(*) FROM employee WHERE email = ? AND password = ?";
		Integer count = jdbcTemplate.queryForObject(sql, new Object[] { email, password }, Integer.class);
		return count != null && count > 0;
	}

	@Override
	public Employee getEmployee(String email) {
		String sql = "SELECT * FROM employee WHERE email = ?";
		return jdbcTemplate.queryForObject(sql, new EmployeeRowMapper(), email);
	}

	@Override
	public List<Employee> loadEmploye() {
		String sql = "SELECT * FROM employee";	
		List<Employee> listOfEmployee = jdbcTemplate.query(sql, new EmployeeRowMapper());
		return listOfEmployee;
	}
}
