<%-- 
    Document   : productdetail
    Created on : Dec 16, 2017, 8:06:55 PM
    Author     : Acer
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

            <table border="1">
                <tr>
                    <td>

                        <h1>${products.namaProduct}</h1>
                        <image style="float:left" src="<c:url value="/resources/image/${products.image}" />"widht="200px" height="200px"/>
                        Deskripsi :${products.deskripsi}<br/>
                        Harga: ${products.harga}<br/>
                        Stok: ${products.quantity}<br/>
                        <c:if test="${not empty sessionScope.user}">
                            <a href="${pageContext.request.contextPath}/cart"> add to chart</a>
                        </c:if>

                    </td>
                </tr>
            </table>


        </div>

    </body>
</html>
