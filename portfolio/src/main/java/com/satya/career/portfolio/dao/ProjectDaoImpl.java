package com.satya.career.portfolio.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.satya.career.portfolio.models.Project;

@Repository
public class ProjectDaoImpl implements ProjectDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Project getProjects(long id) {
		
		Project project = sessionFactory.getCurrentSession().get(Project.class, id);
		return project;

	}

	@Override
	public List<Project> getProjectsList() {
		return sessionFactory.getCurrentSession().createQuery("from Project").getResultList();
	}

}
