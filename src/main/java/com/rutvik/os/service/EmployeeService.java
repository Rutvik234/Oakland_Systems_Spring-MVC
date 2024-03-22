package com.rutvik.os.service;

import com.rutvik.os.entity.Employee;

public interface EmployeeService {

	void saveEmployee(Employee employee);

	Employee getEmployee(String email);

	Employee loginEmailAndPassword(String email, String password);

	boolean isValid(String email, String password);

}
