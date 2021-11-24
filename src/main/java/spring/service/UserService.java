package spring.service;

import java.util.List;

import spring.model.User;

public interface UserService {
	void save(User user);

	void delete(String email);

	List<User> list();
	
	User getUser(String email);
	
	void update(User user);

}
