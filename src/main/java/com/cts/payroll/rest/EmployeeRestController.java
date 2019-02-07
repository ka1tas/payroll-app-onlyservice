package com.cts.payroll.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cts.payroll.PayrollAppException;
import com.cts.payroll.bean.Department;
import com.cts.payroll.bean.Employee;
import com.cts.payroll.bean.Skill;
import com.cts.payroll.bean.UpdateEmployeeView;
import com.cts.payroll.bean.UpdateStatus;
import com.cts.payroll.service.DepartmentService;
import com.cts.payroll.service.EmployeeService;
import com.cts.payroll.service.SkillService;

@RestController
@RequestMapping("/rest/employee")
public class EmployeeRestController {

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

	
	@GetMapping("/list")
	public List<Employee> getAllEmployee(){
		return employeeService.getEmployees();
	}
	
	
	@GetMapping("/detail")
	public UpdateEmployeeView showEmployee(int employeeId){

		UpdateEmployeeView updateemp = new UpdateEmployeeView();
		
		Employee employee = employeeService.getEmployee(employeeId);
		List<Skill> skills = skillService.getSkills();
		List<Department> departments = departmentService.getDepartments();
	
		updateemp.setEmployee(employee);
		updateemp.setDepartment(departments);
		updateemp.setSkill(skills);
		
		return updateemp;
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
/*	
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

	-----------------------------------------------------------------------------------------------------------------------
*/	
	
	
	
/*	
	@PostMapping("/modify")
	// @ExceptionHandler(PayrollAppException.class)
	public UpdateStatus updateEmployee(Employee employee,@RequestParam("skill") int skills[]) throws PayrollAppException {
		System.out.println("Inside update employee");
		UpdateStatus status = new UpdateStatus();
		status.setUpdated(false);
		
		int departmentId = employee.getDepartment().getDepartmentId();
		employee.setDepartment(departmentService.getDepartmentById(departmentId));
		
		List<Skill> newSkills = new ArrayList<Skill>();
		for (int skillId : skills) {

			newSkills.add(skillService.getSkill(skillId));
		}
		employee.setSkillList(newSkills);
		employeeService.updateEmployee(employee);
		status.setUpdated(true);
		
		return status;
	}*/
	

	
	@PostMapping("/modify")
	// @ExceptionHandler(PayrollAppException.class)
	public ResponseEntity<UpdateStatus> updateEmployee(@RequestBody Employee employee)/*@RequestParam("skill") int skills[]*/  {
		System.out.println("Inside update employee");
		
		UpdateStatus status = new UpdateStatus();
		status.setUpdated(false);
		System.out.println(employee);
		int departmentId = employee.getDepartment().getDepartmentId();
		employee.setDepartment(departmentService.getDepartmentById(departmentId));
		
		/*List<Skill> newSkills = new ArrayList<Skill>();
		for (int skillId : skills) {

			newSkills.add(skillService.getSkill(skillId));
		}
		//employee.setSkillList(newSkills);*/
		employeeService.updateEmployee(employee);
		status.setUpdated(true);
		
		return new ResponseEntity<UpdateStatus>(status,HttpStatus.OK);
	}
	
	

}
