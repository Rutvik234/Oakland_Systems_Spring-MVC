package com.rutvik.os.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rutvik.os.dao.EmployeeDAO;
import com.rutvik.os.entity.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeDAO employeeDAO;
	
	@Override
	public void saveEmployee(Employee employee) {
		
		employeeDAO.saveEmployee(employee);
	}

	@Override
	public Employee getEmployee(String email) {
		Employee empEmail = employeeDAO.getEmployee(email);
		return empEmail;
	}

	@Override
	public Employee loginEmailAndPassword(String email, String password) {
		Employee empLoginPassword = employeeDAO.loginEmailAndPassword(email, password);
		return empLoginPassword;
	}

	@Override
	public boolean isValid(String email, String password) {
		boolean validetion = employeeDAO.isValid(email, password);
		return validetion;
	}

}
