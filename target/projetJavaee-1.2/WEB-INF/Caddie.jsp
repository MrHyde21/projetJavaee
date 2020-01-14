<%@ page import="java.util.Map" %>
<%@ page import="ch.hesge.prog.model.Product" %>

<%@ page contentType="text/html;charset=UTF-8" %>
    <%
        Map<Product, Integer> cart = (Map<Product, Integer>) request.getSession().getAttribute("cart");
        int sum = 0;
        if(cart != null){
            for (Map.Entry<Product, Integer> entry : cart.entrySet()) {
                sum += entry.getValue();
            }
        }
    %>
    <%= sum %>