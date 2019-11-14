package com.satya.career.portfolio.services;

import java.util.List;

import com.satya.career.portfolio.models.Education;

public interface EducationService {
	
	// create profile
	public void addEducationProfile (long profileId , Education education);

	// get profile
	public Education getEducationProfile(long id);

	// update profile
	public Education updateEducationProfile(Education education);

	// delete profile
	public void deleteEducationProfile(long id);
	
	public List<Education> getEducationList();

}
