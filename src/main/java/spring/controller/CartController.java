package spring.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.model.CartElement;
import spring.service.ProductService;

@Controller
public class CartController {

	@Autowired
	private ProductService productService;

	@SuppressWarnings("unchecked")
	@PostMapping("/testPanier")
	public String testMestod(@RequestParam("action") String action, @RequestParam("productid") int productid,
			@RequestParam("quantite") int quantite, HttpServletRequest request, Model model) {
		Object tmpPanier = request.getSession().getAttribute("panier");
		HashMap<Integer, Integer> panier;
		int quantiteI;
		if (tmpPanier == null) {
			//si le panier n'est pas crée on le crée
			panier = new HashMap<Integer, Integer>();
		} else {
			panier = (HashMap<Integer, Integer>) tmpPanier;
			//sinon panier est crée
		}
		if (productService.getProduct(productid) != null) {
			//on verifie que le produit existe
			if (action.equals("add")) {
				//si on veut ajouter des produits
				if (panier.containsKey(productid)) {
					//si la table de hachage contient deja la clé produit on met a jour la valeur
					quantiteI = panier.get(productid);
					if(productService.getProduct(productid).getStock() > quantiteI) {
						panier.put(productid, quantiteI + quantite);
						request.getSession().setAttribute("qteInsuffisante", "");
					} else {
						request.getSession().setAttribute("qteInsuffisante", "La quantit� est insuffisante");
					}
				} else {
					//la table ne contient pas la clé on crée l'association clé, objet
					panier.put(productid, quantite);
				}

			} else if (action.equals("delete")) {
				//si on veut retirer des produits
				quantiteI = panier.get(productid);
				if (quantiteI < 2) {
					//si il en reste on supprime
					panier.remove(productid);
				} else {
					//sinon on enleve 1
					panier.put(productid, quantiteI - 1);
				}
			}

			request.getSession().setAttribute("panier", panier);
			//on rajoute le panier aux variables de sessions
		}
		return "redirect:/panier";
		//on redirige vers panier
	}

	@SuppressWarnings("unchecked")
	@GetMapping("/panier")
	public String goToCart(HttpServletRequest request, Model model) {
		//quand on redirige vers panier on appele cette fonction
		Object tmpPanier = request.getSession().getAttribute("panier");
		HashMap<Integer, Integer> panier;
		double prixtotal = 0;
		if ((tmpPanier != null) && (tmpPanier instanceof HashMap<?, ?>)) {
			//on verifie que le panier est non nul et de la bonne classe
			panier = (HashMap<Integer, Integer>) tmpPanier;
			List<CartElement> elementPanier = new ArrayList<>();
			for (int key : panier.keySet()) {
				//on parcourt la table et on ajoute des elementsPaniers
				elementPanier.add(new CartElement(productService.getProduct(key), panier.get(key)));
				prixtotal += productService.getProduct(key).getPrice() * panier.get(key);
			}
			model.addAttribute("elementPanier", elementPanier);
			model.addAttribute("prixtotal", prixtotal);
		}

		return "panier";
	}
	
}
