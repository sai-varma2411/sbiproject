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
@WebServlet("/SigUp")
public class InsertController extends HttpServlet{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String acno=req.getParameter("acno");
		String name=req.getParameter("name");
		String age=req.getParameter("age");
		String phno=req.getParameter("phno");
		String addharNo=req.getParameter("addharNo");
		String village=req.getParameter("village");
		String distic=req.getParameter("Distic");
		String state=req.getParameter("state");
		String country=req.getParameter("country");
		String pincode=req.getParameter("pincode");
		String email=req.getParameter("email");
		String password=req.getParameter("pasw");
		
		Account account=new Account();
		account.setAccountNumber(acno);
		account.setAccountHolderName(name);
		account.setAge(age);
		account.setPhoneNumber(phno);
		account.setAddharNumber(addharNo);
		account.setVillage(village);
		account.setDistice(distic);
		account.setState(state);
		account.setCountry(country);
		account.setPincode(pincode);
		account.setEmail(email);
		account.setPassword(password);
		
		double balnce=0;
		String ifc="SBIN0004645";
		account.setBalance(balnce);
		account.setIfce_code(ifc);
		
		AccountDao accountDao=new AccountDao();
		Account saved=accountDao.insert(account);
		if(saved!=null)
		{
			req.setAttribute("message", "register sucesss");
			RequestDispatcher dispatcher=req.getRequestDispatcher("login.jsp");
			dispatcher.forward(req, resp);
			
		}
		
		
	}

}
