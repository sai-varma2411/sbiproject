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
@WebServlet("/addBalance")
public class AddBallance extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//front end balance
		double frontEndBlance=Double.parseDouble(req.getParameter("front-end-balance"));
		
		int id=Integer.parseInt(req.getParameter("id"));
		AccountDao dao=new AccountDao();
		Account dbaccount=dao.fetchById(id);
		//db balance
		double originalbalance=dbaccount.getBalance();
		
		String name =dbaccount.getAccountHolderName();
		String accountNumber=dbaccount.getAccountNumber();
		String age=dbaccount.getAge();
		String phno=dbaccount.getPhoneNumber();
		String adharno=dbaccount.getAddharNumber();
		String village=dbaccount.getVillage();
		String distic =dbaccount.getDistice();
		String state=dbaccount.getState();
		String pincode=dbaccount.getPincode();
		String country=dbaccount.getCountry();
		String email=dbaccount.getEmail();
		String password=dbaccount.getPassword();
		String ifc=dbaccount.getIfce_code();
		
		
		
		
		//logic
		double newBlance=originalbalance+frontEndBlance;
		
		
//		PrintWriter printWriter =resp.getWriter();
//		printWriter.println(id);
//		printWriter.println(originalbalance);
//		printWriter.println(newBlance);
		
		
		
		
		
		
		Account updatedAccount=new Account();
		
		updatedAccount.setAccountHolderName(name);
		updatedAccount.setAccountNumber(accountNumber);
		updatedAccount.setAge(age);
		updatedAccount.setPhoneNumber(phno);
		updatedAccount.setAddharNumber(adharno);
		updatedAccount.setVillage(village);
		updatedAccount.setDistice(distic);
		updatedAccount.setState(state);
		updatedAccount.setCountry(country);
		updatedAccount.setEmail(email);
		updatedAccount.setPassword(password);
		updatedAccount.setBalance(newBlance);
		updatedAccount.setIfce_code(ifc);
		updatedAccount.setPincode(pincode);
		//updatedAccount set
		Account  updatedaccount=dao.updateBalance(id, updatedAccount);
		if(updatedaccount!=null)
		{
			req.setAttribute("dbData", updatedaccount);
			RequestDispatcher dispatcher= req.getRequestDispatcher("home.jsp");
			dispatcher.forward(req, resp);
		}
		
		
	}

}
