package spring.service;

import java.util.List;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.dao.ProductDao;
import spring.model.Product;
import spring.model.Type;

@Service
public class ProductServiceImp implements ProductService {

	@Autowired
	private ProductDao productDao;

	@Transactional
	public void save(Product product) {
		productDao.save(product);
	}

	@Transactional
	public void delete(int id) {
		productDao.delete(id);
	}

	@Transactional(readOnly = true)
	public List<Product> list() {
		return productDao.list();
	}

	@Override
	public Product getProduct(int id) {
		return productDao.getProduct(id);
	}

	@Override
	public List<Product> listByType(Type type) {
		return productDao.listByType(type);
	}
	
	@Override
	public void update(Product product) {
		productDao.update(product);
	}

}
