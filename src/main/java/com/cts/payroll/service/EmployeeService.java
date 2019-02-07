package com.cts.payroll.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.payroll.PayrollAppException;
import com.cts.payroll.bean.Employee;
import com.cts.payroll.repository.EmployeeRepository;

@Service
public class EmployeeService {
	
	private EmployeeRepository employeeRepository;

	@Autowired
	public void setEmployeeRepository(EmployeeRepository employeeRepository){
		this.employeeRepository=employeeRepository;
	}
	
	
	

	
	@Transactional
	public List<Employee> getEmployees() {
		System.out.println("Hello");
		System.out.println(employeeRepository.fetchAllEmployeeDetails());
		return employeeRepository.fetchAllEmployeeDetails();
		
	}

	@Transactional
	public Employee getEmployee(int employeeId) {
		return employeeRepository.fetchEmployeeDetails(employeeId);
	}

	@Transactional
	public void updateEmployee( @ModelAttribute Employee employee) {
	
		System.out.println("Employee: " + employee);
		employeeRepository.save(employee);		
	}
}
