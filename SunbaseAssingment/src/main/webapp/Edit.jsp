<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>

<% 
String first_name=request.getParameter("id");
 
try 
{ 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ulhas","welcome"); 
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer_list where first_name='"+first_name+"'"); 


while(rs.next()){
	%>
<hr>
        <h1>Edit Customer</h1>
            
        
        <center>
            
            <form action="Update.jsp" method="post">
                <h2 style="text-align: center;">Update </h2> <hr>
                
                <div>
                    <lable style="margin-right: 35px;">First Name:</lable>
                    <input type="text" value="<% out.println(first_name);%>" name="id" required>
                </div>
                <br>
                <div>
                    <lable style="margin-right: 35px ;">Last Name:</lable>
                    <input type="text" value="<%= rs.getString(2)%>" name="lname" required>
                </div> <br>
                <div>
                    <label style="margin-right: 50px" >Address:</label>
                     <input type="text" value="<%= rs.getString(3)%>" name="add">
                </div> <br>
                <div>
                    <label style="margin-right: 75px" >City:</label>
                     <input type="text" value="<%= rs.getString(4) %>" name="city" >
                </div> <br>
                <div>
                    <label style="margin-right: 70px" >State:</label>
                     <input type="text" value="<%= rs.getString(5)%>" name="state" >
                </div> <br>
                <div>
                    <lable style="margin-right: 65px;">Email:</lable>
                    <input type="email" value="<%= rs.getString(6)%>" name="email" >
                </div> <br>
               
                
                <div>
                    <label>Mobile Number:</label>
                    <input type="number" value="<%= rs.getString(7) %>" name="num" >
                </div> <br>
               
               <div>
                    <input type="submit" value="Update">&emsp;
                    
                   
                </div>
            </form>
        </center>
        <% 
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