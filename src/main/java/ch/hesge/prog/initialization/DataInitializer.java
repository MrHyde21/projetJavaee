package ch.hesge.prog.initialization;

import ch.hesge.prog.model.Product;
import ch.hesge.prog.service.ProductService;

import javax.ejb.EJB;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class DataInitializer implements ServletContextListener {

    @EJB
    private ProductService productService;

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        if(productService.getProducts().isEmpty()) {
            productService.saveProduct(new Product("Fit Cat", "Chat méchant", 999, new String[]{"ressources/fitcat.jpg", "ressources/fitcat.jpg"}));
            productService.saveProduct(new Product("DJ Cat", "Chat méchant", 200, new String[]{"ressources/djcat.jpg", "ressources/djcat.jpg"}));
            productService.saveProduct(new Product("Kit Cat", "Chat méchant", 5, new String[]{"ressources/kitcat.jpg", "ressources/kitcat.jpg"}));
            productService.saveProduct(new Product("CAT", "Chat méchant", 80000, new String[]{"ressources/CAT.jpg", "ressources/CAT.jpg"}));
            productService.saveProduct(new Product("Cat Cat", "Chat méchant", 2, new String[]{"ressources/catcat.jpg", "ressources/catcat.jpg"}));
            productService.saveProduct(new Product("Big Cat", "Chat méchant", 5000, new String[]{"ressources/bigcat.jpg", "ressources/bigcat.jpg"}));
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
