package spring.service;

import java.util.List;

import spring.model.User;

public interface UserService {
   void save(User user);

   List<User> list();
   
   void delete(long id);
}
