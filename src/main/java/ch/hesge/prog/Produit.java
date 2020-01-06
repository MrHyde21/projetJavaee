package ch.hesge.prog;

public class Produit {
    private int id;
    private String nom;
    private String description;
    private Double prix;
    private String imageSrc;

    public Produit(int id) {
        this.id = id;
    }

    public Produit(int id, String nom, String description, Double prix, String imageSrc) {
        this.id = id;
        this.nom = nom;
        this.description = description;
        this.prix = prix;
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
    public String toString() {
        return "nom='" + nom + '\'' +
                ", imageSrc='" + imageSrc + '\'';
    }
}
