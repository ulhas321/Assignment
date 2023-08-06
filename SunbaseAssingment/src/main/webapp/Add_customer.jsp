<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Customer</title>
</head>
<body>
<hr>
        
            
        <center>
        
            
            <form action="Register.jsp" method="post">
                <h2 style="text-align: center;">New  Customer</h2> <hr>
                
                <div>
                    <lable style="margin-right: 35px;">First Name:</lable><input type="text" name="fname" placeholder="Enter first Name" required>
                </div>
                <br>
                <div>
                    <lable style="margin-right: 35px ;">Last Name:</lable>
                    <input type="text" name="lname" placeholder="Enter last name"  required>
                </div> <br>
                <div>
                    <label style="margin-right: 50px" >Address:</label>
                     <input type="text" name="add" placeholder="Enter your address">
                </div> <br>
                <div>
                    <label style="margin-right: 75px" >City:</label>
                     <input type="text" name="city" placeholder="Enter your address">
                </div> <br>
                <div>
                    <label style="margin-right: 70px" >State:</label>
                     <input type="text" name="state" placeholder="Enter your address">
                </div> <br>
                <div>
                    <lable style="margin-right: 65px;">Email:</lable>
                    <input type="email" name="email" placeholder="Enter Email">
                </div> <br>
               
                
                <div>
                    <label>Mobile Number:</label>
                    <input type="number" name="num" placeholder="Enter Mobile Number">
                </div> <br>
               
               <div>
                    <input type="submit" value="Submit">&emsp;
                    
                   
                </div>
            </form>
        </center>
</body>
</html>