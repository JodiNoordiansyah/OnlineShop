<%-- 
    Document   : login
    Created on : Oct 18, 2017, 2:48:11 PM
    Author     : zulfahmi
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        
            
            <div align="center"><b >${errMsg}</b></div>

                <div align="center" class="form-group">
                    Login Form
                </div>
                
                    <form:form action="${pageContext.request.contextPath}/login/check" modelAttribute="loginBean" method="POST" class="form-horizontal">

                        <div class="form-group">
                            <form:label  path="username" class="col-sm-4 control-label">Username</form:label>
                                <div class="col-sm-4">
                                <form:input path="username" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <form:label path="password" class="col-sm-4 control-label">Password</form:label>
                                <div class="col-sm-4">
                                <form:password path="password" class="form-control" />
                            </div>
                        </div>
                        <div align="center">
                            <form:button name="submitButton" value="Submit" class="btn btn-default">Submit</form:button>
                            </div>
     
                    </form:form>
            </div>
        </div>



</body>
</html>
