package ch.hesge.prog.filter;

import ch.hesge.prog.model.Product;
import ch.hesge.prog.service.ProductService;

import javax.ejb.EJB;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;

public class DeleteProductRowFilter implements Filter {

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
        cart.remove(product);
        filterChain.doFilter(req, resp);
    }

    @Override
    public void destroy() {

    }
}
