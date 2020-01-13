<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="ch.hesge.prog.model.Product" %>

<%@ page contentType="text/html;charset=UTF-8" %>
    <%
        Map<Product, Integer> cart = (Map<Product, Integer>) request.getSession().getAttribute("caddie");
        int sum = 0;
        if(cart == null) {
        } else {
            List<Integer> values = new ArrayList(cart.values());
            for (Integer value: values) {
                sum += value;
            }
        }
    %>
    <%= sum %>