package com.satya.career.portfolio.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "EXPERTISE")
public class AreaOfExpertise {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "EXPERTISE_ID")
	private long id;
	@Column(name="FEILD")
	private String feild;
	@Column(name="FEILD_DETAILS")
	private String feildDetails;
	@ManyToOne
	@JoinColumn(name = "PROFILE_ID")
	private Profile profile;
	
	@OneToMany(mappedBy = "areaOfExpertise", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Skill> skill;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFeild() {
		return feild;
	}
	public void setFeild(String feild) {
		this.feild = feild;
	}
	public String getFeildDetails() {
		return feildDetails;
	}
	public void setFeildDetails(String feildDetails) {
		this.feildDetails = feildDetails;
	}
	public Profile getProfile() {
		return profile;
	}
	public void setProfile(Profile profile) {
		this.profile = profile;
	}
	public List<Skill> getSkill() {
		return skill;
	}
	public void setSkill(List<Skill> skill) {
		this.skill = skill;
	}
	
}
