package testSang;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class bankServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public bankServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		 String name = request.getParameter("Name");
		 String surname = request.getParameter("Surname:");
		 String telephone = request.getParameter("Telephone:");
		 String email = request.getParameter("Email");
		 String adress = request.getParameter("Address");
		 String typedusang = request.getParameter("Typedusang");
		 String hopital = request.getParameter("Hopital");
		 
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/dbbanque";
		String user ="root";
		String password = "MyNewPass";
		 
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,user,password );
			PreparedStatement stmt = conn.prepareStatement("insert into info values(?, ?, ?, ?, ?, ?, ?)");
			stmt.setString(1,name);
			stmt.setString(2, surname);
			stmt.setString(3, telephone);
			stmt.setString(4, email);
			stmt.setString(5, adress);
			stmt.setString(6, typedusang);
			stmt.setString(7, hopital);
			int s = stmt.executeUpdate();
			 if(s > 0)
	                out.print("You are successfully registered");
	            
	} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
