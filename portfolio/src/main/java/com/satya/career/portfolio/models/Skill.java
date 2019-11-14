package com.satya.career.portfolio.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "SKILL")
public class Skill {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private long id;
	@Column(name = "SKILL")
	private String skill;
	@Column(name = "SKILL_Feild")
	private String skillFeild;
	@Column(name = "SKILL_EXP")
	private int skillExperience;
	@ManyToOne()
	@JoinColumn(name = "EXPERTISE_ID")
	private AreaOfExpertise areaOfExpertise;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public int getSkillExperience() {
		return skillExperience;
	}

	public void setSkillExperience(int skillExperience) {
		this.skillExperience = skillExperience;
	}

	public String getSkillFeild() {
		return skillFeild;
	}

	public void setSkillFeild(String skillFeild) {
		this.skillFeild = skillFeild;
	}

	public AreaOfExpertise getAreaOfExpertise() {
		return areaOfExpertise;
	}

	public void setAreaOfExpertise(AreaOfExpertise areaOfExpertise) {
		this.areaOfExpertise = areaOfExpertise;
	}
	
}
