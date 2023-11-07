package org.jsp.usermvcdemo.service;

import org.jsp.usermvcdemo.dao.UserDao;
import org.jsp.usermvcdemo.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class UserService {
	@Autowired
	private UserDao userDao;

	public User saveUser(User user) {
		return userDao.saveUser(user);
	}

	public User updateUser(User user) {
		return userDao.updateUser(user);
	}

	public User findUser(int id) {
		return userDao.findById(id);
	}

	public boolean deleteUser(int id) {
		return userDao.deleteUser(id);
	}

	public User verifyUser(int id, String password) {
		return userDao.verifyUser(id, password);
	}

	public User verifyUser(long phone, String password) {
		return userDao.verifyUser(phone, password);
	}

	public User verifyUser(String email, String password) {
		return userDao.verifyUser(email, password);
	}

}
