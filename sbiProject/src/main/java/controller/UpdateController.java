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
@WebServlet("/update")
public class UpdateController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		AccountDao accountDao=new AccountDao();
		Account fechaccount=accountDao.fetchById(id);
		if(fechaccount!=null)
		{
			req.setAttribute("data", fechaccount);
			RequestDispatcher dispatcher=req.getRequestDispatcher("update.jsp");
			dispatcher.forward(req, resp);
			
		}
	}
}
