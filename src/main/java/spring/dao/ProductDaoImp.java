package spring.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import spring.model.Product;
import spring.model.Type;

@Repository @Transactional
public class ProductDaoImp implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(Product product) {
		sessionFactory.getCurrentSession().save(product);
	}

	@Override
	public List<Product> list() {
		@SuppressWarnings("unchecked")
		TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery("from Product");
		return query.getResultList();
	}

	@Override
	public void delete(int id) {
		Session session = sessionFactory.getCurrentSession();
		Product productTodelete = session.get(Product.class, id);
		session.delete(productTodelete);
	}

	@Override
	public Product getProduct(int id) {
		return ((Product) sessionFactory.getCurrentSession().createQuery("from Product where id = :id")
				.setParameter("id", id).uniqueResult());
	}

	@Override
	public List<Product> listByType(Type type) {
		@SuppressWarnings("unchecked")
		TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery("from Product where type = :type")
				.setParameter("type", type);
		return query.getResultList();
	}

	@Override
	public void update(Product product) {
	}

}
