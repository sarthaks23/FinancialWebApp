package com.FinancialWebApp.login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.FinancialWebApp.database.dbConnector;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/log_in_page.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String username = request.getParameter("UN_Field");
		String password = request.getParameter("PW_Field");
		try {
			if(dbConnector.usernameInDb(username)){
				if(dbConnector.passwordValid(username, password)){
					request.getSession().setAttribute("username", username);
					request.getSession().setAttribute("zipcode", dbConnector.getZipcode(username));
					response.sendRedirect("/home");
				}else{
					request.setAttribute("errorMessage", "Username or password is invalid");
					request.getRequestDispatcher("/WEB-INF/views/log_in_page.jsp");
				}
			}
		} catch (SQLException e) {
			request.setAttribute("errorMessage", "There was an error with our website");
			e.printStackTrace();
		}
	}
}
