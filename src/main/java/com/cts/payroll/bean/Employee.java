package com.cts.payroll.bean;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name="employee")
@NamedQueries({
	@NamedQuery(
        name="Employee.fetchAllEmployeeDetails",
        query="select distinct e from Employee e " + 
        		"left join fetch e.skillList " + 
        		"join fetch e.address " + 
        		"join fetch e.department"
 	),
	@NamedQuery(
	        name="Employee.fetchEmployeeDetails",
	        query="select distinct e from Employee e " + 
	        		"left join fetch e.skillList " + 
	        		"join fetch e.address " + 
	        		"join fetch e.department " + 
	        		"where e.id = :employeeId"
 	)
})
public class Employee {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "em_id")
	private int id;
	
	@Column(name="em_name")
	private String name;
	
	@Column(name="em_gender")
	private String gender;
	
	@Column(name="em_salary")
	public float salary;
	

	@Column(name="em_dob")
	@DateTimeFormat(pattern="dd-MM-yyyy")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy")
	@Temporal(TemporalType.DATE)
	private Date dateofBirth;
	
	@Column(name="em_email")
	private String email;
	

	@ManyToOne(fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	@JoinColumn(name="em_ad_id")
	private EmployeeAdress address;
	
	@ManyToOne(fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	@JoinColumn(name="em_de_id")
	private Department department;
	
	@ManyToMany(fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	@JoinTable(
		name="empskill",
		joinColumns={
			@JoinColumn(name="es_em_id")
		},
		inverseJoinColumns={
			@JoinColumn(name="es_sk_id")
		}
	)
	private List<Skill> skillList;

	@Transient
	private String skills;

	/*public Employee(int id, String name, String gender, float salary, Date dateofBirth,String email,EmployeeAdress address, Department department) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.salary = salary;
		this.dateofBirth = dateofBirth;
		this.email = email;
		this.department = department;
		this.address = address;
	}*/

	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public List<Skill> getSkillList() {
		return skillList;
	}

	public void setSkillList(List<Skill> skillList) {
		this.skillList = skillList;
	}
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public float getSalary() {
		return salary;
	}

	public void setSalary(float salary) {
		this.salary = salary;
	}

	public Date getDateofBirth() {
		return dateofBirth;
	}

	public void setDateofBirth(Date dateofBirth) {
		this.dateofBirth = dateofBirth;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	public EmployeeAdress getAddress() {
		return address;
	}

	public void setAddress(EmployeeAdress address) {
		this.address = address;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}
	
	public String getSkills() {
		skills = "";
		for (Skill skill : skillList) {
			skills += skill.getName() + ",";
		}
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}



	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", gender=" + gender + ", salary=" + salary + ", dateofBirth="
				+ dateofBirth + ", email=" + email +", address=" + address + ", department="
				+ department + "]"+"\n";
	}
	

	
	
	
	
	

}