package com.ust.service;

import java.util.List;

import com.ust.entity.Book;
import com.ust.entity.Order;

public interface BookService {
	//public void saveBook(String theId);
	public List<Book> getBooks();
	public void saveOrder(Order theOrder);
	public Book getBooks(int theId);
}
