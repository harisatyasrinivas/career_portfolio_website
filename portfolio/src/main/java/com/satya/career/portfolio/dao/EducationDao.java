package com.satya.career.portfolio.dao;

import com.satya.career.portfolio.models.Education;
import com.satya.career.portfolio.models.Profile;

public interface EducationDao {
	
	// create profile
	public void addEducationProfile (long profileId , Education education);

	// get profile
	public Education getEducationProfile(long id);

	// update profile
	public Education updateEducationProfile(Education education);

	// delete profile
	public void deleteEducationProfile(long id);

}
