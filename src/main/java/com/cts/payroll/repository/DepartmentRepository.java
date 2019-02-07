package com.cts.payroll.repository;

import org.springframework.data.repository.CrudRepository;

import com.cts.payroll.bean.Department;

public interface DepartmentRepository extends CrudRepository<Department, Integer> {

}
