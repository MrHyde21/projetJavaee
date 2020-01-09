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
    <title>Liste des products</title>
    <style>
        body{
            margin : 0
        }
        .menuBar {
            width: 100%;
            height: 50px;
            background-color: aliceblue;
            padding: 0;
            margin: 0;
        }
        .pageAccueil {
            object-position: top left;
        }
        .panier {
            object-position: top right;
        }
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
        .product{
            background-size: cover;
            padding: 20px;
            height: 220px;
            width: 250px;
            display: inline-block;
            margin-right: 11px;
            text-align: center;
        }
        .prodTitle{
            background: linear-gradient(90deg,#fce3ec,#ffe8cc);
            font-weight: bold;
            opacity: 80%;
            display: inline;
            position: relative;
            text-align: center;
        }
        .priceTag{
            text-align: center;
            justify-self: center;

            margin : auto;
            background: linear-gradient(90deg,#fce3ec,#ffe8cc);
            opacity: 80%;
            font-weight: bold;
            font-size: 25px;
            width: 75%;
            position:relative;
            top : 70%;
        }
    </style>
</head>
<body>
    <nav class="menuBar">
        <a href="${pageContext.request.contextPath}/Accueil">
            <img class="pageAccueil" src="../ressources/accueil.png" >
        </a>
        <a href="${pageContext.request.contextPath}/checkout">
            <img class="panier" src="../ressources/panier.png" >
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
