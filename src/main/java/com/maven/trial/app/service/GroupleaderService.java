package com.maven.trial.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.maven.trial.app.dao.GroupleaderDao;
import com.maven.trial.app.model.Groupleader;

@Service
@Transactional
public class GroupleaderService {

	@Autowired
	GroupleaderDao groupleaderDao;
	
	//getAll
		public List<Groupleader> getAll(){
			
			return groupleaderDao.getAll();
			
		}
		
		//getOne
		public Groupleader getOne(int id) {
			Groupleader gl = new Groupleader();
			gl.setId(id);
			return groupleaderDao.getOne(gl);
		}
		
		//save
		public void save(Groupleader gl) {
			
			groupleaderDao.save(gl);
		}
		
		//delete
		public void delete(Groupleader gl) {
			groupleaderDao.delete(gl);
		}
		
		//update
		public void update(Groupleader gl) {
			groupleaderDao.update(gl);
		}

		public void saveOrupdate(Groupleader gl) {
			// TODO Auto-generated method stub
			groupleaderDao.saveOrupdate(gl);
		}
}
