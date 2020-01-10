package ch.hesge.prog.initialization;

import ch.hesge.prog.model.Product;
import ch.hesge.prog.service.ProductService;

import javax.ejb.EJB;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.ArrayList;
import java.util.List;

@WebListener
public class DataInitializer implements ServletContextListener {

    @EJB
    private ProductService productService;

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        productService.saveProduct(new Product("Fit Cat", "Chat méchant", 100.0, "../ressources/product2.jpg"));
        productService.saveProduct(new Product("DJ Cat", "Chat méchant", 200.0, "../ressources/product2.jpg"));
        productService.saveProduct(new Product("Kit Cat", "Chat méchant", 300.0, "../ressources/product2.jpg"));
        productService.saveProduct(new Product("CAT", "Chat méchant", 400.0, "../ressources/product2.jpg"));
        productService.saveProduct(new Product("Cat Cat", "Chat méchant", 500.0, "../ressources/product2.jpg"));
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
