package spring.dao;

import java.util.List;

import spring.model.User;

public interface UserDao {
   void save(User user);
   void delete(long id);
   List<User> list();
}
