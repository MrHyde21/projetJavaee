<%--
  Created by IntelliJ IDEA.
  User: krys
  Date: 09.01.20
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ecran paiement</title>
</head>
<body>
    <p>
        <form method="get" action="${pageContext.request.contextPath}/produits">
                <label for="name">Nom</label>
                <input type="text" name="name" id="name" placeholder="Ex. Jean Dupont" size="30" maxlength="10"/>
                <br/>
                <label for="email">Email</label>
                <input type="email" name="email" id="email" placeholder="exemple@exemple.xyz" size="30" maxlength="10"/>
                <br/>
                <label for="cardInfo">N° de carte de paiement</label>
                <input type="text" name="cardInfo" id="cardInfo" size="30" maxlength="30"/>
                <br/>
                <label for="monthValid">Mois de fin de validité</label>
                <input type="number" name="monthValid" id="monthValid" size="2" maxlength="2" width="2"/>
                <br/>
                <label for="yearValid">Année de fin de validité</label>
                <input type="number" name="yearValid" id="yearValid" size="2" maxlength="2"/>
                <br/>
        </form>
        <a href="${pageContext.request.contextPath}/produits">Retour au magasin</a>
        <a href="${pageContext.request.contextPath}/produits?order=true">
            <button id="order">Commander</button>
        </a>
    </p>
</body>
</html>
