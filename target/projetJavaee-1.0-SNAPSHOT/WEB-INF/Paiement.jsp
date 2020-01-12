<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Ecran paiement</title>
</head>
<body>
    <p>
        <form method="post" action="${pageContext.request.contextPath}/paiement">
            <p>Somme : <%=request.getSession().getAttribute("totalAmount")%></p>
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
            <input type="number" name="monthValid" id="monthValid" placeholder="MM" size="2" maxlength="2" width="2"/>
            <br/>
            <label for="yearValid">Année de fin de validité</label>
            <input type="number" name="yearValid" placeholder="YY" id="yearValid" size="2" maxlength="2"/>
            <br/>
            <a href="${pageContext.request.contextPath}/produits">Retour au magasin</a>
            <button id="order">Commander</button>
        </form>

    </p>
</body>
</html>
