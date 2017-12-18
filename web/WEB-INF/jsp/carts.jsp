<%-- 
    Document   : productdetail
    Created on : Dec 16, 2017, 8:06:55 PM
    Author     : Acer
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="v" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <c:if test="${not empty sessionScope.user}">
                <table width="100%" border="1">
                    <tr align="center">
                        <th align="center">Product</th>
                        <th align="center">Nama</th>
                        <th align="center">Harga</th>
                        <th align="center">Aksi</th>    
                    </tr>    
                            <c:forEach var="d" items="${cart.carts}">

<tr>
                            <td align="center"><image src="<v:url value="/resources/image/${d.value.image}" />"widht="200px" height="200px"/></td>
                            <td align="center">${d.value.namaProduct}</td>
                            <td align="center">${d.value.harga}</td>
                            <td align="center"><a href="${pageContext.request.contextPath}/cart/${d.value.id}/${d.key}"> Hapus </a></td>

                        </tr>
                    </c:forEach>
                </table>


            </c:if>

        </td>


    </div>


</body>
</html>
