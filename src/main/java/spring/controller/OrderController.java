package spring.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.model.CartElement;
import spring.model.Order;
import spring.model.Product;
import spring.model.Role;
import spring.service.OrderService;
import spring.service.ProductService;
import spring.service.UserService;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ProductService productService;

	@GetMapping("/orders")
	public String index() {
		return ("orders");
	}

	@GetMapping("/orders/addOrder")
	public String addOrder() {
		return "addOrder";
	}
	
    @PostMapping("confirmOrder")
    public String confirmOrder(@RequestParam("idUser") String user_mail, @RequestParam("prixtotal") double prixtotal) {
		//on crée l'objet order puis on ajoute les elements
        Order order = new Order();
        order.setUser(userService.getUser(user_mail));
        order.setTotal_price(prixtotal);
        Date now = new Date();        
        order.setDate( now );
        orderService.save(order);
        
        return "redirect:validerCommande";
		//on retourne validerCommande pour lancer la deuxième fonction
    }
    
    
    @SuppressWarnings("unchecked")
	@GetMapping("/validerCommande")
	public String confirmOrder(HttpServletRequest request, Model model) {
		//cette fonction sert a soustraire la quantit� command�e au stocks
		Object tmpPanier = request.getSession().getAttribute("panier");
		HashMap<Integer, Integer> panier;
		if ((tmpPanier != null) && (tmpPanier instanceof HashMap<?, ?>)) {
			panier = (HashMap<Integer, Integer>) tmpPanier;
			List<CartElement> elementPanier = new ArrayList<>();
			for (int key : panier.keySet()) {
				//on parcours le panier
				Product product = productService.getProduct(key);
				int qtePanier = panier.get(key);
				int qteStock = product.getStock();
				if (qtePanier <= qteStock) {
					product.setStock(qteStock - qtePanier);
					productService.update(product);
				} else {
					model.addAttribute("messageError", "L'un de vos articles n'est pas en quantit� suffisante dans notre stock.");
					return "panier";
				}
			}
			panier.clear();
			//on supprime la table de hachage
			request.getSession().setAttribute("qteInsuffisante", "");
			model.addAttribute("messageSuccess", "Merci de votre commande !");
			return "panier";
		} else {
			model.addAttribute("messageError", "Votre panier est vide !");
			return "panier";
		}
		
	}
    
	@GetMapping("/listOrders")
	public String listOrdersAdmin(Model model, HttpServletRequest request) {
		if (request.getSession(false).getAttribute("userRole") == Role.ADMIN) {
			model.addAttribute("orderList", orderService.list());
			System.out.println(orderService.list());
			return ("listOrders");
		} else {
			return "redirect:403";
		}
	}

	@GetMapping("/removeOrder/{id}")
	public String removeProduct(@PathVariable("id") int id, Model model, HttpServletRequest request) {
		if (request.getSession(false).getAttribute("userRole") == Role.ADMIN) {
			orderService.delete(id);
			return ("redirect:/listOrders");
		} else {
			return "redirect:403";
		}
	}


}
