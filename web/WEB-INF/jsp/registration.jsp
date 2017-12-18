<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Registration</title>
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="head.jsp"/> 
        <div class="container">
            <div class="jumbotron">
                <div class="card">
                    <div class="card-header">
                        <p align="center"> Registration Form</p>
                    </div>
                    <div class="card-body">
                        <form:form action="register/save" modelAttribute="registerBean" method="POST" class="form-horizontal">


                            <div class="form-group">
                                <form:label path="namaLengkap" class="col-sm-4 control-label">Nama Lengkap</form:label>
                                    <div class="col-sm-4">
                                    <form:input path="namaLengkap" class="form-control" />
                                </div>
                            </div>

                            <div class="form-group">
                                <form:label path="email" class="col-sm-4 control-label">Email</form:label>
                                    <div class="col-sm-4">
                                    <form:input path="email" class="form-control" />
                                </div>
                            </div>

                            <div class="form-group">
                                <form:label path="username" class="col-sm-4 control-label">User Name</form:label>
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
            </div>
        </div>
    </body>
</html>
