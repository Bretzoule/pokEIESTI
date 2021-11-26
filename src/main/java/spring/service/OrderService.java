package spring.service;

import java.util.List;

import spring.model.Order;

public interface OrderService {
	void save(Order order);
	Order getOrder(int order_id);
	void delete(int order_id);
	List<Order> list();
}
