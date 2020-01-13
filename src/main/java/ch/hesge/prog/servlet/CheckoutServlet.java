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
import java.util.Map;

public class CheckoutServlet extends HttpServlet {

    @EJB
    private ProductService productService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<Product, Integer> cart = (Map<Product, Integer>) req.getSession().getAttribute("cart");
        String action = (String) req.getParameter("action");
        String contextPath = req.getContextPath();
        String idProduct = req.getParameter("idProduct");
        Product product = null;

        if(idProduct!=null){
            product = productService.getProduct(Long.parseLong(idProduct));
        }else{
            System.out.println("pas de produit");
        }

        if (action == null) {
            req.getRequestDispatcher(contextPath + "WEB-INF/Checkout.jsp").forward(req, resp);
        } else if(action.equals("add")){
            if(cart.containsKey(product)){
                cart.replace(product, cart.get(product)+1);
            } else {
                cart.put(product, 1);
            }
            req.getSession().setAttribute("cart", cart.entrySet());
            req.getRequestDispatcher(contextPath + "WEB-INF/Checkout.jsp").forward(req, resp);
        } else if (action.equals("remove")){
            if(cart.get(product)>1){
                cart.replace(product, cart.get(product)-1);
            }
            req.getSession().setAttribute("cart", cart.entrySet());
            req.getRequestDispatcher(contextPath + "WEB-INF/Checkout.jsp").forward(req, resp);
        } else if (action.equals("delete")){
            cart.remove(product);
            req.getSession().setAttribute("cart", cart.entrySet());
            req.getRequestDispatcher(contextPath + "WEB-INF/Checkout.jsp").forward(req, resp);
        }
        //req.getRequestDispatcher(contextPath+"WEB-INF/Checkout.jsp").forward(req, resp);
    }
}
