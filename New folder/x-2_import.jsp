<%-- 
    Document   : x-1_table
    Created on : 26 Dec, 2022, 5:03:49 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:import url="x-2_book.xml" var="bookinfo"/>
        <x:parse xml="${bookinfo}" var="output"/>
        book id:
        <x:out select="$output/books/book[1]/id"/>
    </body>
</html>
