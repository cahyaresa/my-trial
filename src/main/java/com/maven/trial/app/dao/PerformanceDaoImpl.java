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
	
	
	@Override
	public List<Performance> getAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		return session.createCriteria(Performance.class).list();
	}

	@Override
	public Performance getOne(Performance perform) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		return session.get(Performance.class, perform.getId());
	}

	@Override
	public void save(Performance perform) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(perform);
		session.flush();
	}

	@Override
	public void delete(Performance perform) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(perform);
		session.flush();
	}

	@Override
	public void update(Performance perform) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(perform);
		session.flush();
	}

	@Override
	public void saveOrupdate(Performance perform) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(perform);;
		session.flush();
	}

}
