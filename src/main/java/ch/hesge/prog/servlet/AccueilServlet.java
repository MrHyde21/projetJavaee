package ch.hesge.prog.servlet;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;

//jdbc:hsqldb:file:/Users/krys/Library/Caches/IntelliJIdea2019.2/tomcat/TomEE_8_5_41_projetJavaee_2/data/hsqldb/hsqldb
public class AccueilServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(req, resp);
    }
}
