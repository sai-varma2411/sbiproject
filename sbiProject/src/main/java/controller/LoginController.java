package controller;

import java.io.IOException;

import dao.AccountDao;
import dto.Account;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/login")
public class LoginController extends HttpServlet{

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("email");
		String pasword=req.getParameter("password");
		AccountDao  accountDao=new  AccountDao();
		Account dBaccount=accountDao.fetchByEmail(email);
		if(dBaccount.getEmail().equals(email)&& dBaccount.getPassword().equals(pasword))
		{
			req.setAttribute("dbData", dBaccount);
			RequestDispatcher dispatcher= req.getRequestDispatcher("home.jsp");
			dispatcher.forward(req, resp);
		}
		else {
			req.setAttribute("message", "Login Invalid");
			RequestDispatcher dispatcher= req.getRequestDispatcher("login.jsp");
			dispatcher.forward(req, resp);
		}
		
		
	}

}
