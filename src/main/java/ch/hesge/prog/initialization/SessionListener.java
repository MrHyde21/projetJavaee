package ch.hesge.prog.initialization;
import ch.hesge.prog.model.Product;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.HashMap;

public class SessionListener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        httpSessionEvent.getSession().setAttribute("nbCartItems", 0);
        httpSessionEvent.getSession().setAttribute("sumCart", 0.0);
        httpSessionEvent.getSession().setAttribute("cart", new HashMap<Product, Integer>());
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {

    }
}
