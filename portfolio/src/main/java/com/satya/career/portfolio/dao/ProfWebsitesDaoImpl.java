package com.satya.career.portfolio.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.satya.career.portfolio.models.ProfWebsites;

@Repository
public class ProfWebsitesDaoImpl implements ProfWebsitesDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public ProfWebsites getProfWebsites(long id) {
		return sessionFactory.getCurrentSession().get(ProfWebsites.class, id);
	}

}
