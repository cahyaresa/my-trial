package com.maven.trial.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.maven.trial.app.dao.PerformanceDao;
import com.maven.trial.app.model.Performance;

@Service
@Transactional
public class PerformanceService {

	@Autowired
	PerformanceDao performanceDao;
	
	//getAll
		public List<Performance> getAll(){
			
			return performanceDao.getAll();
			
		}
		
		//getOne
		public Performance getOne(String id) {
			Performance perform = new Performance();
			perform.setId(id);
			return performanceDao.getOne(perform);
		}
		
		//save
		public void save(Performance perform) {
			
			performanceDao.save(perform);
		}
		
		//delete
		public void delete(Performance perform) {
			performanceDao.delete(perform);
		}
		
		//update
		public void update(Performance perform) {
			performanceDao.update(perform);
		}

		public void saveOrupdate(Performance perform) {
			// TODO Auto-generated method stub
			performanceDao.saveOrupdate(perform);
		}
}
