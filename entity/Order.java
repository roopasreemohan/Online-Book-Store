package com.ust.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="orderdetails")
public class Order implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8214571384347278113L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="orderId")
	private int orderId;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="bookid")
	private Book book;
	@Column(name="customername")
	private String customername;
	@Column(name="phonenumber")
	private String phonenumber;
	@Column(name="address")
	private String address;
	@Column(name="orderdate")
	private Date orderdate=new Date();
	@Column(name="quantity")
	private int quantity;
	
	
	public Book getBook() {
		return book;
	}
	

	public void setBook(Book book) {
		this.book = book;
	}
	public Order() {
		super();
	}


	public int getOrderId() {
		return orderId;
	}


	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}


	public String getCustomername() {
		return customername;
	}


	public void setCustomername(String customername) {
		this.customername = customername;
	}


	public String getPhonenumber() {
		return phonenumber;
	}


	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public Date getOrderdate() {
		return orderdate;
	}


	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}