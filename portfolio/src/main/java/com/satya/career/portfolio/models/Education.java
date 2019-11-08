package com.satya.career.portfolio.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "education")
public class Education {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private long id;
	@Column(name = "DEGREE", nullable = false)
	private String degree;
	@Column(name = "SCHOOL", nullable = false)
	private String school;		
	@Column(name = "FROM_DATE", nullable = false)
	@Temporal(TemporalType.DATE)
	private Date fromDate;
	
	@Column(name = "TO_DATE", nullable = false)
	@Temporal(TemporalType.DATE)
	private Date toDate;
	
	@Column(name = "COUNTRY", nullable = false)
	private String country;
	@ManyToOne
	@JoinColumn(name = "PROFILE_ID")
	private Profile profile;
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
	public Date getFromDate() {
		return fromDate;
	}
	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}
	public Date getToDate() {
		return toDate;
	}
	public void setToDate(Date toDate) {
		this.toDate = toDate;
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
	@Override
	public String toString() {
		return "Education [id=" + id + ", degree=" + degree + ", school=" + school + ", fromDate=" + fromDate
				+ ", toDate=" + toDate + ", country=" + country + ", profile=" + profile + "]";
	}
	
	
	
}
