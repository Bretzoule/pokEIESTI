package spring.dao;

import java.util.List;

import spring.model.User;

public interface UserDao {
	void save(User user);

	void delete(long id);

	void update(User user);

	List<User> list();

	User getUser(long id);
}
