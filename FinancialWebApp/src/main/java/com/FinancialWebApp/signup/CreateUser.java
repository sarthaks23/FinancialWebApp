package com.FinancialWebApp.signup;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.FinancialWebApp.database.dbConnector;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/createuser")
public class CreateUser extends HttpServlet {
	dbConnector connector = new dbConnector();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(connector.duplicateUsername(request.getParameter("UN_Field")).equals("false")){
			response.sendRedirect("/home");
		}else if(connector.duplicateUsername(request.getParameter("UN_Field")).equals("true")){
			response.sendRedirect("/signup");
		}
	}
}
