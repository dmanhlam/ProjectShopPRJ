<%-- 
    Document   : index
    Created on : Feb 26, 2022, 6:38:31 PM
    Author     : admin
--%>

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

        <!-- Section-->
        <!-- Product section-->
        <section class="py-5">
            <div class="container " style="min-height: 500px" >
                <c:choose>
                    <c:when test="${ sessionScope.carts.size()== null|| sessionScope.carts.size()==0}">
                        <h2 style="color: red" class="text-center">List Cart is Empty</h2>
                    </c:when>
                    <c:otherwise >
                        <h2>List Products</h2>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Image</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total Price</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>                      
                                <c:forEach items="${carts}" var="ct">
                                <form action="update-quantity">
                                    <tr>
                                    <input type="hidden" name="productId" value="${ct.value.product.id}"/>
                                    <th scope="row">${ct.value.product.id}</th>
                                    <td><img  src="${ct.value.product.imageUrl}" width="100px"/></td>
                                    <td>${ct.value.product.name}</td>
                                    <td><fmt:formatNumber  value="${ct.value.product.price}" type="currency" pattern="###,###,###"/>&#8363;</td>
                                    <!-- quantity cua gio hang nen ko .product-->
                                    <td><input size="3px" style="text-align: center" onchange="this.form.submit()" type="text" name="quantity" value="${ct.value.quantity} "/></td>
                                    <td><fmt:formatNumber  value="${ct.value.product.price*ct.value.quantity}" type="currency" pattern="###,###,###"/>&#8363;</td>
                                    <td><a href="delete-cart?productId=${ct.value.product.id}" class="btn btn-outline-dark"><i class="bi bi-trash"></i> <b>Delete</b></a></td>
                                    </tr>
                                </form>
                            </c:forEach>                      
                            </tbody>
                        </table>

                        <h3>Total Amount: <fmt:formatNumber  value="${totalMoney}" type="currency" pattern="###,###,###"/>&#8363;</h3>
                        <a href="pay" class="btn btn-success w-25 ">Pay</a>
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

