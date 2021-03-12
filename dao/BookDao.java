package com.ust.dao;

import java.util.List;

import com.ust.entity.Book;
import com.ust.entity.Order;

public interface BookDao {

	//public void saveBook(Book thebook);
	public List<Book> getBooks();
	public void saveOrder(Order theOrder);
	public Book getBooks(int theId);
}
