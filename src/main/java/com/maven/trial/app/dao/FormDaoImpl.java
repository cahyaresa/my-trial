package com.maven.trial.app.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.maven.trial.app.model.FormCnm;

@Repository("FormDao")
@Transactional
public class FormDaoImpl implements FormDao  {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	
	public List<FormCnm> getAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		return session.createCriteria(FormCnm.class).list();
	}

	
	public FormCnm getOne(FormCnm form) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		return session.get(FormCnm.class, form.getId());
	}

	
	public void save(FormCnm form) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(form);
		session.flush();
	}

	
	public void delete(FormCnm form) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(form);
		session.flush();
	}


	public void update(FormCnm form) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(form);
		session.flush();
	}


	public void saveOrupdate(FormCnm form) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(form);;
		session.flush();
	}

}
