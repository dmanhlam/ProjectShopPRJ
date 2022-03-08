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
                <p style="color: red">${error}</p>  
                <h2>List Products</h2>               
                <a class="btn btn-dark mb-2" 
                   data-bs-toggle="modal" 
                   data-bs-target="#exampleModal" 
                   href=""
                   >
                    <i class="bi bi-plus-circle" ></i> 
                    <span>Add New Product</span></a>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th scope="col">ID</th>
                            <th scope="col">Image</th>
                            <th scope="col">Name</th>
                            <th scope="col">Original Price</th>
                            <th scope="col">Current Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>                      
                        <c:forEach items="${listProducts}" var="lp">                             
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
<!--                                    <input type="hidden" name="productId" value="${lp.id}"/>-->
                                <th scope="row">${lp.id}</th>
                                <td><img  src="${lp.imageUrl}" width="100px"/></td>
                                <td>${lp.name}</td>
                                <td><fmt:formatNumber  value="${lp.oldprice}" type="currency" pattern="###,###,###"/>&#8363;</td>
                                <td><fmt:formatNumber  value="${lp.price}" type="currency" pattern="###,###,###"/>&#8363;</td>
                                <!-- quantity cua gio hang nen ko .product-->
                                <td>${lp.quantity} </td>
                                <td>
                                    <a href="loadproduct?id=${lp.id}"
                                       class="btn btn-outline-dark" title="Edit"><i class="bi bi-pencil"></i> </a>
                                    <a href="deletemanager?id=${lp.id}" class="btn btn-outline-dark" title="Delete" ><i class="bi bi-trash" ></i> </a>
                                </td>
                            </tr>

                        </c:forEach>                      
                    </tbody>
                </table>

            </div>
        </section>


        <!-- Modal Add new product -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add Product</h5>
                    </div>
                    <form action="addnewproduct" method="POST" class="my-login-validation mx-4" novalidate="" >                                               
                        <div class="form-group mb-3">
                            <label for="name">Name</label>
                            <input id="name" type="text" class="form-control" name="name" required autofocus>
                            <div class="invalid-feedback">
                                What's phone name?
                            </div>
                        </div>

                        <div class="form-group mb-3">
                            <label for="image">Image</label>
                            <input id="image" type="text" class="form-control" name="image" required autofocus>
                            <div class="invalid-feedback">
                                What's phone image?
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label for="originalprice">Quantity</label>
                            <input id="quantity" type="number" class="form-control" name="quantity" required autofocus>
                            <div class="invalid-feedback">
                                What's phone quantity?
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label for="originalprice">Original Price</label>
                            <input id="originalprice" type="number" class="form-control" name="originalprice" required autofocus>
                            <div class="invalid-feedback">
                                What's phone original price?
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label for="currentprice">Current Price</label>
                            <input id="currentprice" type="number" class="form-control" name="currentprice" required autofocus>
                            <div class="invalid-feedback">
                                What's phone current price?
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label for="description">Description</label>
                            <input id="description" type="text" class="form-control" name="description" required autofocus>
                            <div class="invalid-feedback">
                                What's phone description?
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label for="date">Created Date</label>
                            <input id="date" type="datetime" placeholder="yyyy/mm/dd" class="form-control" name="date" required>
                            <div class="invalid-feedback">
                                What's created date?
                            </div>
                        </div>
                        <div class="form-group mb-4">
                            <label for="category">Category</label>
                            <select name="category" class="form-select" style="width: 40%">
                                <c:forEach items="${listCategories}" var="c">
                                    <option value="${c.id}">${c.name}</option>
                                </c:forEach>
                            </select>    
                        </div>
                        <div class="modal-footer form-group m-0">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary btn-block" onclick="RegisterUser()">
                                Add
                            </button>
                        </div>

                    </form>

                </div>
            </div>
        </div>
       
        <!-- Footer-->  
        <%@include file="components/footer.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/my-login.js"></script>
        <script src="https://www.gstatic.com/firebasejs/7.17.1/firebase-app.js"></script>
    </body>
</html>

