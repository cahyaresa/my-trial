package com.maven.trial.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.maven.trial.app.dao.EmployeeDao;
import com.maven.trial.app.model.Employee;

@Service
@Transactional
public class EmployeeService {

	@Autowired
	EmployeeDao employeeDao;
	
	//getAll
		public List<Employee> getAll(){
			
			return employeeDao.getAll();
			
		}
		
		//getOne
		public Employee getOne(int id) {
			Employee brg = new Employee();
			brg.setId(id);
			return employeeDao.getOne(brg);
		}
		
		//save
		public void save(Employee brg) {
			
			employeeDao.save(brg);
		}
		
		//delete
		public void delete(Employee brg) {
			employeeDao.delete(brg);
		}
		
		//update
		public void update(Employee brg) {
			employeeDao.update(brg);
		}

		public void saveOrupdate(Employee brg) {
			// TODO Auto-generated method stub
			employeeDao.saveOrupdate(brg);
		}
}
