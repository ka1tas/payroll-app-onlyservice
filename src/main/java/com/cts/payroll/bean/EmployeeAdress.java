package com.cts.payroll.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="address")
public class EmployeeAdress{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ad_id")
	private int id;
	
	@Column(name="ad_line1")
	private String address1;
	
	@Column(name="ad_line2")
	private String address2;
	
	@Column(name="ad_locality")
	private String locality;
	
	@Column(name="ad_city")
	private String city;
	
	@Column(name="ad_pincode")
	private String pincode;
	
	public EmployeeAdress(int id, String address1, String address2, String locality, String city, String pincode) {
		super();
		this.id = id;
		this.address1 = address1;
		this.address2 = address2;
		this.locality = locality;
		this.city = city;
		this.pincode = pincode;
	}

	public EmployeeAdress() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getLocality() {
		return locality;
	}

	public void setLocality(String locality) {
		this.locality = locality;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	@Override
	public String toString() {
		return "address1=" + address1 + ", address2=" + address2 + ", locality="
				+ locality + ", city=" + city + ", pincode=" + pincode;
	}
                
	
	
 
}
