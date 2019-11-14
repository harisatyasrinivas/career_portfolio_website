package com.satya.career.portfolio.services;

import java.util.List;

import com.satya.career.portfolio.models.ProfWebsites;

public interface ProfWebsitesService {
	
	public ProfWebsites getProfWebsites(long id);
	public List<ProfWebsites> getProfWebsitesList();

}
