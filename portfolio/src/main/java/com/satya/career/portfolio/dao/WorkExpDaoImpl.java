package com.satya.career.portfolio.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.satya.career.portfolio.models.WorkExp;

@Repository
public class WorkExpDaoImpl implements WorkExpDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public WorkExp getWorkExp(long id) {
		return sessionFactory.getCurrentSession().get(WorkExp.class, id);
	}

	@Override
	public List<WorkExp> getWorkExpList() {
		return sessionFactory.getCurrentSession().createQuery("from WorkExp").getResultList();

	}

}
