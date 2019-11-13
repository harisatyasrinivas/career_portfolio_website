package com.satya.career.portfolio.dao;

import java.util.List;

import com.satya.career.portfolio.models.Project;

public interface ProjectDao {

	public Project getProjects(long id);
	public List<Project> getProjectsList();
}
