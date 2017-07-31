package com.FinancialWebApp.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class dbConnector {

	private static Statement db()
			throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException {
		Connection connection = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/financialwebapp?useSSL=false&serverTimezone=PST", "financialwebapp",
				"financialwebapp");
		Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
		Statement statement = connection.createStatement();
		return statement;
	}

	public static boolean usernameInDb(String s)
			throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException {
		ResultSet resultset = db().executeQuery("SELECT * FROM users WHERE username = '" + s + "';");
		if (resultset.isBeforeFirst()) {
			return true;
		} else {
			return false;
		}
	}

	public static boolean passwordValid(String username, String password)
			throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException {
		ResultSet resultset = db().executeQuery("SELECT password FROM users WHERE username = '" + username + "';");
		resultset.next();
		if (password.equals(resultset.getString("password"))) {
			return true;
		} else {
			return false;
		}
	}

	public static int getZipcode(String username)
			throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException {
		ResultSet resultset = db().executeQuery("SELECT zip FROM users WHERE username = '" + username + "';");
		resultset.next();
		return resultset.getInt("zip");
	}
}
