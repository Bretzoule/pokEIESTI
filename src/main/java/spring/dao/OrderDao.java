package spring.dao;
 
import java.util.List;

import spring.model.Order;
import spring.model.User;

public interface OrderDao {
	void save(Order order);
	Order getOrder(long order_id);
	void update(Order order);
	void delete(long order_id);
	User getUser(String email);

	List<Order> getAllOrders();
}
