package com.satya.career.portfolio.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.satya.career.portfolio.models.Education;
import com.satya.career.portfolio.models.Profile;

@Repository
public class EducationDaoImpl implements EducationDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void addEducationProfile(long profileId, Education education) {
		
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(education);

		Profile userProfile = (Profile) session.get(Profile.class, profileId);
		userProfile.getEducation().add(education);

		session.saveOrUpdate(userProfile);
	}

	@Override
	public Education getEducationProfile(long id) {
		return sessionFactory.getCurrentSession().get(Education.class,id);
	}

	@Override
	public Education updateEducationProfile(Education education) {
		sessionFactory.getCurrentSession().update(education);
		return education;
	}

	@Override
	public void deleteEducationProfile(long id) {
		Education education = (Education) sessionFactory.getCurrentSession().get(Education.class, id);
		//Validation 
		if (education != null)
		{
			this.sessionFactory.getCurrentSession().delete(education);
	    }
	}
	
}
