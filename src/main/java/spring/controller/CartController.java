package spring.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

//public class CartController {
	
//	public HashMap<Integer, Integer> creerPanier() {
//		HashMap<Integer, Integer> panier = new HashMap<Integer, Integer>();
//		return panier;
//	}
	
	
	@Controller
	public class CartController {
		
		@PostMapping("/testPanier")
	    public String testMestod(@RequestParam("action") String action,@RequestParam("productid") int productid, @RequestParam("quantite") int quantite, HttpServletRequest request)
	    {
	        
	        Object tmpPanier= request.getSession().getAttribute("panier");
	        HashMap<Integer, Integer> panier;
			int quantiteI;
			if(tmpPanier == null) {
				panier = new HashMap<Integer, Integer>();
			} else {
				panier = (HashMap<Integer, Integer>) tmpPanier;
			}
			if(action.equals("add")) {
				if(panier.containsKey(productid)) {
					quantiteI = panier.get(productid);
					panier.put(productid,quantiteI+quantite);
				} else {
					panier.put(productid,quantite);
				}
				
			} else if (action.equals("delete")) {
				panier.remove(productid);
			} 
			
			request.getSession().setAttribute("panier", panier);
	        return "/panier";
	    }
	}

//}
