package com.satya.career.portfolio.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.satya.career.portfolio.dao.SkillDao;
import com.satya.career.portfolio.models.Skill;

@Service
@Transactional
public class SkillServiceImpl implements SkillService {

	@Autowired
	private SkillDao skillDao;

	@Override
	public List<Skill> getSkill() {
		// TODO Auto-generated method stub
		return skillDao.getSkill();
	}

}
