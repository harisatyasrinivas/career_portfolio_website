package com.satya.career.portfolio.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.satya.career.portfolio.models.Address;

@Repository
public class AddressDaoImpl implements AddressDao {
	
	@Autowired
	private SessionFactory session;

	@Override
	public Address getAddress(long id) {
		session.getCurrentSession().get(Address.class, id);
		return null;
	}

}
