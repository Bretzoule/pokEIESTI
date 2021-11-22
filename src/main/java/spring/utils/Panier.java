package spring.utils;

import java.util.HashMap;

public interface Panier {
	
	HashMap<Integer, Integer> creerPanier();
	void ajouter(int produit);
	void modifierQ(int produit, int quantite);
	void supprimer(int produit);
	

}
