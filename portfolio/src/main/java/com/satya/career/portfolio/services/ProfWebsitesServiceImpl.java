package com.satya.career.portfolio.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.satya.career.portfolio.dao.ProfWebsitesDao;
import com.satya.career.portfolio.models.ProfWebsites;

@Service
@Transactional
public class ProfWebsitesServiceImpl implements ProfWebsitesService {
	
	private ProfWebsitesDao profWebsitesDao;

	@Override
	@Transactional
	public ProfWebsites getProfWebsites(long id) {
		return profWebsitesDao.getProfWebsites(id);
	}

	@Override
	@Transactional
	public List<ProfWebsites> getProfWebsitesList() {
		return profWebsitesDao.getProfWebsitesList();
	}

}
