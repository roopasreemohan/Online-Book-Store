package com.ust.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.ust.entity.User;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveUser(User theUser) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(theUser);
		
	}

	@Override
	public List<User> getUsers() {
		Session session = sessionFactory.getCurrentSession();
		Query<User> theQuery = session.createQuery("from User",User.class);
		List<User> userss = theQuery.getResultList();
		return userss;
	}

	@Override
	public User addLogin(User theUser) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query theQuery = session.createQuery("from User where username=:username and password=:password");
		theQuery.setParameter("username", theUser.getUsername());
		theQuery.setParameter("password", theUser.getPassword());
		User signin = (User) theQuery.uniqueResult();
		return signin;
	}

	@Override
	public User deleteUser(int theId) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		User theUser = currentSession.get(User.class, theId);
		currentSession.delete(theUser);
		return theUser;
		
	}

	@Override
	public User getUserUpdate(int theId) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		User theUser = currentSession.get(User.class, theId);
		
		return theUser;
		
	}

	@Override
	public User getIndividual(User theUser) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query theQuery = session.createQuery("from User where username=:username and password=:password");
		//theQuery.getParameter(0,getUsername())
		theQuery.getParameter("username");
		theQuery.getParameter("password");
		User indi = (User) theQuery.uniqueResult();
		return indi;
		// currentSession = sessionFactory.getCurrentSession();
		//Users hereUser = currentSession.get(Users.class, theUser);
		//return hereUser;
	}

	

}
