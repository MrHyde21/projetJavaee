<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Checkout</title>
</head>
<body>
    <div>
        <table border="1">
            <c:forEach items="${cart}" var="product">
                <tr>
                    <td>
                        ${product.key.getNom()}
                    </td>
                    <td>
                        ${product.value}
                        <a href="${pageContext.request.contextPath}/checkout?id=${product.getKey().getId()}&action=add">
                            <button id="${product.key.getId()}"> + </button>
                        </a>
                        <a href="${pageContext.request.contextPath}/checkout?id=${product.getKey().getId()}&action=remove">
                            <button id="${product.key.getId()}"> - </button>
                        </a>
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}/checkout?id=${product.getKey().getId()}&action=delete">
                            <button id="${product.key.getId()}">
                                <img src="${pageContext.request.contextPath}/ressources/poubelle.png" class="trash">
                            </button>
                        </a>
                    </td>
                    <td>
                        CHF <c:out value="${product.key.getPrix()*product.value}"/>.-
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div>
            <h3>Total CHF ${sumCart}.-</h3>
            <%--<h3>CHF <%=totalAmount%>.-</h3>--%>
        </div>
        <div>
            <a href="${pageContext.request.contextPath}/produits">Back to shopping</a>
            <a href="${pageContext.request.contextPath}/paiement">
                <button id="pay">Payer</button>
            </a>
        </div>
    </div>
</body>
</html>
