package spring.dao;

import java.util.List;

import spring.model.Product;
import spring.model.Type;

public interface ProductDao {
	void save(Product product);

	void delete(int id);

	List<Product> list();

	Product getProduct(int id);

	List<Product> listByType(Type type);

	void update(Product product);
}
