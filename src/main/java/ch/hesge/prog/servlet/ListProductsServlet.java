package ch.hesge.prog.servlet;

import ch.hesge.prog.model.Product;
import ch.hesge.prog.service.ProductService;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ListProductsServlet extends HttpServlet {


    @EJB
    private ProductService productService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = productService.getProducts();
        req.setAttribute("products", products);

        req.getRequestDispatcher(req.getContextPath()+"WEB-INF/ListeProduits.jsp").forward(req, resp);
    }
}
