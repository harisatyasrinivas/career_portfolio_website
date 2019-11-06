package com.satya.career.portfolio.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="education")
public class Education {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private long id;
	@Column(name="DEGREE",nullable = false)
	private String degree;
	@Column(name="SCHOOL",nullable = false)
	private String school;
	/*
	 * @Column(name="FROM_DATE",nullable = false) private Date fromDate;
	 * 
	 * @Column(name="TO_DATE",nullable = false) private Date toDate;
	 */
	@Column(name="COUNTRY",nullable = false)
	private String country;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="PROFILE_ID")
	private Profile profile;
	
	

	@Override
	public String toString() {
		return "Education [id=" + id + ", degree=" + degree + ", school=" + school + ", country=" + country
				+ ", profile=" + profile + "]";
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public Profile getProfile() {
		return profile;
	}

	public void setProfile(Profile profile) {
		this.profile = profile;
	}
	
	
	
	
	

}
