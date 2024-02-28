package controller;

import java.io.IOException;
import java.io.PrintWriter;

import dao.AccountDao;
import dto.Account;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/home")
public class HomeController  extends HttpServlet {
	
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		AccountDao accountDao=new AccountDao();
		Account account=accountDao.fetchById(id);
		if(account!=null)
		{
			req.setAttribute("dbData", account);
			RequestDispatcher dispatcher=req.getRequestDispatcher("home.jsp");
			dispatcher.forward(req, resp);
			
		}
		
	}

}
