package spring.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.dao.ProductDao;
import spring.model.Product;
import spring.model.Type;

import spring.model.Order;

public class OrderServiceImp implements OrderService{

	@Override
	public void save(Order order) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Order getOrder(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Order order) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Order> getAllOrders() {
		// TODO Auto-generated method stub
		return null;
	}

}
