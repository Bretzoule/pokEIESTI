package spring.service;

import java.util.List;

import spring.model.Product;

public interface ProductService {
   void save(Product product);
   void delete(long id);
   List<Product> list();
}
