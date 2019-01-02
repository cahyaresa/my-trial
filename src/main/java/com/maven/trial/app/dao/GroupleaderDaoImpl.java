package com.maven.trial.app.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.maven.trial.app.model.Groupleader;

@Repository("GroupleaderDao")
@Transactional
public class GroupleaderDaoImpl implements GroupleaderDao  {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	
	public List<Groupleader> getAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		return session.createCriteria(Groupleader.class).list();
	}

	
	public Groupleader getOne(Groupleader gl) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		return session.get(Groupleader.class, gl.getId());
	}

	
	public void save(Groupleader gl) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(gl);
		session.flush();
	}

	
	public void delete(Groupleader gl) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(gl);
		session.flush();
	}

	
	public void update(Groupleader gl) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(gl);
		session.flush();
	}

	
	public void saveOrupdate(Groupleader gl) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(gl);;
		session.flush();
	}

}
