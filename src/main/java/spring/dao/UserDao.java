package spring.dao;

import java.util.List;

import spring.model.User;

public interface UserDao {
   void save(User user);
   List<User> list();
   
   void delete(long id);
}
