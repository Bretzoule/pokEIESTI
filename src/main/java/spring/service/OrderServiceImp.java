package spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spring.dao.OrderDao;
import spring.model.Order;

@Service
public class OrderServiceImp implements OrderService{

	@Autowired
	private OrderDao orderDao;

	@Transactional
	public void save(Order order) {
		orderDao.save(order);
	}

	@Transactional
	public void delete(long order_id) {
		orderDao.delete(order_id);
	}

	@Transactional(readOnly = true)
	public List<Order> getAllOrders() {
		return orderDao.getAllOrders();
	}
	
	@Transactional(readOnly = true)
	public Order getOrder(long order_id) {
		return orderDao.getOrder(order_id);
	}

	@Override
	public void update(Order order) {
		// TODO Auto-generated method stub	
	}
	
	@Override
	public void confirmOrder(long order_id) {
		// TODO Auto-generated method stub	
	}

}
