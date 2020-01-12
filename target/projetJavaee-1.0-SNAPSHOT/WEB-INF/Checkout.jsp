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
                Map<Product, Integer> cart = (Map<Product, Integer>)request.getAttribute("cartProducts");
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
                    <form method="post" action="${pageContext.request.contextPath}/caddie/add">
                        <button id="<%=product.getId()%>"> + </button>
                    </form>
                    <form method="post" action="${pageContext.request.contextPath}/caddie/decrement">
                        <button id="<%=product.getId()%>"> - </button>
                    </form>
                </td>
                <td>
                    <form method="post" action="${pageContext.request.contextPath}/caddie/delete">
                        <button id="<%=product.getId()%>">
                            <img src="../ressources/poubelle.png" class="trash">
                        </button>
                    </form>
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
