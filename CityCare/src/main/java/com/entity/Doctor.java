package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;


@Data
@Entity
public class Doctor {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int doctor_Id;
	private String doctor_name;
	private String doctor_dob;
	private String doctor_qualification;
	private String doctor_specialist;
	
	@Column(unique = true)
	private String doctor_email;
	@Column(unique = true)
	private String doctor_mobile;
	private String doctor_password;
	
	
}
