package com.satya.career.portfolio.services;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.satya.career.portfolio.dao.ProjectDao;
import com.satya.career.portfolio.models.Project;

@Service
@Transactional
public class ProjectServiceImpl implements ProjectService{
	
	@Autowired
	private ProjectDao projectDao;

	@Override
	@Transactional
	public Project getProjects(long id) {
		return projectDao.getProjects(id);
	}

}
