package ch.hesge.prog.servlet;

import ch.hesge.prog.model.Product;
import ch.hesge.prog.service.ProductService;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class CheckoutServlet extends HttpServlet {

    @EJB
    private ProductService productService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HashMap<Product, Integer> cart = (HashMap<Product, Integer>) req.getSession().getAttribute("cart");
        String action = (String) req.getParameter("action");
        String contextPath = req.getContextPath();
        String idProduct = req.getParameter("id");
        Product product = null;

        if (action == null) {
            // Stocker ton cart dans un attribut de requete
            req.setAttribute("cart", cart);
            req.getRequestDispatcher( "/WEB-INF/Checkout.jsp").forward(req, resp);
        } else {
            product = productService.getProduct(Long.parseLong(idProduct));
            if (action.equals("add")) {
                if (cart.containsKey(product)) {
                    cart.replace(product, cart.get(product) + 1);
                } else {
                    cart.put(product, 1);
                }
                //
                req.getSession().setAttribute("cart", cart);
                req.setAttribute("cart", cart);
                req.getSession().setAttribute("sumCart", getSumCart(cart));
                req.getSession().setAttribute("nbCartItems", getNbCartItems(cart));
                req.getRequestDispatcher( "/WEB-INF/Checkout.jsp").forward(req, resp);
            } else if (action.equals("remove")) {
                if (cart.get(product) > 1) {
                    cart.replace(product, cart.get(product) - 1);
                }
                //
                req.getSession().setAttribute("cart", cart);
                req.setAttribute("cart", cart);
                req.getSession().setAttribute("sumCart", getSumCart(cart));
                req.getSession().setAttribute("nbCartItems", getNbCartItems(cart));
                req.getRequestDispatcher( "/WEB-INF/Checkout.jsp").forward(req, resp);
            } else if (action.equals("delete")) {
                cart.remove(product);
                //
                req.getSession().setAttribute("cart", cart);
                req.setAttribute("cart", cart);
                req.getSession().setAttribute("sumCart", getSumCart(cart));
                req.getSession().setAttribute("nbCartItems", getNbCartItems(cart));
                req.getRequestDispatcher( "/WEB-INF/Checkout.jsp").forward(req, resp);
            }

        }
        //req.getRequestDispatcher(contextPath+"WEB-INF/Checkout.jsp").forward(req, resp);
    }

    private Double getSumCart(HashMap<Product, Integer> cart){
        Double sum = 0.0;
        for (Map.Entry<Product, Integer> entry : cart.entrySet()) {
            sum += entry.getValue() * entry.getKey().getPrix();
        }
        return sum;
    }

    private int getNbCartItems(HashMap<Product, Integer> cart){
        int nb = 0;
        for(Integer i : cart.values()){
            nb += i;
        }
        return nb;
    }

}
