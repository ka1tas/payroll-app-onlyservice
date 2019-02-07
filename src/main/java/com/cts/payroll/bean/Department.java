package com.cts.payroll.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "department")
public class Department {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "de_id")
	private int departmentId;

	@Column(name = "de_name")
	private String departentname;

	public Department(int departmentId, String departentname) {
		super();
		this.departmentId = departmentId;
		this.departentname = departentname;
	}
	
	public Department(String departentname) {
		super();
		this.departentname = departentname;
	}
	
	public Department() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Department [departmentId=" + departmentId + ", departentname=" + departentname + "]";
	}

	public int getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	public String getDepartentname() {
		return departentname;
	}

	public void setDepartentname(String departentname) {
		this.departentname = departentname;
	}

}
