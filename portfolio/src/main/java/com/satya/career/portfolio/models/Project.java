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
@Table(name="PROJECT")
public class Project {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "PROJECT_ID")
	private long id;
	@Column(name = "PROJECT_NAME")
	private String projectName;
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	@Column(name = "FROM_DATE")
	private Date fromDate;
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	@Column(name = "TO_DATE")
	private Date ToDate;
	@Column(name = "PROJECT_DESC")
	private String desc;
	@Column(name = "PROJECT_TASKS")
	private String tasks;
	@OneToMany(mappedBy = "project",cascade = CascadeType.ALL,orphanRemoval = true)
	private List<Skill> skills;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "WORKEXP_ID")
	private WorkExp workExp;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
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
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getTasks() {
		return tasks;
	}
	public void setTasks(String tasks) {
		this.tasks = tasks;
	}
	public List<Skill> getSkills() {
		return skills;
	}
	public void setSkills(List<Skill> skills) {
		this.skills = skills;
	}
	public WorkExp getWorkExp() {
		return workExp;
	}
	public void setWorkExp(WorkExp workExp) {
		this.workExp = workExp;
	}
	@Override
	public String toString() {
		return "Project [id=" + id + ", projectName=" + projectName + ", fromDate=" + fromDate + ", ToDate=" + ToDate
				+ ", desc=" + desc + ", tasks=" + tasks + ", skills=" + skills + ", workExp=" + workExp + "]";
	}
	
	
	
}
