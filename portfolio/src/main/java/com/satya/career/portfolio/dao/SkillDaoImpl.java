package com.satya.career.portfolio.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.satya.career.portfolio.models.Skill;

@Repository
public class SkillDaoImpl implements SkillDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Skill> getSkill() {
		return sessionFactory.getCurrentSession().createQuery("from Skill").getResultList();
	}

	

}
