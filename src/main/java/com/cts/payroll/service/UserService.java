package com.cts.payroll.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.payroll.PayrollAppException;
import com.cts.payroll.bean.User;

import com.cts.payroll.repository.UserRepository;

@Service
public class UserService {
	

	private UserRepository userRepository;
	
	@Autowired
	public void setUserRepository(UserRepository userRepository){
		this.userRepository=userRepository;
	}
	


	
	@Transactional
	public User getUser(String userName){
			//return userDao.getUser(userName);
		return (User) userRepository.findByUserName(userName);
		
		}
		

	
}
