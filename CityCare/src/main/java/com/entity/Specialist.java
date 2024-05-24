package com.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Specialist {

	private int id;
	private String specName;
	public Specialist(String specName) {
		super();
		
		this.specName = specName;
	}
	public Specialist() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
