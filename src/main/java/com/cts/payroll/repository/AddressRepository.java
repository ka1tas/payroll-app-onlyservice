package com.cts.payroll.repository;

import org.springframework.data.repository.CrudRepository;

import com.cts.payroll.bean.EmployeeAdress;

public interface AddressRepository extends CrudRepository<EmployeeAdress,Integer> {

}
