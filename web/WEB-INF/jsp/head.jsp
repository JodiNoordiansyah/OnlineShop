<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">IOS</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="${pageContext.request.contextPath}">Home</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                

                <c:if test="${not empty sessionScope.user}">
                   
     
                    <li><a href="#">Cart ${carts}</a></li>
                  
                 
                     
                    <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
                    
                    </c:if>  
                    <c:if test="${empty sessionScope.user}">
                        <li><a href="${pageContext.request.contextPath}/register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li><a href="${pageContext.request.contextPath}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </c:if>  

            </ul>
        </div>
    </nav>
    <div class="jumbotron">
        <h1 align = "center">Indocyber Online Shop</h1>  
       
        <!--a href="${pageContext.request.contextPath}/product">Lihat Product Kami</a-->
     

    </div>

</div>
   