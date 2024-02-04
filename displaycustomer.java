package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.customermodel;

import java.io.IOException;
import java.util.List;

import DAO.customerdao;

@WebServlet("/displaycustomer")
public class displaycustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<customermodel>s=customerdao.getallcustomer();
		RequestDispatcher dispatcher=request.getRequestDispatcher("display.jsp");
		request.setAttribute("data",s);
		dispatcher.forward(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
