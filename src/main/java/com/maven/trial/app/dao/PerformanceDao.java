package com.maven.trial.app.dao;

import java.util.List;

import com.maven.trial.app.model.Performance;

public interface PerformanceDao {

	//getAll
		public  List<Performance> getAll();
		
		//getOne
		public Performance getOne(Performance perform);
		
		//save
		public void save(Performance perform);
		
		//delete
		public void delete(Performance perform);
		
		//update
		public void update(Performance perform);

		public void saveOrupdate(Performance perform);
		
		public List<Performance> getPerformByNrpGl(String nrpGl);
}
