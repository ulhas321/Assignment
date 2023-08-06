<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
div{
border:5px;
}
 h2{
        color: black;
        background-color: lightblue;
        text-align: center;
        padding: 5px;
        border: 3px red;
        font-size: 24px;
        }
       table, th, td {
  border: 1px solid;
}
</style>
<meta charset="ISO-8859-1">
<title>Customer List</title>
</head>
<body>

<h2>Customer List</h2>
<a href="Add_customer.jsp">Add Customer</a>
<br>
 <%


try 
{ 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ulhas","welcome"); 
PreparedStatement ps=con.prepareStatement("select * from customer_list"); 


ResultSet rs=ps.executeQuery(); 

out.println("<center><table><tr><td>first_name</td><td>last_name</td><td>Address</td><td>City</td><td>State</td><td>Email</td><td>Phone</td></tr>");
while(rs.next()){
	%>
	
<tr>
<td><%= rs.getString(1) %></td>
<td><%=rs.getString(2)%></td>
<td><%= rs.getString(3)%></td>
<td><%= rs.getString(4)%></td>
<td><%= rs.getString(5)%></td>
<td><%= rs.getString(6)%></td>
<td><%= rs.getString(7)%></td>
<td><a href="Delete.jsp?id=<%=rs.getString(1) %>">Delete</a></td>
<td> <a href="Edit.jsp?id=<%=rs.getString(1) %>">Edit</a></td>
</tr>

<% 
}

con.close(); 
} 
catch(Exception ex) 
{ 
out.print(ex); 
} 
 %>
 
 </table></center>
 <br>
 <br>
 <%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
%>
<center>Success: 201, Successfully Created</center>
<%} %>
<%

if("invalid".equals(msg)){
%>
<center>Somethingwent wrong</center>
<%} %>
<%

if("deleted".equals(msg)){
%>
<center>200,Deleted Successfully </center>
<%} %>
</body>
</html>