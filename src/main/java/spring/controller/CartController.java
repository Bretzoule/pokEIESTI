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
				panier.remove(productid);
			}

			request.getSession().setAttribute("panier", panier);
		}
		return "redirect:/panier";
	}

	@GetMapping("/panier")
	public String goToCart(HttpServletRequest request, Model model) {
		Object tmpPanier = request.getSession().getAttribute("panier");
		HashMap<Integer, Integer> panier;
		if ((tmpPanier != null) && (tmpPanier instanceof HashMap<?, ?>)) {
			panier = (HashMap<Integer, Integer>) tmpPanier;
			List<CartElement> elementPanier = new ArrayList<>();
			for (int key : panier.keySet()) {
				elementPanier.add(new CartElement(productService.getProduct(key), panier.get(key)));
			}
			model.addAttribute("elementPanier",elementPanier);
		}

		return "panier";
	}
}

