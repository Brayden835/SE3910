package com.javalec.spring;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MyController {
	
	@RequestMapping("/view")
	public String view() {
		return "/view";
	}
	
	
	@RequestMapping("/contentView")
	public String ContentView(Model model) {
	
		
			
		return "/contentView";
			
	}
	@RequestMapping(method = RequestMethod.POST, value = "/view")
	
	public String goStudent(HttpServletRequest httpServletRequest, Model model) {
		String id = httpServletRequest.getParameter("id");
		String password = httpServletRequest.getParameter("password");
		
		model.addAttribute("studentId:", id);
		model.addAttribute("Studentpassword:", password);
		
		return "/view";
	}
	
	

}
