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
			@RequestParam("quantite") int quantite, HttpServletRequest request) {

		Object tmpPanier = request.getSession().getAttribute("panier");
		HashMap<Integer, Integer> panier;
		int quantiteI;
		if (tmpPanier == null) {
			panier = new HashMap<Integer, Integer>();
		} else {
			panier = (HashMap<Integer, Integer>) tmpPanier;
		}
		if (productService.getProduct(productid) != null) {
			if (action.equals("add")) {
				if (panier.containsKey(productid)) {
					quantiteI = panier.get(productid);
					panier.put(productid, quantiteI + quantite);
				} else {
					panier.put(productid, quantite);
				}

			} else if (action.equals("delete")) {
				quantiteI = panier.get(productid);
				if (quantiteI < 2) {
					panier.remove(productid);
				} else {
					panier.put(productid, quantiteI - 1);
				}
			}

			request.getSession().setAttribute("panier", panier);
		}
		return "redirect:/panier";
	}

	@SuppressWarnings("unchecked")
	@GetMapping("/panier")
	public String goToCart(HttpServletRequest request, Model model) {
		Object tmpPanier = request.getSession().getAttribute("panier");
		HashMap<Integer, Integer> panier;
		double prixtotal = 0;
		if ((tmpPanier != null) && (tmpPanier instanceof HashMap<?, ?>)) {
			panier = (HashMap<Integer, Integer>) tmpPanier;
			List<CartElement> elementPanier = new ArrayList<>();
			for (int key : panier.keySet()) {
				elementPanier.add(new CartElement(productService.getProduct(key), panier.get(key)));
				prixtotal += productService.getProduct(key).getPrice() * panier.get(key);
			}
			model.addAttribute("elementPanier", elementPanier);
			model.addAttribute("prixtotal", prixtotal);
		}

		return "panier";
	}
}
