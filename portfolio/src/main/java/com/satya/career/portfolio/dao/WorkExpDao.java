package com.satya.career.portfolio.dao;

import java.util.List;

import com.satya.career.portfolio.models.WorkExp;

public interface WorkExpDao {
	
	public WorkExp getWorkExp(long id);
	public List<WorkExp> getWorkExpList();

}
