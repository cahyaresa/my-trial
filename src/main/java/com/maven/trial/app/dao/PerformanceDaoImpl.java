package com.maven.trial.app.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.maven.trial.app.model.Performance;

@Repository("PerformanceDao")
@Transactional
public class PerformanceDaoImpl implements PerformanceDao  {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	
	public List<Performance> getAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		return session.createCriteria(Performance.class).list();
	}

	
	public Performance getOne(Performance perform) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		return session.get(Performance.class, perform.getId());
	}

	
	public void save(Performance perform) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(perform);
		session.flush();
	}

	
	public void delete(Performance perform) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(perform);
		session.flush();
	}

	
	public void update(Performance perform) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(perform);
		session.flush();
	}

	
	public void saveOrupdate(Performance perform) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(perform);;
		session.flush();
	}

}
