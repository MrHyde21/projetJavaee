<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>${product.nom}</title>
    <style>
        .menuBar{
            width: 100%;
            height: 50px;
            background-color: aliceblue;
            padding: 0;
            margin: 0;
        }
        .panier {
             object-position: top right;
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
    <nav class="menuBar">
        <a href="${pageContext.request.contextPath}/Accueil">
            <img class="pageAccueil" src="../ressources/accueil.png" >
        </a>
        <a href="${pageContext.request.contextPath}/checkout">
            <img class="panier" src="../ressources/panier.png" >
        </a>
    </nav>

    <p>
        <h1>${product.nom}</h1>
        <img align="right" src="${product.imageSrc}">
        ${product.description}<br/>
        CHF ${product.prix}.-
        <a href="${pageContext.request.contextPath}/checkout?id=${product.id}&action=add">
            <img class="cartProduit" src="${pageContext.request.contextPath}/ressources/cart.jpg"/>
        </a>
    </p>
</body>
</html>
