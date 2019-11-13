package com.satya.career.portfolio.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.satya.career.portfolio.dao.WorkExpDao;
import com.satya.career.portfolio.models.WorkExp;

@Service
@Transactional
public class WorkExpServiceImpl implements WorkExpService {

	@Autowired
	private WorkExpDao workExpDao;

	@Override
	@Transactional
	public WorkExp getWorkExp(long id) {
		return workExpDao.getWorkExp(id);
	}

	@Override
	@Transactional
	public List<WorkExp> getWorkExpList() {
		return workExpDao.getWorkExpList();
	}

}
