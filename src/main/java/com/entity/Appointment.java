package com.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity
public class Appointment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int appointment_Id;
	
	@ManyToOne
    @JoinColumn(name = "user_Id", nullable = false)
    private User user;
	private String name;
	private String gender;
	private String age;
	private String email;
	private String phNo;
	private String diseases;
	
	@ManyToOne
    @JoinColumn(name = "doctor_Id", nullable = false)
    private Doctor doctor;
	private String address;
	private String status;
	
}
