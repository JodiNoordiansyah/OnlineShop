<%-- 
    Document   : welcome
    Created on : Oct 13, 2017, 11:38:12 AM
    Author     : zulfahmi
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="head.jsp"/>        
        <div class="container">
            <div class="jumbotron">
            <h1 align="center">${msg}</h1> 
            <h2 align="center"><a href="${pageContext.request.contextPath}/product">Lihat Product Kami</a></h2>
            </div>
        </div>
    </body>
</html>
