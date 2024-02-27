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
        <table border="1" width="500">
            <tr>
                <th>book_id</th>
                <th>book_name</th>
                <th>book_writer</th>
                <th>book_price</th>
            </tr>
            <x:forEach var="book" select="$output/books/book">
                <x:choose>
                <x:when select="price>400">
                <tr>
                    <td style="background-color: pink"><x:out select="id"/></td>
                    <td style="background-color: blueviolet"><x:out select="name"/></td>
                    <td style="background-color: yellow"><x:out select="writer"/></td>
                    <td style="background-color: orange"><x:out select="price"/></td>
                </tr>
                </x:when>
                <x:otherwise>
                    <tr>
                        <td colspan="4">non</td>
                    </tr>
                </x:otherwise>
                </x:choose>
            </x:forEach>
        </table>
        
    </body>
</html>
