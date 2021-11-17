package spring.service;

import java.util.List;

import spring.model.Order;

public interface OrderService {
	void save(Order order);
	Order getOrder(long id);
	void update(Order order);
	void delete(long id);

	List<Order> getAllOrders();
	
	//List by user?	
	//List<Order> listByType(User user);
	

}
