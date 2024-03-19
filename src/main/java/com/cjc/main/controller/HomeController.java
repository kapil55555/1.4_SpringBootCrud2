package com.cjc.main.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.main.model.Student;
import com.cjc.main.service.HomeService;

@Controller
public class HomeController {
 
	@Autowired
	HomeService hs;
	@RequestMapping("/")
	public String preLogin() {
		return "login";
		
	}
	@RequestMapping("/newregister")
	public String preRegister() {
		return "register";
		
	}
	@RequestMapping( "/saveData")
	public String registerData(@ModelAttribute Student stu) {
	
		hs.saveData(stu);
		System.out.println("svae data");
		return "login";
		
	}
	
	@RequestMapping("/login")
	public String loginCheck(@RequestParam("uname")String un,@RequestParam("password")String ps,Model m) {
	if (un.equals("admin")&& ps.equals("admin123")) {
		hs.loginCheck(un,ps);
		
		List<Student> list =	hs.displayAllData();
		m.addAttribute("list",list);
			return "success";
	}
	if (un.equals(un)&& ps.equals(ps))  {
		List<Student> list =	hs.displayAllData();
		List<Student> li=new ArrayList<>();
		for(Student obj : list) {
			if (obj.getUname().equals(un)&& obj.getPassword().equals(ps))
			{
				li.add(obj);
				m.addAttribute("list",li);
				return "success";
			}
			
		}
		
	}
	else {
		return "login";
	}
	return "login";
	
	
  }
    @RequestMapping("/delete")
	public String deleteData(@ModelAttribute Student stu, Model m) {
		
    	hs.deleteData(stu);
    	List<Student> list =	hs.displayAllData();
		m.addAttribute("list",list);
			return "success";
		
	}
    @RequestMapping("/edit")
    public String editData(@RequestParam("uid") int uid,Model m) {
    Student s=	hs.editData(uid);
    m.addAttribute("list", s);
	return "edit";
    }
    @RequestMapping("/update")
    public String updateData(@ModelAttribute Student stu, Model m) {
    	hs.saveData(stu);
    	List<Student> list =	hs.displayAllData();
		m.addAttribute("list",list);
			return "success";
    }
    @RequestMapping("/add")
    public String addData() {
		return "register";
    	
    }

}
