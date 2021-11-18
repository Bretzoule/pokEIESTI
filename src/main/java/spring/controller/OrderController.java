package spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;

import spring.service.OrderService;

public class OrderController {
	@Autowired
	private OrderService orderservice;

	@GetMapping("/orders")
	public String index() {
		return ("orders");
	}

	@GetMapping("/orders/addOrder")
	public String addOrder() {
		return "addOrder";
	}

}
