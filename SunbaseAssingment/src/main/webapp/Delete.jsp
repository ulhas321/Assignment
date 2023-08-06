<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<body>
<%
String first_name=request.getParameter("id");



try
{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ulhas","welcome");
			PreparedStatement ps=con.prepareStatement("delete from customer_list where first_name=? ");
			ps.setString(1,first_name);
			
			
			
			ResultSet rs=ps.executeQuery();
			if(rs.next()) 
			{ 
			response.sendRedirect("Customer_list.jsp?msg=deleted");
			} 
			else 
			{ 
				response.sendRedirect("Customer_list.jsp?msg=notdeleted");
			} 
			
			con.close();
		
		}
		catch (Exception ex)
		{
			System.out.println(ex);
		}
%>
</body>
</html>