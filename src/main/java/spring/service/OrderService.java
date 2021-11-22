package spring.service;

import java.util.List;

import spring.model.Order;

public interface OrderService {
	void save(Order order);
	Order getOrder(long order_id);
	void update(Order order);
	void delete(long order_id);
	public void confirmOrder(long order_id);

	List<Order> getAllOrders();

}
