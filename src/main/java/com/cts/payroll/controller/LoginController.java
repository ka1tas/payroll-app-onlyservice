package com.cts.payroll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cts.payroll.PayrollAppException;
import com.cts.payroll.bean.User;
import com.cts.payroll.service.EmployeeService;
import com.cts.payroll.service.UserService;

@Controller
@SessionAttributes("logginSession")
public class LoginController {

	private UserService userService;
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;

	}
	

	private EmployeeService employeeService;

	@Autowired
	public void setEmployeeService(EmployeeService employeeService) {

		this.employeeService = employeeService;
	}

	public EmployeeService getEmployeeService() {
		return employeeService;
	}
	

	@GetMapping("/home")
	public String showLogin() {
		return "Login";

	}
	
	
	

	@PostMapping("/authenticate")
	
	@ExceptionHandler({PayrollAppException.class})
	public String authenticate(User user, Model model,HttpSession session) throws PayrollAppException{
		String password = user.getPassword();
		String actualPassword = null;
		User actualUser = userService.getUser(user.getUserName());
		System.out.println(actualUser);
		
			if (actualUser != null) {
				actualPassword = actualUser.getPassword();
				System.out.println(actualPassword);
				
			}

		if (password.equals(actualPassword)) {
			

			model.addAttribute("employees", employeeService.getEmployees());
			
			
			return "emplist";
		
		} else {
		
			model.addAttribute("error", "Invalid username or password.");
			return "Login";
		}
	}
	
	@GetMapping("/logout")
	public String logout( Model model,HttpServletRequest request,HttpServletResponse response) throws PayrollAppException{
		
    	//response.sendRedirect("login.html")
		return "Login";
	}
	
	
}
