package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.customerdao;
import model.customermodel;


@WebServlet("/addcustomer")
public class addcustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String email=request.getParameter("email");
		String number=request.getParameter("number");
		customermodel s=new customermodel();
		s.setFirstname(firstname);
		s.setLastname(lastname);
		s.setAddress(address);
		s.setCity(city);
		s.setState(state);
		s.setEmail(email);
		s.setNumber(number);
		System.out.println(s);
		int result=customerdao.savecustomerdata(s);
		if(result>0) {
			response.sendRedirect("index.jsp");
			
		}else {
			PrintWriter out= response.getWriter();
			out.println("data not added successfully");
		}
		
	}

}
