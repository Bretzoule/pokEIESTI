package spring.service;

import java.util.List;

import spring.model.User;

public interface UserService {
	void save(User user);

	void delete(long id);

	List<User> list();
	
	User getUser(long id);

}
