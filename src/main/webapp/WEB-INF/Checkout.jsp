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
            <%
                Map<Product, Integer> cart = (Map<Product, Integer>)request.getSession().getAttribute("cart");
                Double totalAmount = 0.0;
                for (Map.Entry<Product, Integer> entry : cart.entrySet()) {
                    Product product = (Product)entry.getKey();
                    int qty = (Integer)entry.getValue();
                    Double rowAmount = product.getPrix() * qty;
                    totalAmount += rowAmount;
            %>
            <tr>
                <td>
                    <%=product.getNom()%>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/checkout?idProduct=${product.id}&action=add">
                        <button id="<%=product.getId()%>"> + </button>
                    </a>
                    <a href="${pageContext.request.contextPath}/checkout?idProduct=${product.id}&action=remove">
                        <button id="<%=product.getId()%>"> - </button>
                    </a>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/checkout?idProduct=${product.id}&action=delete">
                        <img src="${pageContext.request.contextPath}/ressources/poubelle.png" class="trash">
                    </a>
                </td>
                <td>
                    CHF <%=rowAmount.toString()%>.-
                </td>
            </tr>
            <%}
                request.getSession().setAttribute("totalAmount", totalAmount);%>
        </table>
        <div>
            <h3>Total</h3>
            <h3>CHF <%=totalAmount%>.-</h3>
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
