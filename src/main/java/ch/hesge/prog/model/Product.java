package ch.hesge.prog.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String nom;
    private String description;
    private Double prix;
    private String imageSrc;

    public Product() { }

    public Product(String nom, String description, Double prix, String imageSrc) {
        this.nom = nom;
        this.description = description;
        this.prix = prix;
        this.imageSrc = imageSrc;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPrix(Double prix) {
        this.prix = prix;
    }

    public void setImageSrc(String imageSrc) {
        this.imageSrc = imageSrc;
    }

    public int getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public String getDescription() {
        return description;
    }

    public Double getPrix() {
        return prix;
    }

    public String getImageSrc() {
        return imageSrc;
    }

    @Override
    public int hashCode() {
        return Integer.hashCode(this.id);
    }

    @Override
    public boolean equals(Object obj) {
        return ((Product) obj).getId() == this.id;
    }

    @Override
    public String toString() {
        return "nom='" + nom + '\'' +
                ", imageSrc='" + imageSrc + '\'';
    }
}
