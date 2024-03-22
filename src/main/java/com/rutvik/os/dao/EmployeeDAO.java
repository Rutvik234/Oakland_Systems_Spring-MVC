package com.rutvik.os.dao;

import com.rutvik.os.entity.Employee;

public interface EmployeeDAO {
	
	void saveEmployee(Employee employee);
	
	Employee getEmployee(String email);
	
	Employee loginEmailAndPassword(String email, String password);
	
	boolean isValid(String email, String password);
	
}
