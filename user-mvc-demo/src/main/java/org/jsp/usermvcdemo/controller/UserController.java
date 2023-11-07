package org.jsp.usermvcdemo.controller;

import org.jsp.usermvcdemo.dao.UserDao;
import org.jsp.usermvcdemo.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	@Autowired
	private UserDao udao;

	@RequestMapping(value = "/open-view")
	public String openView(@RequestParam String view) {
		return view;
	}

	@RequestMapping(value = "/load")
	public ModelAndView load(@RequestParam String page) {
		ModelAndView view=new ModelAndView();
		view.setViewName(page);
		view.addObject("u",new User());
		return view;
	}
	

	@PostMapping("/register")
	@ResponseBody
	public String saveUser(@ModelAttribute(name = "u") User user) {
		user = udao.saveUser(user);
		return "User saved with id :" + user.getId();
	}

	@PostMapping("/update")
	@ResponseBody
	public String updateUser(@ModelAttribute(name = "u") User user) {
		User u=udao.findById(user.getId());
		if(u!=null)
		{
			u = udao.update(user);
			return "User updateds";
		}
		return "Not found";
		
	}
	@PostMapping("/delete")
	@ResponseBody
	public String deleteUSer(@RequestParam int id) {
		boolean flag=udao.deleteUser(id);
		if(flag) {
			return "User deleted successfully";
		}
		return "User Not Found";
	}

	@GetMapping(value = "/find")
	public String findById(@RequestParam int id, Model model) {
		User u = udao.findById(id);
		if (u != null) {
			model.addAttribute("data", u);
			return "print";
		} else {
			model.addAttribute("message", "Invalid Id");
			return "error";
		}
	}

	@GetMapping(value = "/verifyById")
	public ModelAndView verifyById(@RequestParam int id, @RequestParam String password) {
		User u = udao.verifyUser(id, password);
		ModelAndView view = new ModelAndView();
		if (u != null) {
			view.setViewName("print");
			view.addObject("data", u);
			return view;
		} else {
			view.setViewName("error");
			view.addObject("message", "Invalid Id");
			return view;
		}
	}

	@GetMapping(value = "/verifyByPhone")
	public ModelAndView verifyByPhone(@RequestParam long phone, @RequestParam String password) {
		User u = udao.verifyUser(phone, password);
		ModelAndView view = new ModelAndView();
		if (u != null) {
			view.setViewName("print");
			view.addObject("data", u);
			return view;
		} else {
			view.setViewName("error");
			view.addObject("message", "Invalid Id");
			return view;
		}
	}

	@GetMapping(value = "/verifyByEmail")
	public ModelAndView verifyByEmail(@RequestParam String email, @RequestParam String password) {
		User u = udao.verifyUser(email, password);
		ModelAndView view = new ModelAndView();
		if (u != null) {
			view.setViewName("print");
			view.addObject("data", u);
			return view;
		} else {
			view.setViewName("error");
			view.addObject("message", "Invalid Id");
			return view;
		}
	}
}
