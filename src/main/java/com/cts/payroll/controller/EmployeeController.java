package com.cts.payroll.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.payroll.PayrollAppException;
import com.cts.payroll.bean.Department;
import com.cts.payroll.bean.Employee;
import com.cts.payroll.bean.Skill;
import com.cts.payroll.service.DepartmentService;
import com.cts.payroll.service.EmployeeService;
import com.cts.payroll.service.SkillService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

	private EmployeeService employeeService;

	@Autowired
	public void setEmployeeService(EmployeeService employeeService) {

		this.employeeService = employeeService;
	}

	public EmployeeService getEmployeeService() {
		return employeeService;
	}

	private SkillService skillService;

	@Autowired
	public void setSkillService(SkillService skillService) {

		this.skillService = skillService;
	}

	public SkillService getSkillService() {
		return skillService;
	}

	private DepartmentService departmentService;

	@Autowired
	public void setDepartmentService(DepartmentService departmentService) {

		this.departmentService = departmentService;
	}

	public DepartmentService getDepartmentService() {
		return departmentService;
	}

	/*
	  @ExceptionHandler({PayrollAppException.class})
	  //@GetMapping("/showemployee")
	  
	  @RequestMapping("/showemployee") public String showEmployee(Model model,
	  
	  @RequestParam(value = "id") int id) throws PayrollAppException {
	  
	  
	  Employee employee = employeeService.getEmployee(id); 
	  List<Skill> skills = skillService.getSkills(); 
	  List<Department> departments = departmentService.getDepartments();
	  
	   model.addAttribute("employee", employee);
	   model.addAttribute("departments", departments);
	  model.addAttribute("skills", skills); 
	  return "updateemp";
	  
	  }
	 
*/
	@GetMapping("/showemp/{employeeId}")
	@ExceptionHandler({ PayrollAppException.class })
	public String showEmployee(@PathVariable int employeeId, Model model) throws PayrollAppException {

		Employee employee = employeeService.getEmployee(employeeId);
		List<Skill> skills = skillService.getSkills();
		
		List<Department> departments = departmentService.getDepartments();
		
		model.addAttribute("employee", employee);
		model.addAttribute("departments", departments);
		model.addAttribute("skills", skills);
		return "updateemp";
	}

	/*-----------------------------------------------------------------------------------------------------------------------*/
	
	
	
	
	
	@PostMapping("/modify")
	//@ExceptionHandler({PayrollException.class})
	public String updateEmployee(
			@ModelAttribute("employee") Employee employee, 
			@RequestParam("skill") int[] skills, 
			Model model) throws PayrollAppException {
		System.out.println("Inside update employee.");
		System.out.println(employee);
		//employeeService.updateEmployee(employee, skills);
		int departmentId = employee.getDepartment().getDepartmentId();
		employee.setDepartment(departmentService
				.getDepartmentById(departmentId));
		List<Skill> newSkills = new ArrayList<Skill>();
		for (int skillId : skills) {
			newSkills.add(skillService.getSkill(skillId));
		}
		employee.setSkillList(newSkills);
		employeeService.updateEmployee(employee);
		model.addAttribute("success", "Data Upadated Successfully!!");
	/*	model.addAttribute("employee", employeeService.getEmployee(employee.getId()));
		model.addAttribute("departments", departmentService.getDepartments());
		model.addAttribute("skills", skillService.getSkills());
		return "updateemp";*/
		
		model.addAttribute("employees", employeeService.getEmployees());
		return "emplist";
		
	
	}

}
