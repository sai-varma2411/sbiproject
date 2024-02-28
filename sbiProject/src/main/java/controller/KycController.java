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

@WebServlet("/kyc")
public class KycController  extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		int id=Integer.parseInt(req.getParameter("id"));
	
		
		
		AccountDao accountDao=new AccountDao();
		Account dbaccount=accountDao.fetchById(id);
		if(dbaccount!=null)
		{
			req.setAttribute("dbData", dbaccount);
			RequestDispatcher dispatcher=req.getRequestDispatcher("kycUpdate.jsp");
			dispatcher.forward(req, resp);
			
		}
	}

}
