package com.satya.career.portfolio.models;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="WORK_EXP")
public class WorkExp {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)	
	@Column(name="WORKEXP_ID",updatable = false, nullable = false)
	private long id;
	@Column(name = "COMPANY")
	private String company;
	@Column(name = "ROLE")
	private String role;
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	@Column(name = "FROM_DATE")
	private Date fromDate;
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	@Column(name = "TO_DATE")
	private Date ToDate;
	@OneToMany(mappedBy = "workExp",cascade = CascadeType.ALL,orphanRemoval = true)
	private List<Project> projects;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "PROFILE_ID")
	private Profile profile;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public Date getFromDate() {
		return fromDate;
	}
	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}
	public Date getToDate() {
		return ToDate;
	}
	public void setToDate(Date toDate) {
		ToDate = toDate;
	}
	public List<Project> getProjects() {
		return projects;
	}
	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}
	public Profile getProfile() {
		return profile;
	}
	public void setProfile(Profile profile) {
		this.profile = profile;
	}
	@Override
	public String toString() {
		return "WorkExp [id=" + id + ", company=" + company + ", role=" + role + ", fromDate=" + fromDate + ", ToDate="
				+ ToDate + ", projects=" + projects + ", profile=" + profile + "]";
	}
	
	
	

}
