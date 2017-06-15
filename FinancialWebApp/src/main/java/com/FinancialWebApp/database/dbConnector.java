package com.FinancialWebApp.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class dbConnector {
	public String duplicateUsername(String s) {
		try {
			Connection connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/financialwebapp?useSSL=false", "financialwebapp", "financialwebapp");
			Statement statement = connection.createStatement();
			ResultSet resultset = statement.executeQuery("SELECT * FROM users WHERE username = '" + s + "';");
			if (resultset.isBeforeFirst()) {
				return "true";
			} else {
				return "false";
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return "error";
		}
	}
}
