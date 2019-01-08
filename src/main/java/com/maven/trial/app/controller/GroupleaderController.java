package com.maven.trial.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.maven.trial.app.model.Groupleader;
import com.maven.trial.app.service.GroupleaderService;

@Controller
@RequestMapping(value = "/groupleader")
public class GroupleaderController {

	@Autowired
	GroupleaderService groupleaderService;
	
	//====================================== VIEW DATA =================================================//
	
		//indextampilan barang
		@RequestMapping
		public String index(Model model){
			List<Groupleader> gls = groupleaderService.getAll();
			model.addAttribute("gls", gls);
			return "groupleader";
		}
		
		
		//====================================== DATA CONTROL ===============================================//
		
		
		//save
		@RequestMapping(value="/save", method=RequestMethod.POST)
		@ResponseBody
		public void save(@RequestBody Groupleader gl) {
			groupleaderService.save(gl);
		}
		
		//delete
		@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
		@ResponseStatus(HttpStatus.OK)
		public void delete(@PathVariable String id) {
			Groupleader gl = new Groupleader();
			gl.setId(id);
			groupleaderService.delete(gl);
		}
		
		@RequestMapping(value="/getone/{id}", method=RequestMethod.GET)
		@ResponseBody
		public Groupleader getOne(@PathVariable String id) {
			Groupleader gl = new Groupleader();
			gl.setId(id);
			return groupleaderService.getOne(id);
		}
		
		
		//update
		@RequestMapping(value="/update", method=RequestMethod.PUT)
		@ResponseStatus(HttpStatus.OK)
		public void update(@RequestBody Groupleader gl) {
			groupleaderService.saveOrupdate(gl);
		}
}
