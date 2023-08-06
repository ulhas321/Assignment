<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String first_name=request.getParameter("fname");
String last_name =request.getParameter("lname");
String address =request.getParameter("add");
String city=request.getParameter("city");
String state=request.getParameter("state");
String email =request.getParameter("email");
String phone=request.getParameter("num");



try
{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ulhas","welcome");
			PreparedStatement ps=con.prepareStatement("insert into customer_list values(?,?,?,?,?,?,?)");
			ps.setString(1,first_name);
			ps.setString(2,last_name);
			ps.setString(3,address);
			ps.setString(4,city);
			ps.setString(5,state);
			ps.setString(6,email);
			ps.setString(7,phone);
			
			
			ResultSet rs=ps.executeQuery();
			if(rs.next()) 
			{ 
			response.sendRedirect("Customer_list.jsp");
			} 
			else 
			{ 
			out.print("Please insert valid name and password"); 
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