package com.satya.career.portfolio.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="PROFILE")
public class Profile {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)	
	@Column(name="PROFILE_ID",updatable = false, nullable = false)
	private long id;
	
	@Column(name="FIRST_NAME",nullable = false)
	private String firstName;
	
	@Column(name="LAST_NAME",nullable = false)
	private String lastName;
	
	@Column(name="EMAIL",unique=true,nullable = false)
	private String email;
	
	@Column(name="MOBILE",unique=true,nullable = false,length=10)
	private String mobileNumber;
	
	@OneToMany(mappedBy = "profile",cascade = CascadeType.ALL,orphanRemoval = true)	
	private List<Education> education;
	
//	@Column(name="PROF_WEBSITES")
//	private ProfWebsites profWebsites;
//	
//	@Column(name="ADDRESS")
//	private Address address;
	
	@Column(name="ABOUT")
	private String about;
	
	
	public List<Education> getEducation() {
		return education;
	}

	public void setEducation(List<Education> education) {
		this.education = education;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	@Override
	public String toString() {
		return "Profile [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", mobileNumber=" + mobileNumber + ", education=" + education + ", about=" + about + "]";
	}
	
	
	
		
	}