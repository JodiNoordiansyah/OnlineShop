<%-- 
    Document   : successregistration
    Created on : Oct 16, 2017, 10:01:45 AM
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
            <div align="center" class="jumbotron">
            <h1>Registrasi berhasil</h1>
            <h2>${data.namaLengkap}</h2> 
            <h2>
              Please Login
            </h2>
        </div>
            </div>
    </body>
</html>
