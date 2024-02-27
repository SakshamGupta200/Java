<%-- 
    Document   : product_detail
    Created on : 12 Jan, 2023, 5:52:19 PM
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
          <%
              
            int id=Integer.parseInt(request.getParameter("pid"));
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecoomerce","root","");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select *from  product where productid='"+id+"'");
            if(rs.next())
            {
           
          %>
        
        <div class="outer">
           
             <table>
                  <h1>Product Detaile</h1>
                 <tr><td> product Id:=<%=rs.getInt(1)%></td></tr>
                    <tr><td>Product Name:=<%=rs.getString(2)%></td> </tr>                  
                  <tr><td>Product Price:=<%=rs.getInt(4)%></td></tr> 
                  <tr><td><a href="buynow.jsp"><input type="submit" value="buynow" </a></td></tr>
              
            </table>  
            <div class="img"><img src="img/<%=rs.getString(3)%>" height="350px" width="350"></div>
                
        </div>
         <%   
            }
            session.setAttribute("id",rs.getInt(1));
             session.setAttribute("name",rs.getString(2));
             session.setAttribute("image","img/"+rs.getString(3));
              session.setAttribute("price",rs.getInt(4));
              session.setAttribute("quantity",rs.getInt(5));
            con.close();
            }
            catch(Exception e)
             {
 out.print(e);
          }
     %>
          
          
          
          
        
    </body>
</html>
