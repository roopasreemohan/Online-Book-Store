package com.ust.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ust.dao.BookDao;
import com.ust.entity.Book;
import com.ust.entity.Order;

@Service
public class BookServiceImpl implements BookService {
	
	@Autowired
	private BookDao bookdao;

	/*@Override
	@Transactional
	public void saveBook(Book thebook) {
		// TODO Auto-generated method stub
		bookdao.saveBook(thebook);
	}*/

	@Override
	@Transactional
	public List<Book> getBooks() {
		// TODO Auto-generated method stub
		return bookdao.getBooks();
	}

	@Override
	@Transactional
	public void saveOrder(Order theOrder) {
		// TODO Auto-generated method stub
		bookdao.saveOrder(theOrder);
	}

	@Override
	@Transactional
	public Book getBooks(int theId) {
		// TODO Auto-generated method stub
		return  bookdao.getBooks(theId);
	}

}
