<%@ page import="ch.hesge.prog.model.Product" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: krys
  Date: 31.12.19
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css"  media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"  media="screen,projection"/>
    <title>Liste des products</title>
    <style>

        .products {
            width : 80%;
            min-width : 400px;
            max-width: 800px;
            margin: 0 auto;
        }
        .produitI {
            width: 50%;
        }
        .cartProduit{
            height: 40px;
            width: 40px;
            vertical-align: middle;
            text-align: center;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-light bg-light justify-content-between">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/Accueil">
            <img class="pageAccueil" src="${pageContext.request.contextPath}/ressources/accueil.png" >
        </a>
        <a href="${pageContext.request.contextPath}/checkout">
            <img class="panierBtn" src="${pageContext.request.contextPath}/ressources/panier.png" >
        </a>
    </nav>
    <div class="products">
        <p><h1>Liste des products</h1></p>
        <br/>
        <div class="produitI">
            <c:forEach var="product" items="${products}">
                <a href="${pageContext.request.contextPath}/produit?id=${product.id}">
                    <span class="product" style="background-image: url('${product.imageSrc}')">
                            <h2 class="prodTitle">${product.nom}</h2>
                            <div class="priceTag">
                                CHF ${product.prix}.-
                                <a href="${pageContext.request.contextPath}/checkout">
                                 <img class="cartProduit" src="../ressources/cart.jpg"/>
                                </a>
                            </div>
                    </span>
                </a>
            </c:forEach>
        </div>
    </div>

</body>
</html>
