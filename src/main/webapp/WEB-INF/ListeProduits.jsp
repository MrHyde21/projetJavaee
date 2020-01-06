<%@ page import="ch.hesge.prog.Produit" %>
<%@ page import="ch.hesge.prog.Cart" %><%--
  Created by IntelliJ IDEA.
  User: krys
  Date: 31.12.19
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des produits</title>
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
        .produits {
            width : 80%;
            min-width : 400px;
            max-width: 800px;
            margin: 0 auto;
        }
        .produitI {
            width: 50%;
        }
    </style>
</head>
<body>
    <div class="menuBar">
        <img class="pageAccueil" src="../ressources/accueil.png" >
        <img class="panier" src="../ressources/panier.png" >
    </div>
    <div class="produits">
        <div class="produitI">
            <%for (Produit i : new Cart().getListProduits()) {%>
                <% System.out.println("produit i: " + i.toString()); %>
                    <img class="produitI" src="<%=i.getImageSrc()%>">
            <%}%>
        </div>
    </div>

</body>
</html>
