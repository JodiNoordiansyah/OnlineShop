<%-- 
    Document   : product
    Created on : Dec 15, 2017, 1:54:59 PM
    Author     : user
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="v" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<e:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="head.jsp"/> 
        <div class="container">
      
            <c:forEach var="c" items="${products}">

                <div  align="center"  class="col-sm-4">
                    <h2>${c.namaProduct}</h2>
                    <a href="product/${c.id}"><image src="<c:url 
                    value="/resources/image/${c.image}" />"widht="200px" height="200px"/></a>
                        <h3>${c.namaProduct}</a></h3>
                            <h4>Rp: ${c.harga} </h4>
                            </div>

                        </c:forEach>

                        </div>

                        </body>
                        </html>
