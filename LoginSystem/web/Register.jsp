<%-- 
    Document   : Register
    Created on : 31 Aug, 2022, 11:36:23 AM
    Author     : Gryfindor
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           int id;
            String name,address,contact,email,user,password,cpass;
           id=Integer.parseInt(request.getParameter("id"));
           name = request.getParameter("name");
           address = request.getParameter("address");
          contact = request.getParameter("mobile");
           email = request.getParameter("email");
           user = request.getParameter("uid");
           password = request.getParameter("pass");
           cpass = request.getParameter("cpass");
             try{  
//step1 load the driver class 
Class.forName("com.mysql.jdbc.Driver");  
  
//step2 create  the connection object  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");  
  
//step3 create the statement object  
Statement stmt=con.createStatement();  
  
//step4 execute query   
String sql = "Insert into register values('"+id+"','"+name+"','"+address+"','"+contact+"','"+email+"','"+user+"','"+password+"','"+cpass+"')";
stmt.executeUpdate(sql);

out.println("Record insert successfully"); 

con.close();  
  
}catch(Exception e){ 
    System.out.println(e);
}
             response.sendRedirect("Login.html");
        %>
    </body>
</html>
