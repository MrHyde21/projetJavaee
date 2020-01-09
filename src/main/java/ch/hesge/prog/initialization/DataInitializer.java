package ch.hesge.prog.initialization;

import ch.hesge.prog.model.Product;
import ch.hesge.prog.service.ProductService;

import javax.ejb.EJB;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class DataInitializer implements ServletContextListener {

    @EJB
    private ProductService productService;

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        productService.saveProduct(new Product("chat1", "Chat méchant", 100.0, "../ressources/product2.jpg"));
        productService.saveProduct(new Product("chat2", "Chat méchant", 200.0, "../ressources/product2.jpg"));
        productService.saveProduct(new Product("chat3", "Chat méchant", 300.0, "../ressources/product2.jpg"));
        productService.saveProduct(new Product("chat4", "Chat méchant", 400.0, "../ressources/product2.jpg"));
        productService.saveProduct(new Product("chat5", "Chat méchant", 500.0, "../ressources/product2.jpg"));
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
