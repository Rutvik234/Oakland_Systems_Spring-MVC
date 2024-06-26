package com.rutvik.os.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rutvik.os.dao.EmployeeDAO;
import com.rutvik.os.entity.Employee;
import com.rutvik.os.service.EmployeeService;

@Controller
public class OaklandController {
	
	@Autowired
	private EmployeeService employeeService;

	@GetMapping("/")
	public String homePage(@ModelAttribute("employeeInfo") Employee employee, Model model) {
		return "login-page";
	}

	@PostMapping("/login")
	public String loginPage(@ModelAttribute("employeeInfo") Employee employee, Model model) {
		
		try {
			if (employeeService.isValid(employee.getEmail(), employee.getPassword())) {
				
				Employee employee2 = employeeService.getEmployee(employee.getEmail());
				model.addAttribute("name", employee2.getName());
				List<Employee> listEmployee = employeeService.loadEmploye();
				model.addAttribute("listOfEmployee", listEmployee);
				System.out.println(listEmployee);
				return "welcome-page"; // Return welcome view for successful login

			} else {
				model.addAttribute("error", "*Invalid email or password");
				return "login-page"; // Return login form with error message
			}
		} catch (Exception e) {
			model.addAttribute("error", "*Invalid email or password");
			return "login-page"; // Return login form with error message
		}
	}

	@GetMapping("/register")
	public String registetionPage(@ModelAttribute("registerDTO") Employee employee, Model model) {
		return "register-page";
	}

	@PostMapping("/registerSuccess")
	public String registetionSuccessPage(@ModelAttribute("registerDTO") Employee employee, Model model) {
		employeeService.saveEmployee(employee);
		return "redirect:/";
	}
}
