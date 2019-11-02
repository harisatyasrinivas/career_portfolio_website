package com.satya.career.portfolio.services;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.satya.career.portfolio.dao.ProfileDao;
import com.satya.career.portfolio.models.Profile;

@Service
@Transactional
public class ProfileServiceImpl implements ProfileService {

	@Autowired
	private ProfileDao profileDao;

	@Override
	@Transactional
	public void createProfile(Profile profile) {
		profileDao.createProfile(profile);

	}

	@Override
	@Transactional
	public Profile getProfile(long id) {
		return profileDao.getProfile(id);
	}

	@Override
	@Transactional
	public Profile updateProfile(Profile profile) {
		return profileDao.updateProfile(profile);
	}

	@Override
	@Transactional
	public String deleteProfile(long id) {
		return profileDao.deleteProfile(id);
	}

}
