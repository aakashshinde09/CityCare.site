package com.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Appointment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int appointment_Id;
	private int user_Id;
	private String name;
	private String gender;
	private String age;
	private String email;
	private String phNo;
	private String diseases;
	private int doctor_Id;
	private String address;
	private String status;
	
}
