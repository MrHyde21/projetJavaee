package ch.hesge.prog.service;

import ch.hesge.prog.model.Product;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Stateless
public class ProductService {

    @PersistenceContext
    private EntityManager entityManager;

    public List<Product> getProducts(){
        return entityManager.createQuery("select p from Product p").getResultList();
    }

    public void saveProduct(Product p){
        entityManager.persist(p);
    }

    public Product getProduct(Long id) {
        return entityManager.find(Product.class, id);
    }
}
