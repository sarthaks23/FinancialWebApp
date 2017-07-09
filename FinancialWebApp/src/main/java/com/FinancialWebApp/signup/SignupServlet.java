package com.FinancialWebApp.signup;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.FinancialWebApp.database.dbConnector;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/signup")
public class SignupServlet extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.getRequestDispatcher("/WEB-INF/views/sign_up_page.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			if(!dbConnector.usernameInDb(request.getParameter("UN_Field"))){
				response.sendRedirect("/home");
			}else if(dbConnector.usernameInDb(request.getParameter("UN_Field"))){
				response.sendRedirect("/signup");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
