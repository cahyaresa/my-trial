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

import com.maven.trial.app.model.FormCnm;
import com.maven.trial.app.service.FormService;

@Controller
@RequestMapping(value = "/form")
public class FormController {

	@Autowired
	FormService formService;
	
	//====================================== VIEW DATA =================================================//
	
		//indextampilan barang
		@RequestMapping
		public String index(Model model){
			List<FormCnm> forms = formService.getAll();
			model.addAttribute("forms", forms);
			return "form";
		}
		
		
		//====================================== DATA CONTROL ===============================================//
		
		
		//save
		@RequestMapping(value="/save", method=RequestMethod.POST)
		@ResponseBody
		public void save(@RequestBody FormCnm form) {
			formService.save(form);
		}
		
		//delete
		@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
		@ResponseStatus(HttpStatus.OK)
		public void delete(@PathVariable int id) {
			FormCnm form = new FormCnm();
			form.setId(id);
			formService.delete(form);
		}
		
		@RequestMapping(value="/getone/{id}", method=RequestMethod.GET)
		@ResponseBody
		public FormCnm getOne(@PathVariable int id) {
			FormCnm form = new FormCnm();
			form.setId(id);
			return formService.getOne(id);
		}
		
		
		//update
		@RequestMapping(value="/update", method=RequestMethod.PUT)
		@ResponseStatus(HttpStatus.OK)
		public void update(@RequestBody FormCnm form) {
			formService.saveOrupdate(form);
		}
}
