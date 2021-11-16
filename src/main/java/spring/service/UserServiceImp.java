package spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spring.dao.UserDao;
import spring.model.User;

@Service
public class UserServiceImp implements UserService {

	@Autowired
	private UserDao userDao;

	@Transactional
	public void save(User user) {
		userDao.save(user);
	}

	@Transactional(readOnly = true)
	public List<User> list() {
		return userDao.list();
	}

	public boolean testPassword(User user) {
		// Tester le pattern du password : EXP commence par MAJ
		return false;

	}

	@Transactional
	public void delete(long id) {
		userDao.delete(id);

	}

	@Override
	public User getUser(long id) {
		return userDao.getUser(id);
	}
}
