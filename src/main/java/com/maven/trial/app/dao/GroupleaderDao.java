package com.maven.trial.app.dao;

import java.util.List;

import com.maven.trial.app.model.Groupleader;

public interface GroupleaderDao {

	//getAll
		public  List<Groupleader> getAll();
		
		//getOne
		public Groupleader getOne(Groupleader gl);
		
		//save
		public void save(Groupleader gl);
		
		//delete
		public void delete(Groupleader gl);
		
		//update
		public void update(Groupleader gl);

		public void saveOrupdate(Groupleader gl);
		
		//get one by name
		public List<Groupleader> getOneByName(String name);
}
