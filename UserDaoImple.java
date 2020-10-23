package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.conn.MyConnection;
import com.dto.User;

public class UserDaoImple implements UserDao{

	private MyConnection myConn;
	
	public UserDaoImple() {
		myConn = new MyConnection();
		
	}

	@Override
	public int insertUser(User user) {
		int i=0;
		try {
		Connection con = myConn.getConn();
		PreparedStatement s = con.prepareStatement("insert into user(full_name,user_name, password) values(?,?,?)");
		System.out.println(s);
		System.out.println("record added");
		s.setString(1,user.getFullName());
		s.setString(2,user.getUserName());
		s.setString(3, user.getUserPass());
		i= s.executeUpdate();
		s.close();
		}catch(ClassNotFoundException |SQLException e) {
			e.printStackTrace();
		}
		return i;
	
	
	}

	@Override
	public boolean login(User user) {
		boolean flag = false;
		try {
			Connection con = myConn.getConn();
			PreparedStatement s = con.prepareStatement(
					"select * from user where user_name = ? and password = ?");
			s.setString(1, user.getUserName());
			s.setString(2, user.getUserPass());
			ResultSet rs = s.executeQuery();
			if(rs.next()) {
				user.setUserId(rs.getInt("user_id")); 
				flag = true;
			}
			s.close();
		}catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
	

}