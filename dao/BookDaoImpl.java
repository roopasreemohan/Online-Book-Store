package com.ust.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ust.entity.Book;
import com.ust.entity.Order;

@Repository
public class BookDaoImpl implements BookDao {
	
	@Autowired
	private SessionFactory sessionFactory;
/*
	@Override
	public void saveBook(Book thebook) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(thebook);

	}*/

	@Override
	public List<Book> getBooks() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query<Book> theQuery = session.createQuery("from Book",Book.class);
		List<Book> bookss = theQuery.getResultList();
		return bookss;
		
	}

	@Override
	public void saveOrder(Order theOrder) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theOrder);
		
	}

	@Override
	public Book getBooks(int theId) {
		// TODO Auto-generated method stub
		Session curretSession=sessionFactory.getCurrentSession();
		Book theBook=curretSession.get(Book.class, theId);
		return theBook;
	}

}
