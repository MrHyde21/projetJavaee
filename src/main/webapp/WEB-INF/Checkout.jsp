<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Map" %>
<%@ page import="ch.hesge.prog.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Checkout</title>
</head>
<body>
    <div>
        <table border="1">
            <c:forEach items="cart" var="product">
                <tr>
                    <td>
                        ${product.key.getNom()}
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}/checkout?idProduct=${product.getKey().getId()}&action=add">
                            <button id="${product.getKey().getId()}"> + </button>
                        </a>
                        <a href="${pageContext.request.contextPath}/checkout?idProduct=${product.getKey().getId()}&action=remove">
                            <button id="${product.getKey().getId()}"> - </button>
                        </a>
                    </td>
                    <td>
                        <form method="post" action="${pageContext.request.contextPath}/caddie/delete">
                            <button id="${product.getKey().getId()}">
                                <img src="../ressources/poubelle.png" class="trash">
                            </button>
                        </form>
                    </td>
                    <td>
                        CHF <c:out value="${product.getKey().getPrix()*product.getValue()}"/> .-
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div>
            <h3>Total</h3>
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
