<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import bootstrap.css-->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"  media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css"  media="screen,projection"/>

    <title>Accueil</title>
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
    <div id="main">
        <h1><a href="${pageContext.request.contextPath}/produits">Welcome to e-shop!</a></h1>
        <p id="desc">
            <a href="${pageContext.request.contextPath}/produits">
                Contrary to popular belief, Lorem Ipsum is not simply random text.
                It has roots in a piece of classical Latin literature from 45 BC,
                making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia,
                looked up one of the more obscure Latin words, consectetur,
                from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.
                Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum"
                (The Extremes of Good and Evil) by Cicero, written in 45 BC.
                This book is a treatise on the theory of ethics, very popular during the Renaissance.
                The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
            </a>
        </p>
        <div class="container" >
            <div class="row">
                <c:forEach var="product" items="${selection}">
                    <div class="col-sm">
                        <a  href="${pageContext.request.contextPath}/produit?id=${product.id}">
                            <div class="product d-flex flex-column justify-content-between" style="background-image: url('${product.imageSrc[0]}')">
                                    <h2 class="prodTitle p-2">${product.nom}</h2>
                                    <div class="priceTag custom-control-inline p-2 align-self-center">
                                        CHF ${product.prix}
                                        <a href="${pageContext.request.contextPath}/checkout?id=${product.id}&action=add&page=home">
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
    <!--JavaScript at end of body for optimized loading-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/materialize.min.js"></script>
</body>
</html>
