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
import com.maven.trial.app.model.Performance;
import com.maven.trial.app.service.GroupleaderService;
import com.maven.trial.app.service.PerformanceService;

@Controller
@RequestMapping(value = "/performance")
public class PerformanceController {

	@Autowired
	PerformanceService performanceService;
	
	@Autowired
	GroupleaderService groupleaderService;
	
	//====================================== VIEW DATA =================================================//
	
		//indextampilan barang
		@RequestMapping
		public String index(Model model){
			List<Performance> performs = performanceService.getAll();
			model.addAttribute("performs", performs);
			
			List<Groupleader> gls = groupleaderService.getAll();
			model.addAttribute("gle", gls);
			return "performance";
		}
		
		
		//====================================== DATA CONTROL ===============================================//
		
		
		//save
		@RequestMapping(value="/save", method=RequestMethod.POST)
		@ResponseBody
		public void save(@RequestBody Performance perform) {
			performanceService.save(perform);
		}
		
		//delete
		@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
		@ResponseStatus(HttpStatus.OK)
		public void delete(@PathVariable String id) {
			Performance perform = new Performance();
			perform.setId(id);
			performanceService.delete(perform);
		}
		
		@RequestMapping(value="/getone/{id}", method=RequestMethod.GET)
		@ResponseBody
		public Performance getOne(@PathVariable String id) {
			Performance perform = new Performance();
			perform.setId(id);
			return performanceService.getOne(id);
		}
		
		
		//update
		@RequestMapping(value="/update", method=RequestMethod.PUT)
		@ResponseStatus(HttpStatus.OK)
		public void update(@RequestBody Performance perform) {
			performanceService.saveOrupdate(perform);
		}
}
