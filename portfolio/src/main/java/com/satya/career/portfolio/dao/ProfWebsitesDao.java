package com.satya.career.portfolio.dao;

import java.util.List;

import com.satya.career.portfolio.models.ProfWebsites;

public interface ProfWebsitesDao {
	
	public ProfWebsites getProfWebsites(long id);
	public List<ProfWebsites> getProfWebsitesList();

}
