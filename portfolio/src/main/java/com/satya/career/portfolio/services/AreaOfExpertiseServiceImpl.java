package com.satya.career.portfolio.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.satya.career.portfolio.dao.AreaOfExpertiseDao;
import com.satya.career.portfolio.models.AreaOfExpertise;

@Service
@Transactional
public class AreaOfExpertiseServiceImpl implements AreaOfExpertiseService {

	@Autowired
	private AreaOfExpertiseDao areaOfExpertiseDao;
	
	@Override
	@Transactional
	public List<AreaOfExpertise> getAreaOfExpertiseList() {
		return areaOfExpertiseDao.getAreaOfExpertiseList();
	}
	

}
