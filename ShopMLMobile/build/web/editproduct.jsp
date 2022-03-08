<%-- 
    Document   : register
    Created on : Feb 27, 2022, 11:36:22 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <title>My Login Page &mdash; Bootstrap 4 Login Page Snippet</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/my-login.css">
    </head>
    <body class="my-login-page">
        <section class="h-100">
            <div class="container h-100">
                <div class="row justify-content-md-center h-100">
                    <div class="card-wrapper">

                        <div class="card fat mt-2">
                            <div class="card-body ">
                                <h4 class="card-title">Edit Product</h4>
                                <form action="editproduct" method="POST"   > 
                                     <div class="form-group mb-3">
                                        <label for="name">ID</label>
                                        <input value="${edit.id}" id="id" type="text" class="form-control" name="id" required autofocus>
                                        <div class="invalid-feedback">
                                            What's phone id?
                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="name">Name</label>
                                        <input value="${edit.name}" id="name" type="text" class="form-control" name="name" required autofocus>
                                        <div class="invalid-feedback">
                                            What's phone name?
                                        </div>
                                    </div>

                                    <div class="form-group mb-3">
                                        <label for="image">Image</label>
                                        <input value="${edit.imageUrl}" id="image" type="text" class="form-control" name="image" required autofocus>
                                        <div class="invalid-feedback">
                                            What's phone image?
                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="originalprice">Quantity</label>
                                        <input value="${edit.quantity}" id="quantity" type="number" class="form-control" name="quantity" required autofocus>
                                        <div class="invalid-feedback">
                                            What's phone quantity?
                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="originalprice">Original Price</label>
                                        <input value="${edit.oldprice}" id="originalprice" type="number" class="form-control" name="originalprice" required autofocus>
                                        <div class="invalid-feedback">
                                            What's phone original price?
                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="currentprice">Current Price</label>
                                        <input value="${edit.price}" id="currentprice" type="number" class="form-control" name="currentprice" required autofocus>
                                        <div class="invalid-feedback">
                                            What's phone current price?
                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="description">Description</label>
                                        <input value="${edit.description}" id="description" type="text" class="form-control" name="description" required autofocus>
                                        <div class="invalid-feedback">
                                            What's phone description?
                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="date">Created Date</label>
                                        <input value="${edit.createdDate}" id="date" type="datetime" placeholder="yyyy/mm/dd" class="form-control" name="date" required>
                                        <div class="invalid-feedback">
                                            What's created date?
                                        </div>
                                    </div>
                                    <div class="form-group mb-4">
                                        <label for="category">Category</label>
                                        <select name="category" class="form-select" style="width: 60% " >
                                            <c:forEach items="${listCategories}" var="c">
                                                <option ${edit.categoryId} value="${c.id}">${c.name}</option>
                                            </c:forEach>
                                        </select>    
                                    </div>
                                    <div class="modal-footer form-group m-0">
                                        <a href="manage"> <button  type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button></a>       
                                        <button type="submit" class="btn btn-primary btn-block" onclick="RegisterUser()">
                                            Save
                                        </button>
                                  
                                            
                                    </div>

                                </form>
                            </div>
                        </div>
                        <div class="footer">
                            &copy; ManhLam &mdash; Mobile
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/my-login.js"></script>



        <script src="https://www.gstatic.com/firebasejs/7.17.1/firebase-app.js"></script>
    </body>
</html>
