<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <h1>BANQUEDUSANG</h1>
 
 <marquee dir="ltr"><font style="color: navy;">........</font></marquee>

				<form action="contactSave.jsp">
				
				<table><tr> <td>Name:</td><td><input type="text" name="Name"></td></tr>
				
				<tr> <td>Surname:</td><td><input type="text" name="Surname:"></td></tr>
				<tr> <td>Telephone:</td><td><input type="text" name="Telephone:"></td></tr>
				<tr> <td>Email:</td><td><input type="text" name="Email"></td></tr>
				<tr> <td>Address:</td><td><input type="text" name="Address:"></td></tr>
				<tr> <td>Typedusang:</td><td><input type="text" name="Typedusang:"></td></tr>
				<tr> <td>Hopital:</td><td><input type="text" name="Hopital:"></td></tr>
				<tr><td></td><td><input type="submit" value="Valider"></td></tr>
				</table>
			  <a href="register.jsp">
      <input type="button" value="Back" />
</a>	
				
</form>
<HR>
           
            
            <jsp:include page="footer.html"></jsp:include>
            
             <HR>

</body>
</html>