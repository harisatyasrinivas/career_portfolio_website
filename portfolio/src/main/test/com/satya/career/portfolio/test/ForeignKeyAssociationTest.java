package com.satya.career.portfolio.test;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.satya.career.portfolio.models.Education;
import com.satya.career.portfolio.models.Profile;

public class ForeignKeyAssociationTest {

	public static void main(String[] args) {

		Profile profile1 = new Profile();

		Education edu1 = new Education();
		Education edu2 = new Education();

		profile1.setEmail("test@gmail.com");
		profile1.setFirstName("test");
		profile1.setLastName("testlast");
		profile1.setMobileNumber("123456789");
		

		edu1.setCountry("India");
		edu1.setDegree("masters");
		edu1.setSchool("Uottawa");

		edu2.setCountry("India2");
		edu2.setDegree("masters2");
		edu2.setSchool("Uottawa2");

		List<Education> edu = new ArrayList<Education>();
		edu.add(edu1);
		edu.add(edu2);

		profile1.setEducation(edu);

		// Create new confirguration Object and call configure method
		// it reads the config file
		// after that build a session Factory

		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		// we can group all the objects and save using begin transaction
		session.beginTransaction();
		System.out.println(profile1);
		session.save(profile1);
		session.getTransaction().commit();

	}

}
