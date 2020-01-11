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
        productService.saveProduct(new Product("Fit Cat", "Chat méchant", 999.0, "../ressources/fitcat.jpg"));
        productService.saveProduct(new Product("DJ Cat", "Chat méchant", 200.0, "../ressources/djcat.jpg"));
        productService.saveProduct(new Product("Kit Cat", "Chat méchant", 5.75, "../ressources/kitcat.jpg"));
        productService.saveProduct(new Product("CAT", "Chat méchant", 80000.0, "../ressources/CAT.jpg"));
        productService.saveProduct(new Product("Cat Cat", "Chat méchant", 2.0, "../ressources/catcat.jpg"));
        productService.saveProduct(new Product("Big Cat", "Chat méchant", 5000.0, "../ressources/catcat.jpg"));
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
