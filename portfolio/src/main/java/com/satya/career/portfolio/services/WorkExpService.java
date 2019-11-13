package com.satya.career.portfolio.services;

import java.util.List;

import com.satya.career.portfolio.models.Skill;
import com.satya.career.portfolio.models.WorkExp;

public interface WorkExpService {
	
	public WorkExp getWorkExp(long id);
	public List<WorkExp> getWorkExpList();

}
