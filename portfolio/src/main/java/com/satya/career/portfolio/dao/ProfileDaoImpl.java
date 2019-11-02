package com.satya.career.portfolio.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.satya.career.portfolio.models.Profile;

@Repository
public class ProfileDaoImpl implements ProfileDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void createProfile(Profile profile) {
		sessionFactory.getCurrentSession().saveOrUpdate(profile);
		
	}

	@Override
	public Profile getProfile(long id) {
		return sessionFactory.getCurrentSession().get(Profile.class,id);
	}

	@Override
	public Profile updateProfile(Profile profile) {
		sessionFactory.getCurrentSession().update(profile);
		return profile;
	}

	@Override
	public String deleteProfile(long id) {
	Profile profile = (Profile) sessionFactory.getCurrentSession().get(Profile.class, id);
	//Validation 
	if (profile != null)
	{
		this.sessionFactory.getCurrentSession().delete(profile);
		return "Profile deleted successfully ";
	}
	else	{
		return "Profile Doesnot Exist ";
	}
	}

}
