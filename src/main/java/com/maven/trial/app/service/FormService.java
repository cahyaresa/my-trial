package com.maven.trial.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.maven.trial.app.dao.FormDao;
import com.maven.trial.app.model.FormCnm;

@Service
@Transactional
public class FormService {

	@Autowired
	FormDao formDao;
	
	//getAll
		public List<FormCnm> getAll(){
			
			return formDao.getAll();
			
		}
		
		//getOne
		public FormCnm getOne(int id) {
			FormCnm form = new FormCnm();
			form.setId(id);
			return formDao.getOne(form);
		}
		
		//save
		public void save(FormCnm form) {
			
			formDao.save(form);
		}
		
		//delete
		public void delete(FormCnm form) {
			formDao.delete(form);
		}
		
		//update
		public void update(FormCnm form) {
			formDao.update(form);
		}

		public void saveOrupdate(FormCnm form) {
			// TODO Auto-generated method stub
			formDao.saveOrupdate(form);
		}
}
