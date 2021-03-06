package com.satya.career.portfolio.services;

import com.satya.career.portfolio.models.Profile;

public interface ProfileService {
	// create profile
	public void createProfile(Profile profile);

	// get profile
	public Profile getProfile(long id);

	// update profile
	public Profile updateProfile(Profile profile);

	// delete profile
	public String deleteProfile(long id);

}
