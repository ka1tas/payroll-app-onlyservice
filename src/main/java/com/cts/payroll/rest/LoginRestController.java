package com.cts.payroll.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cts.payroll.bean.AuthenticationStatus;
import com.cts.payroll.bean.User;
import com.cts.payroll.service.EmployeeService;
import com.cts.payroll.service.UserService;

@RestController
public class LoginRestController {
	private UserService userService;
	private EmployeeService employeeService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Autowired
	public void setEmployeeService(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}

	@PostMapping("/rest/authenticate")
	 ResponseEntity<AuthenticationStatus> authenticate( @RequestBody User user) {
		System.out.println("inside authenticate");
		System.out.println(user);
		String password = user.getPassword();
		String actualPassword = null;

		AuthenticationStatus status = new AuthenticationStatus();
		status.setAuthenticated(false);

		User actualUser = userService.getUser(user.getUserName());
		if (actualUser != null) {
			actualPassword = actualUser.getPassword();
		}
		status.setAuthenticated(password.equals(actualPassword));
		
		return new ResponseEntity<AuthenticationStatus>(status, HttpStatus.OK);

	}
	
/*	@PostMapping("/rest/authenticate")
	 int authenticate( @RequestBody User user) {
		System.out.println("inside authenticate");
		System.out.println(user);
		String password = user.getPassword();
		String actualPassword = null;

		
		int status=2;

		User actualUser = userService.getUser(user.getUserName());
		if (actualUser != null) {
			actualPassword = actualUser.getPassword();
		}
	if(password.equals(actualPassword)){
		
		status=5;
	}
		
		return status;

	}*/


}
