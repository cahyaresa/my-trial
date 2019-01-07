package com.maven.trial.app.controller;


import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.maven.trial.app.model.Groupleader;
import com.maven.trial.app.service.GroupleaderService;

@Controller
@RequestMapping("/authentication")
public class AuthController {

	@Autowired
	HttpSession httpSession;
	
	@Autowired
	GroupleaderService groupleaderService;
	
	
	@RequestMapping(value="/getGl")
	@ResponseBody
	public List<Groupleader> getOneByUsername(@RequestParam(value="username", defaultValue="") String name ){
		return groupleaderService.getOneByName(name);
		
	}
	
	/*@RequestMapping(value = "/choose-outlet")
	public String choseOutlet(Model model, Principal principal) {
		String username = principal.getName();
		List<Employee> OneEmployee = euService.getOneByUsername(username);
		
		Employee empl = new Employee();
		for (Employee emp : OneEmployee) {
			empl = emp;
		}
		
		httpSession.setAttribute("employee", empl);
		//httpSession.setAttribute("username", empl.getUser().getUsername());
		
		List<Outlet> outlet = empl.getOutlet();
		System.out.println("jumlha outlet : "+outlet.size());
		model.addAttribute("outlets", outlet);
		httpSession.setAttribute("outlets",outlet);
		
		return "security/choose-outlet";
		
	}

	@RequestMapping(value="/starting-page")
	public String start(@RequestParam(value="id", defaultValue="") long id) {
		Outlet outlet = outletService.getOne(id);
		httpSession.setAttribute("outlet", outlet);
		return "aser";
	}*/
	
}
