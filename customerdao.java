package DAO;
import java.sql.Connection;
import java.sql.DriverManager;

import model.customermodel;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class customerdao {
	public static int savecustomerdata(customermodel s) {
		int result=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","123");
			PreparedStatement pst=con.prepareStatement("INSERT INTO sms.customer_details(Firstname,Lastname,Address,City,State,email,phone) values(?,?,?,?,?,?,?)");
			pst.setString(1,s.getFirstname());
			pst.setString(2,s.getLastname());
			pst.setString(3,s.getAddress());
			pst.setString(4,s.getCity());
			pst.setString(5,s.getState());
			pst.setString(6,s.getEmail());
			pst.setString(7,s.getNumber());
			
			result=pst.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public static List<customermodel>getallcustomer(){
		List<customermodel>s=new ArrayList<customermodel>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","123");
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery("SELECT * from sms.customer_details");
			while(rs.next()) {
				customermodel customer=new customermodel();
				customer.setFirstname(rs.getString("firstname"));
				customer.setLastname(rs.getString("lastname"));
				customer.setAddress(rs.getString("address"));
				customer.setCity(rs.getString("city"));
				customer.setState(rs.getString("state"));
				customer.setEmail(rs.getString("email"));
				customer.setNumber(rs.getString("number"));
				s.add(customer);
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return s;
		
		
		
	}
	

}
