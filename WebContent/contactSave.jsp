<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
   <%@page import="java.sql.*"%>

   <%
try {
	 String name = request.getParameter("Name");
	 String surname = request.getParameter("Surname:");
	 String telephone = request.getParameter("Telephone:");
	 String email = request.getParameter("Email");
	 String adress = request.getParameter("Adress");
	 String typedusang = request.getParameter("Typedusang");
	 String hopital = request.getParameter("Hopital");
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/dbbanque";
		String user = "root";
		String password= "MyNewPass";
		
		Connection con=DriverManager.getConnection(url, user, password);
		
		PreparedStatement stmt = con.prepareStatement("insert into contactform values(?, ?, ?, ?, ?, ?, ?)");
		stmt.setString(1,name);
		stmt.setString(2, surname);
		stmt.setString(3, telephone);
		stmt.setString(4, email);
		stmt.setString(5, adress);
		stmt.setString(6, typedusang);
		stmt.setString(7, hopital);
		
		int i= stmt.executeUpdate();
		if(i>0){
		%>
		<jsp:forward page="register.jsp"></jsp:forward>
		<% 
		}
		else{
		out.print("sorry!please fill correct detail and try again" );
		}
}
catch(Exception e){e.printStackTrace();
out.print("sorry!please fill correct detail and try again" );
}

%>