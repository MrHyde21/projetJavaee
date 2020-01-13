<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>${product.nom}</title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import bootstrap.css-->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"  media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css"  media="screen,projection"/>
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
    <div class="main">
        <p>
        <h1>${product.nom}</h1>
        <img align="right" src="${product.imageSrc[0]}">
        <img align="right" src="${product.imageSrc[1]}">
        ${product.description}<br/>
        CHF ${product.prix}.-
        <a href="${pageContext.request.contextPath}/checkout?id=${product.id}&action=add&page=detail">
            <img class="cartProduit" src="${pageContext.request.contextPath}/ressources/cart.jpg"/>
        </a>
        </p>
    </div>
</body>
</html>
