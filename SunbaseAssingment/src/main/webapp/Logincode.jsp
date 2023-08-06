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
String login_id=request.getParameter("id"); 
String password=request.getParameter("pwd"); 

try 
{ 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ulhas","welcome"); 
PreparedStatement ps=con.prepareStatement("select * from login where login_id=? and password=?"); 
ps.setString(1,login_id); 
ps.setString(2,password); 

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
catch(Exception ex) 
{ 
out.print(ex); 
} 
%>
</body>
</html>