package com.satya.career.portfolio.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.satya.career.portfolio.models.Project;
import com.satya.career.portfolio.models.Skill;

@Repository
public class ProjectDaoImpl implements ProjectDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Project getProjects(long id) {
		
		Project project = sessionFactory.getCurrentSession().get(Project.class, id);
		return project;

	}

}
