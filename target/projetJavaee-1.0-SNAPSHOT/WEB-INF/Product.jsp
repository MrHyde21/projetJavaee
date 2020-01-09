<%--
  Created by IntelliJ IDEA.
  User: krys
  Date: 08.01.20
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
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
        <h3>${product.nom}</h3>
        <img align="right" src="${product.imageSrc}">
        ${product.description}<br/>
        CHF ${product.prix}.-
    </p>
</body>
</html>
