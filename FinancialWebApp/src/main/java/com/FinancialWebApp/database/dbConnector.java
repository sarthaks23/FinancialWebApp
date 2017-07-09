package com.FinancialWebApp.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class dbConnector {
	
	private static Statement db() throws SQLException{
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/financialwebapp?useSSL=false",
				"financialwebapp", "financialwebapp");
		Statement statement = connection.createStatement();
		return statement;
	}
	
	public static boolean usernameInDb(String s) throws SQLException {
		ResultSet resultset = db().executeQuery("SELECT * FROM users WHERE username = '" + s + "';");
		if (resultset.isBeforeFirst()) {
			return true;
		} else {
			return false;
		}
	}
	
	public static boolean passwordValid(String username, String password) throws SQLException{
		ResultSet resultset = db().executeQuery("SELECT password FROM users WHERE username = '" + username + "';");
		if(password.equals(resultset.getString(2))){
			return true;
		}else{
			return false;
		}
	}
	
	public static int getZipcode(String username) throws SQLException{
		ResultSet resultSet = db().executeQuery("SELECT zip FROM users WHERE username = '" + username + "';");
		return resultSet.getInt(3);
	}
}
