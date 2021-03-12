package com.ust.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ust.dao.UserDao;
import com.ust.entity.User;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;

	@Override
	@Transactional
	public void saveUser(User theUser) {
		// TODO Auto-generated method stub
		userDao.saveUser(theUser);
		
	}

	@Override
	@Transactional
	public List<User> getUsers() {
		// TODO Auto-generated method stub
		return userDao.getUsers();
	}

	@Override
	@Transactional
	public User addLogin(User theUser) {
		// TODO Auto-generated method stub
		return userDao.addLogin(theUser);
	}

	@Override
	@Transactional
	public User deleteUser(int theId) {
		// TODO Auto-generated method stub
		return userDao.deleteUser(theId);
	}

	@Override
	@Transactional
	public User getUserUpdate(int theId) {
		// TODO Auto-generated method stub
		return userDao.getUserUpdate(theId);
				
	}

	@Override
	@Transactional
	public User getIndividual(User theUser) {
		// TODO Auto-generated method stub
		return userDao.getIndividual(theUser);
	}
	
	

}
