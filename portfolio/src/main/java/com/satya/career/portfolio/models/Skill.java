package com.satya.career.portfolio.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
	@Column(name = "SKILL_EXP")
	private int skillExperience;
	@ManyToOne()
	@JoinColumn(name = "PROJECT_ID")
	private Project project;

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

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	
}
