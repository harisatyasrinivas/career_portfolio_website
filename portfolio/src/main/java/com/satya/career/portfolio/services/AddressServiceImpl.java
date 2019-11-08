package com.satya.career.portfolio.services;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.satya.career.portfolio.dao.AddressDao;
import com.satya.career.portfolio.models.Address;

@Service
@Transactional
public class AddressServiceImpl implements AddressService {
	
	@Autowired
	private AddressDao addressDao;

	@Override
	@Transactional
	public Address getAddress(long id) {
		return addressDao.getAddress(id); 
	}

}
