<%-- 
    Document   : product
    Created on : 11 Jan, 2023, 6:16:07 PM
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
        .main
    {
    height: 100%;
    width: 1000px;
    
    }
    .part
    {
    height: 260px;
    width: 180px;
    border: 5px solidred;
    margin-left: 50px;
    float: left;
    }
   .part p a
    {
    text-decoration: none;
    color: #111;
    font-size: large;
    font-family: 'arial';
    
    }
    .dd
    {
    height: 100%;
    width: 100%;
    
   
    }
    .kk
    {
        height: 500px;
        width: 100%;
    }
    </style>
    </head>
    <body>
    <center>
        <iframe src="header.jsp" class="dd" scrolling="no"></iframe>
        <div class="main">
        
        <%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecoomerce","root","");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select *from  product");
        
        %>
        
        <%
            while(rs.next())
            {
          %>
          
          <div class="part">
              <img src="img/<%=rs.getString(3)%>" height="200" width="180">
              <p ><a href="product_detail.jsp?pid=<%=rs.getString(1)%>" <title="check product details">shoes<%=rs.getInt(1)%></p>
          </div>
          
          
          
          <%   
            }
            con.close();
            }
            catch(Exception e)
             {
out.print(e);
}
     %>
    
        </div>
      <iframe src="footer.jsp" class="kk" scrollong="no"></iframe>
    </center>
    </body>
</html>
