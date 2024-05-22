package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.User;

public class UserDao {

	private Connection conn;

	public UserDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean UserRegister(User u) {
		boolean f = false;
		
		try {
			String sql = "insert into user_dtls (name,email,password) values(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			
			int rs = ps.executeUpdate();
			
			if(rs == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
}
