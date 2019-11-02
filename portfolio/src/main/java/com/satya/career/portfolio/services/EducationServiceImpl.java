package com.satya.career.portfolio.services;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.satya.career.portfolio.dao.EducationDao;
import com.satya.career.portfolio.models.Education;

@Service
@Transactional
public class EducationServiceImpl implements EducationService{
	
	@Autowired
	private EducationDao educationDao;

	@Override
	@Transactional
	public void addEducationProfile(long profileId, Education education) {
		educationDao.addEducationProfile(profileId, education);
		
	}

	@Override
	@Transactional
	public Education getEducationProfile(long id) {
		return educationDao.getEducationProfile(id);
	}

	@Override
	@Transactional
	public Education updateEducationProfile(Education education) {
		return educationDao.updateEducationProfile(education);
	}

	@Override
	@Transactional
	public void deleteEducationProfile(long id) {
		educationDao.deleteEducationProfile(id);
		
	}

}
