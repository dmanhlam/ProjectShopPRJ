<%-- 
    Document   : index
    Created on : Feb 26, 2022, 6:38:31 PM
    Author     : admin
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Locale"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>ManhLam Mobile</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        
    </head>
    <body>
        <!-- Navigation-->
        <%@include file="components/navbar.jsp" %>
        <!-- Header-->
        <header class=" ">
            <div class=" ">
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <a href="detail?productId=1"> <img src="img/header.jfif" class="d-block w-100" alt="..." ></a> 
                        </div>
                        <div class="carousel-item">
                            <a href="detail?productId=3"><img src="img/header2.jfif" class="d-block w-100" alt="..."></a> 
                        </div>
                        <div class="carousel-item">
                            <a href="detail?productId=36"><img src="img/header3.jfif" class="d-block w-100" alt="..."></a>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </header>
    <!-- Section-->
    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">
            <h1>List Products</h1>

            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                <c:forEach items="${listProducts}" var="P">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <a href="detail?productId=${P.id}">
                                <img class="card-img-top" src="${P.imageUrl}" alt="..." />
                            </a>                               
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">${P.name}</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <a id="price" class="text-muted text-decoration-line-through " ><fmt:formatNumber  value="${P.oldprice}" type="currency" pattern="###,###,###"/>&#8363;</a>
                                    <a id="price"><fmt:formatNumber  value="${P.price}" type="currency" pattern="###,###,###"/>&#8363;</a></a>                           
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent ">
                                <div class="text-center">
                                    <c:if test="${sessionScope.signIn == null}">
                                        <a class="btn btn-outline-dark mt-auto" 
                                           href="login.jsp">Add to cart</a>
                                    </c:if>
                                    <c:if test="${sessionScope.signIn != null}">
                                        <a class="btn btn-outline-dark mt-auto" 
                                           href="add-to-cart?productId=${P.id}">Add to cart</a>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <!-- pagination -->
            <c:choose>
                <c:when test="${listProducts == null  || listProducts.size() == 0}">
                    NOT FOUND
                </c:when>
                <c:otherwise>
                    <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                        <ul class="pagination">         
                            <c:forEach begin="1" end="${totalPage}" var="i">
                                <li class="page-item ${i==page?"active":""}"><a class="page-link" href="shop?page=${i}">${i}</a></li>
                                </c:forEach>

                        </ul>
                    </nav>
                </c:otherwise>
            </c:choose>

        </div>
    </section>
    <!-- Footer-->
    <%@include file="components/footer.jsp" %>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
   
        
</body>
</html>

