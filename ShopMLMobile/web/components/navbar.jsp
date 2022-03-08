<%-- 
    Document   : navbar
    Created on : Feb 27, 2022, 2:36:53 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container px-4 px-lg-5">
        <h1 class="navbar-brand mb-0"  style="  color: indianred "href="#!">MANHLAM MOBILE</h1>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-2">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="shop">Home</a></li>             
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">                            
                        <li><a class="dropdown-item" href="shop">All Products</a></li>
                        <li><hr class="dropdown-divider" /></li>
                            <c:forEach items="${sessionScope.listCategories}" var="C">
                            <li><a class="dropdown-item"  href="filter-category?categoryId=${C.id}">${C.name}</a></li>
                            </c:forEach>    

                    </ul>
                </li>
                <c:if test="${sessionScope.signIn.role ==1}">
                <li class="nav-item"><a class="nav-link" href="manage">Manager Product</a></li>
                <li class="nav-item"><a class="nav-link" href="#!">Manager Account</a></li>
                </c:if>
            </ul>
            <!-- phan search -->
            <form action="search" class="d-flex mx-auto ">
                <input class="form-control me-2" 
                       type="search" 
                       placeholder="Search"
                       aria-label="Search"
                       name="keyword">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
            <!-- phan gio hang -->
            <div class="d-flex my-2 ">
                <c:if test="${sessionScope.signIn != null}">
                <a class="btn btn-outline-dark" href="carts" >
                    <i class="bi-cart-fill me-1"></i>
                    Cart
                    <span class="badge bg-dark text-white ms-1 rounded-pill">${sessionScope.carts.size()}</span>
                </a>
                </c:if>
                 <c:if test="${sessionScope.signIn == null}">
                     <a class="btn btn-outline-dark" href="login.jsp" >
                    <i class="bi-cart-fill me-1"></i>
                    Cart
                    <span class="badge bg-dark text-white ms-1 rounded-pill">${sessionScope.carts.size()}</span>
                </a>
                </c:if>
            </div>

            <!-- phan login -->
          
                <c:if test="${sessionScope.signIn != null}">
                    
                        <div class=" d-flex ms-lg-2 " style="color: black">Hello,${sessionScope.signIn.name}</div>
                                    
                    <a class="btn btn-outline-dark ms-lg-2 my-2" href="logout">Logout</a>
                </c:if>

                <c:if test="${sessionScope.signIn == null}">
                    <a class="btn btn-outline-dark ms-lg-2" href="login.jsp">Login</a>
                </c:if>

           

        </div>
    </div>
</nav>
