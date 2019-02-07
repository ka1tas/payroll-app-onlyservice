package com.cts.payroll.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.payroll.PayrollAppException;
import com.cts.payroll.bean.Skill;
import com.cts.payroll.repository.SkillRepository;

@Service
public class SkillService {


	private SkillRepository skillRepository;
	

	@Autowired
	public void setEmployeeRepository(SkillRepository skillRepository) {
		this.skillRepository = skillRepository;
	}
	
	
	@Transactional
	public List<Skill> getSkills() {
			//return skillDao.getSkills();
		return(List<Skill>) skillRepository.findAll();
		}
	
	@Transactional
	public Skill getSkill(int skillId) {
		return skillRepository.findById(skillId).get();
	}

		
	
}
