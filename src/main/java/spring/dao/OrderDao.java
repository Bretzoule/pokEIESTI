package spring.dao;
 
import java.util.List;

import spring.model.Order;

public interface OrderDao {
	void save(Order order);
	Order getOrder(int order_id);
	void update(Order order);
	void delete(int order_id);
	List<Order> list();
}
