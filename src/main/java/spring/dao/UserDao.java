package spring.dao;

import java.util.List;

import spring.model.User;

public interface UserDao {
	void save(User user);

	void delete(String email);

	void update(User user);

	List<User> list();

	User getUser(String email);
}
