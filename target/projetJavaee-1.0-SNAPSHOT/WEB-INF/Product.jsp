<%@ page import="ch.hesge.prog.model.Product" %><%--
  Created by IntelliJ IDEA.
  User: krys
  Date: 08.01.20
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${product.nom}</title>
</head>
<body>
    <%Product product = (Product) request.getAttribute("product");%>
    <p><h3>${product.nom}</h3></p>
    <p>${product.description}</p>
    <p><${product.prix}</p>
    <p>
        <img src="<${product.imageSrc}">
    </p>
</body>
</html>
