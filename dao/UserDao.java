package com.ust.dao;

import java.util.List;

import com.ust.entity.User;

public interface UserDao {
	
	public void saveUser(User theUser);
	public List<User> getUsers();
	public User addLogin(User theUser);
	public User getUserUpdate(int theId);
	public User deleteUser(int theId);
	public User getIndividual(User theUser);

}
