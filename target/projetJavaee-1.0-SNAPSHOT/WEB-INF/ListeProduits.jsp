<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css"  media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"  media="screen,projection"/>
    <title>Liste des produits</title>
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
            <img class="panierBtn" src="${pageContext.request.contextPath}/ressources/panier.png" ><span class="badge badge-primary">${nbCartItems}</span>
        </a>
    </nav>
    <div class="products">
        <p><h1>Liste des products</h1></p>
        <br/>
        <div class="container" >
            <div>

                <%--if(request.getParameter("payment")!=null){%>
                    <h2>Merci pour votre commande</h2>
                <%}--%>
            </div>
            <div class="row">
                <c:forEach var="product" items="${products}">
                    <div class="col-sm">
                        <a  href="${pageContext.request.contextPath}/produit?id=${product.id}">
                            <div class="product d-flex flex-column justify-content-between" style="background-image: url('${product.imageSrc}')">
                                <h2 class="prodTitle p-2">${product.nom}</h2>
                                <div class="priceTag custom-control-inline p-2 align-self-center">
                                    CHF ${product.prix}

                                    <a href="${pageContext.request.contextPath}/checkout?id=${product.id}&action=add">
                                        <img class="cartProduit" src="${pageContext.request.contextPath}/ressources/cart.jpg"/>
                                    </a>
                                </div>
                            </div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</body>
</html>
