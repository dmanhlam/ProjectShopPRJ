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
                <h3 >Payment Details</h3>
                <br>
                <div class="row">
                    <div class="col-md-8" style="border: 1px solid #ccc; border-radius: 5px ; padding: 1rem">
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
                                </tr>
                            </thead>
                            <tbody>                      
                                <c:forEach items="${carts}" var="ct">
                                <form action="update-quantity">
                                    <tr>
                                    <input type="hidden" name="productId" value="${ct.value.product.id}"/>
                                    <th scope="row">${ct.value.product.id}</th>
                                    <td><img src="${ct.value.product.imageUrl}" width="100px"/></td>
                                    <td>${ct.value.product.name}</td>
                                    <td><fmt:formatNumber  value="${ct.value.product.price}" type="currency" pattern="###,###,###"/>&#8363;</td>
                                    <!-- quantity cua gio hang nen ko .product-->
                                    <td>${ct.value.quantity} </td>
                                    <td><fmt:formatNumber  value="${ct.value.product.price*ct.value.quantity}" type="currency" pattern="###,###,###"/>&#8363;</td>                               
                                    </tr>
                                </form>
                            </c:forEach>                      
                            </tbody>
                        </table>

                        <h3>Total Amount: <fmt:formatNumber  value="${totalMoney}" type="currency" pattern="###,###,###"/>&#8363;</h3>
                    </div>
                    <div class="col-md-4" style="border: 1px solid #ccc; border-radius: 5px ; padding: 1rem"" >
                        <h3>Information of customers</h3>
                        <form action="pay" method="POST">                   
                            <div class="mb-3">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp">                               
                            </div>
                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone</label>
                                <input type="text" class="form-control" id="phone" name="phone" aria-describedby="emailHelp">                               
                            </div>
                            <div class="mb-3">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="address" name="address" aria-describedby="emailHelp">                               
                            </div>
                            <div class="mb-3">
                                <label for="note" class="form-label">Note</label>
                                <textarea class="form-control" id="note" name="note" rows="3"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Submit</button>
                        </form>
                    </div>
                </div>
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

