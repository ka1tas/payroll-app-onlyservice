package com.cts.payroll.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.payroll.PayrollAppException;
import com.cts.payroll.bean.Department;

import com.cts.payroll.repository.DepartmentRepository;
@Service
public class DepartmentService {

//private DepartmentDao departmentDao;
private DepartmentRepository departmentrepository;
	
	
/*
	@Autowired
	public void setEmployeeDao(DepartmentDao departmentDao) {
		this.departmentDao = departmentDao;
	}*/
	
	@Autowired
	public void setDepartmentRepository(DepartmentRepository departmentrepository){
		this.departmentrepository=departmentrepository;
	}
	
	
	@Transactional
	public List<Department> getDepartments(){
			//return departmentDao.getDepartments();
		return (List<Department>) departmentrepository.findAll();
		}
	
	@Transactional
	public Department getDepartmentById(int departmentId) {
		return departmentrepository.findById(departmentId).get();
	}
	
}