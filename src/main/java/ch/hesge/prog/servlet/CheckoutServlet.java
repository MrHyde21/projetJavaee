package ch.hesge.prog.servlet;

import ch.hesge.prog.model.Product;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

public class CheckoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Dans doGet checkout");
        Map<Product, Integer> cartProducts = (Map<Product, Integer>) req.getSession().getAttribute("cartProducts");
        System.out.println(cartProducts);
        req.setAttribute("cartProducts", cartProducts);
        System.out.println("Après set attribute");
        req.getRequestDispatcher(req.getContextPath()+"WEB-INF/Checkout.jsp").forward(req, resp);
    }
}
