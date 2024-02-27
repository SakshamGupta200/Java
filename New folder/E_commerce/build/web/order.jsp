<%-- 
    Document   : order
    Created on : 13 Jan, 2023, 6:01:28 PM
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
    </head>
    <body>
        <%
            
          String quantity=request.getParameter("quantity");
          String user_name=request.getParameter("user name");
           String email=request.getParameter("email");
            String mobile_no=request.getParameter("mobile no");
             String address=request.getParameter("address");
            try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecoomerce","root","");
            Statement stmt=con.createStatement();
           int i=stmt.executeUpdate("insert into buynow (quantity,user_name,email,mobile no,address) values('"+quantity+"','"+user name+"','"+email+"','"+mobile no+"','"+address+"')");
          
           out.print("record inserted");
        }
            catch(Exception e)
            {
                out.print(e);
            }
        %>
    </body>
</html>
