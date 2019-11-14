package com.satya.career.portfolio.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.satya.career.portfolio.models.AreaOfExpertise;

@Repository
public class AreaOfExpertiseImpl implements AreaOfExpertiseDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<AreaOfExpertise> getAreaOfExpertiseList() {
		return sessionFactory.getCurrentSession().createQuery("from AreaOfExpertise").getResultList(); 
	}

}
