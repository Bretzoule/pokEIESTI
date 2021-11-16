package spring.dao;

import java.util.List;

import spring.model.Product;
import spring.model.Type;

public interface ProductDao {
	void save(Product product);

	void delete(long id);

	List<Product> list();

	Product getProduct(long id);

	List<Product> listByType(Type type);

	void update(Product product);
}
