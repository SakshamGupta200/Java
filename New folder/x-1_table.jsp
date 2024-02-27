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
        <c:set var="vegetables">
        <vegetables>
            <vegetable>
                <name>onion</name>
                <price>40/kg</price>
            </vegetable>
            <vegetable>
                <name>potato</name>
                <price>30/kg</price>
            </vegetable>
            <vegetable>
                <name>tomato</name>
                <price>20/kg</price>
            </vegetable>
        </vegetables>
        </c:set>
        <x:parse xml="${vegetables}" var="output"/>
        vegetable name:
        <x:out select="$output/vegetables/vegetable[1]/name"/>
    </body>
</html>
