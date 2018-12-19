package com.maven.trial.app.dao;

import java.util.List;

import com.maven.trial.app.model.Employee;;

public interface EmployeeDao {

	//getAll
	public  List<Employee> getAll();
	
	//getOne
	public Employee getOne(Employee emp);
	
	//save
	public void save(Employee emp);
	
	//delete
	public void delete(Employee emp);
	
	//update
	public void update(Employee emp);

	public void saveOrupdate(Employee emp);
}
