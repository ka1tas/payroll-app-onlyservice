package com.cts.payroll;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.cts.payroll.service.EmployeeService;

@Configuration
@ComponentScan

public class SpringTest {

	private EmployeeService employeeService;

	@Bean(name = "springTestInstance")
	public SpringTest getSpringTest() {
		return new SpringTest();
	}

	@Autowired
	public void setEmployeeService(EmployeeService employeeService) {

		this.employeeService = employeeService;
	}

	public EmployeeService getEmployeeService() {
		return employeeService;
	}

	public static void main(String arg[]) throws PayrollAppException {

/*		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		Skill skill = (Skill) context.getBean("javaSkill");
		Employee employee = (Employee) context.getBean("employee");
		SpringTest test = (SpringTest) context.getBean("springTest");
		System.out.println(skill);
		System.out.println(test.getEmployeeService().getEmployees());*/

		AnnotationConfigApplicationContext context = new  AnnotationConfigApplicationContext(SpringTest.class);

		SpringTest test = (SpringTest) context.getBean("springTestInstance");
		System.out.println(test.getEmployeeService().getEmployees());

	}

}
