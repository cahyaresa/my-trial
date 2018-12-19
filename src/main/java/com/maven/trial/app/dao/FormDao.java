package com.maven.trial.app.dao;

import java.util.List;

import com.maven.trial.app.model.FormCnm;

public interface FormDao {

	//getAll
		public  List<FormCnm> getAll();
		
		//getOne
		public FormCnm getOne(FormCnm form);
		
		//save
		public void save(FormCnm form);
		
		//delete
		public void delete(FormCnm form);
		
		//update
		public void update(FormCnm form);

		public void saveOrupdate(FormCnm form);
}
