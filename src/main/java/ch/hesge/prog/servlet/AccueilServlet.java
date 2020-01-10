package ch.hesge.prog.servlet;

import ch.hesge.prog.model.Product;
import ch.hesge.prog.service.ProductService;

import javax.annotation.Resource;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

//jdbc:hsqldb:file:/Users/krys/Library/Caches/IntelliJIdea2019.2/tomcat/TomEE_8_5_41_projetJavaee_2/data/hsqldb/hsqldb
public class AccueilServlet extends HttpServlet {

    final int SELECTION_SIZE = 3;

    @EJB
    private ProductService productService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = productService.getProducts();
        List selection= new ArrayList();
        for(int i=0;i<SELECTION_SIZE;i++){
            selection.add(products.get(i));
        }
        req.setAttribute("selection", selection);
        req.getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(req, resp);
    }
}
