package com.satya.career.portfolio.services;

import java.util.List;

import com.satya.career.portfolio.models.Project;

public interface ProjectService {
	
	public Project getProjects(long id);
	public List<Project> getProjectsList();

}
