<%-- 
    Document   : buynow
    Created on : 13 Jan, 2023, 4:58:35 PM
    Author     : Bhanu Yadav
--%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
          .outer
          {
           height: 400px;
           width: 85%;
           background-color: yellow;
           padding: 100px;
          }
          .img
          {
              height: 350px;
              width: 350px;
              background-color: grey;
             padding: 50px;
              
          }
          table
          {
              float: right;
              padding-right:  400px;
          }
          
        </style>
    </head>
    <body>
        <form action="order.jsp">
         <div class="adduser">
            
             <center>   
             <p><h1 style="color: black;">Buy Now</h1></p>
                <form action="add_user.jsp" method="post">
                <table>
                    <tr>
                        <td> product Id:</td>
                        <td><input type="text" name="name" value="${sessionScope.id}"></td>
                    </tr>
                    
                     <tr>
                        <td> Product Name :</td>
                        <td><input type="text" name="name" value="${sessionScope.name}"></td>
                    </tr>
                     
                    <tr>
                        <td>Product price:</td>
                        <td><input type="text" name="name" value="${sessionScope.price}"></td>
                    </tr>
                    <tr>
                        <td>Quantity:</td>
                        <td><input type="text" name="name" value="${sessionScope.quantity}"></td>
                    </tr>
                     <tr>
                        <td>User Name:</td>
                        <td><input type="text" name="name" value="${sessionScope.user_name}"></td>
                    </tr>
                     <tr>
                        <td>Mobile no:</td>
                        <td><input type="text" name="name" value="${sessionScope.mobile}"></td>
                    </tr>
                     <tr>
                        <td>E-mail:</td>
                        <td><input type="text" name="name" value="${sessionScope.email}"></td>
                    </tr>
                     <tr>
                        <td>Address:</td>
                        <td><input type="text" name="name" value="${sessionScope.address}"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="BUYNOW"/></td>
                    </tr>
                </table>
                    
                </form>
             
             </center>
                <div class="img"><img src=${sessionScope.image} height="350px" width="350"></div>
        </form>
        
            </div>
    </body>
</html>
