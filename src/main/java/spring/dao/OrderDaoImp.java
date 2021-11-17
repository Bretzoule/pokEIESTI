package spring.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import spring.model.Order;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class OrderDaoImp implements OrderDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(Order order) {
		sessionFactory.getCurrentSession().save(order);
	}

	@Override
	public Order getOrder(long id) {
		return ((Order) sessionFactory.getCurrentSession().createQuery("from orders where id = :id")
				.setParameter("id", id).uniqueResult());
	}

	@Override
	public void update(Order order) {
		// TODO Auto-generated method stub
		//ptn mais thomas mais rends le update ptn tfq
	}

	@Override
	public void delete(long id) {
		Session session = sessionFactory.getCurrentSession();
		Order orderToDelete = session.get(Order.class, id);
		session.delete(orderToDelete);
	}

	@Override
	public List<Order> getAllOrders() {
		@SuppressWarnings("unchecked")
		TypedQuery<Order> query = sessionFactory.getCurrentSession().createQuery("from orders");
		return query.getResultList();
	}

}
