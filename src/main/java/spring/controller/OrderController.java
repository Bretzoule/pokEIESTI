package spring.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.model.Order;
import spring.model.User;
import spring.service.OrderService;
import spring.service.UserService;

public class OrderController {
	@Autowired
	private OrderService orderservice;
	
	@Autowired
	private UserService userservice;

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
		Order order = new Order();
		order.setUser(userservice.getUser(user_mail));
		order.setTotal_price(prixtotal);
		
		Date now = new Date();		
		order.setDate( now );

		return "redirect:/validerCommande";
	}

	@GetMapping("validerCommande")
	public String validerCommande() {
		return "redirect:/";

	}

}
