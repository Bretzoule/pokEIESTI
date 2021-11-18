package spring.dao;

import java.util.List;

import spring.model.Order;

public interface OrderDao {
	void save(Order order);
	Order getOrder(long order_id);
	void update(Order order);
	void delete(long order_id);

	List<Order> getAllOrders();
}
