package com.ust.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.ust.entity.Book;
import com.ust.entity.Order;
import com.ust.entity.User;
import com.ust.service.BookService;
import com.ust.service.UserService;

@Controller
@RequestMapping("/users")

public class UserController {
	

	@Autowired
	private UserService userService;
	@Autowired
	private BookService bookservice;
	
	@PostMapping("/saveUser")
	public String saveUser(@ModelAttribute("users") User theUser)
	{
	
		userService.saveUser(theUser);
		//return "redirect:/users/list";
		return "success";
	}

	@GetMapping("/form")
	public String showFormForAdd(Model theModel)
	{
	
		User theUser = new User();
		theModel.addAttribute("users", theUser);
		return "form";
		
	}
	
	@GetMapping("/login")
	public String showFormForLogin(Model theModel)
	{
	
		User theUser = new User();
		theModel.addAttribute("users", theUser);
		return "login";
		
	}

	
	@RequestMapping(path="/listbooks",method=RequestMethod.GET)
	public String listBooks(Model theModel)
	{
		List<Book> thebook = bookservice.getBooks();
		theModel.addAttribute("book", thebook);
		return "listbooks";
	}
	@RequestMapping(path="/list",method=RequestMethod.GET)
	public String listUsers(Model theModel)
	{
		List<User> theUsers = userService.getUsers();
		theModel.addAttribute("userss", theUsers);
		return "listInfo";
	}
	
	@PostMapping("/login")
	public String LoginPage(Model model)
	{
		//save the customer 
		User theUser =  new User();
		model.addAttribute("users",theUser);
		return "login";
	}
	
	@RequestMapping(value = "/signIn",method = RequestMethod.POST)
	public String loginCred(@Validated @ModelAttribute("users") User theUser,Model model) {
		model.addAttribute("users", theUser);
		
		User theuser = userService.addLogin(theUser);
		
		if(theuser!=null) {
			model.addAttribute("users", userService.addLogin(theUser));
			return "profile";
		}
		else {
			return "redirect:/users/login";
		}
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("userId") int theId,Model theModel)
	{
		User theUser = userService.getUserUpdate(theId);
		theModel.addAttribute("users",theUser);
		return "form";
	}
	
	@GetMapping("/delete")
	public String deleteUser(@RequestParam("userId") int theId) {
		userService.deleteUser(theId);
		return "index";
	}
	
	
	@RequestMapping(path="/listind",method=RequestMethod.GET)
	public String showForSuccess(Model theModel)
	{
		
		User theUser = new User();
		theModel.addAttribute("userss", theUser);
		return "success";
		
	}
	
	@GetMapping("/buy")
	public String showFormForBuy(@RequestParam("bookID") int theId, Model theModel) {
		Book theBook = bookservice.getBooks(theId);
		theModel.addAttribute("book", theBook);
		Order theOrder = new Order();
		theModel.addAttribute("order", theOrder);
		return "buyBooks";

	}
	
	@PostMapping("/userdetails")
	public String Buybook(@ModelAttribute("order") Order theOrder,@RequestParam("bookID") int theId,Model theModel)
	{
		Book theBook = bookservice.getBooks(theId);
		theModel.addAttribute("book", theBook);
		return "userdetails";
		
	}
	
	@PostMapping("/confirm")
	public String confirmation(@ModelAttribute("order") Order theOrder,@RequestParam("bookID") int theId,Model theModel)
	{
		
		Book theBook = bookservice.getBooks(theId);
		theOrder.setBook(theBook);
		bookservice.saveOrder(theOrder);
		return "successbook";
		
	}


}
