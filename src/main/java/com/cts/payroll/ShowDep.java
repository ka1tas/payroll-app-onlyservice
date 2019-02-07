package com.cts.payroll;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.cts.payroll.bean.Department;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class ShowDep {

	public static void main(String[] args) {
		
		List<Department> dep = read();
		for(Department d: dep) {
			System.out.println(d.toString());
		}

	}
	

	public static SessionFactory getSessionFactory() {
		Configuration configuration = new Configuration().configure();
		
		configuration.addAnnotatedClass(com.cts.payroll.bean.Department.class);
		
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder()
				.applySettings(configuration.getProperties());
		SessionFactory sessionFactory = configuration
				.buildSessionFactory(builder.build());
		return sessionFactory;
	}
	
	public static List<Department> read() {
		Session session = getSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<Department> departments = session.createQuery("FROM Department").list();
		session.close();
		System.out.println("Found " + departments.size() + " departments");
		return departments;

	}	
	
	
	
}
