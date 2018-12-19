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

import com.maven.trial.app.model.Employee;
import com.maven.trial.app.service.EmployeeService;

@Controller
@RequestMapping(value = "/karyawan")
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;
	
	//====================================== VIEW DATA =================================================//
	
		//indextampilan barang
		@RequestMapping
		public String index(Model model){
			List<Employee> emps = employeeService.getAll();
			model.addAttribute("emps", emps);
			return "karyawan";
		}
		
		
		//====================================== DATA CONTROL ===============================================//
		
		
		//save
		@RequestMapping(value="/save", method=RequestMethod.POST)
		@ResponseBody
		public void save(@RequestBody Employee emp) {
			employeeService.save(emp);
		}
		
		//delete
		@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
		@ResponseStatus(HttpStatus.OK)
		public void delete(@PathVariable int id) {
			Employee emp = new Employee();
			emp.setId(id);
			employeeService.delete(emp);
		}
		
		@RequestMapping(value="/getone/{id}", method=RequestMethod.GET)
		@ResponseBody
		public Employee getOne(@PathVariable int id) {
			Employee emp = new Employee();
			emp.setId(id);
			return employeeService.getOne(id);
		}
		
		
		//update
		@RequestMapping(value="/update", method=RequestMethod.PUT)
		@ResponseStatus(HttpStatus.OK)
		public void update(@RequestBody Employee emp) {
			employeeService.saveOrupdate(emp);
		}
}
