package ch.hesge.prog;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<Produit> listProduits = new ArrayList<>();

    public Cart () {
        listProduits.add(new Produit(1, "chat", "Chat méchant", 10.0, "../ressources/product2.jpg"));
        listProduits.add(new Produit(2, "chat", "Chat méchant", 10.0, "../ressources/product2.jpg"));
        listProduits.add(new Produit(3, "chat", "Chat méchant", 10.0, "../ressources/product2.jpg"));
        listProduits.add(new Produit(4, "chat", "Chat méchant", 10.0, "../ressources/product2.jpg"));
        listProduits.add(new Produit(5, "chat", "Chat méchant", 10.0, "../ressources/product2.jpg"));
        System.out.println("dans constructeur, liste des produits : ");
        System.out.println(listProduits.toString());
    }

    public List<Produit> getListProduits() {
        System.out.println("dans get liste produits");
        return listProduits;
    }
}
