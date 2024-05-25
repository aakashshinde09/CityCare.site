package com.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Doctor {

	private int id;
	private String name;
	private String dob;
	private String qualification;
	private String specialist;
	private String email;
	private String mobile;
	private String password;
	public Doctor(String name, String dob, String qualification, String specialist, String email, String mobile,
			String password) {
		super();
		this.name = name;
		this.dob = dob;
		this.qualification = qualification;
		this.specialist = specialist;
		this.email = email;
		this.mobile = mobile;
		this.password = password;
	}
	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Doctor(int id, String name, String dob, String qualification, String specialist, String email, String mobile,
			String password) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.qualification = qualification;
		this.specialist = specialist;
		this.email = email;
		this.mobile = mobile;
		this.password = password;
	}
	
	
	
	
}
