package ch.hesge.prog.filter;
import ch.hesge.prog.model.Product;
import ch.hesge.prog.service.ProductService;

import javax.ejb.EJB;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;

public class AddProductFilter implements Filter {

    @EJB
    private ProductService productService;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpReq = (HttpServletRequest) req;
        Product product = productService.getProduct(Long.parseLong(req.getParameter("id")));
        Map<Product, Integer> cart = (Map<Product, Integer>) httpReq.getSession().getAttribute("cart");
        if(cart.containsKey(product)){
            cart.replace(product, cart.get(product)+1);
        } else {
            cart.put(product, 1);
        }
        filterChain.doFilter(req, resp);
    }

    @Override
    public void destroy() {

    }
}