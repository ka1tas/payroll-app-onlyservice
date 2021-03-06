package com.cts.payroll.repository;

import org.springframework.data.repository.CrudRepository;

import com.cts.payroll.bean.User;

public interface UserRepository extends CrudRepository<User, Integer> {

	User findByUserName(String userName);

}
