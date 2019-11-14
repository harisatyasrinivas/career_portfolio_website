package com.satya.career.portfolio.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "PROFILE")
public class Profile {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "PROFILE_ID", updatable = false, nullable = false)
	private long id;

	@NotEmpty(message = "Please provide your FULL Name")
	@Column(name = "FULL_NAME", nullable = false)
	private String fullName;

	@NotEmpty(message = "Please provide your NICK Name")
	@Column(name = "NICK_NAME", nullable = false)
	private String nickName;

	@Email(message = "Please provide a valid email address")
	@Pattern(regexp = ".+@.+\\..+", message = "Please provide a valid email address")
	@Column(name = "EMAIL", unique = true, nullable = false)
	private String email;

	
	@Column(name = "MOBILE")
	private String mobileNumber;

	@NotEmpty(message = "kindly provide your current employment status (Max of 255 words)")
	@Column(name = "STATUS")
	private String status;

	@NotEmpty(message = "kindly provide your work summary (Max of 255 words)")
	@Column(name = "SUMMARY")
	private String summary;

	@NotEmpty(message = "kindly provide your story")
	@Lob
	@Column(name = "STORY")
	private String story;

	@OneToMany(mappedBy = "profile", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Education> education;

	@OneToOne(mappedBy = "profile", cascade = CascadeType.ALL, orphanRemoval = true)
	private Address address;

	@OneToMany(mappedBy = "profile", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<ProfWebsites> profWebsites;

	@OneToMany(mappedBy = "profile", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<WorkExp> workExp;

	@OneToMany(mappedBy = "profile", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<AreaOfExpertise> areaOfExpertise;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getStory() {
		return story;
	}

	public void setStory(String story) {
		this.story = story;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public List<Education> getEducation() {
		return education;
	}

	public void setEducation(List<Education> education) {
		this.education = education;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public List<ProfWebsites> getProfWebsites() {
		return profWebsites;
	}

	public void setProfWebsites(List<ProfWebsites> profWebsites) {
		this.profWebsites = profWebsites;
	}

	public List<WorkExp> getWorkExp() {
		return workExp;
	}

	public void setWorkExp(List<WorkExp> workExp) {
		this.workExp = workExp;
	}

	public List<AreaOfExpertise> getAreaOfExpertise() {
		return areaOfExpertise;
	}

	public void setAreaOfExpertise(List<AreaOfExpertise> areaOfExpertise) {
		this.areaOfExpertise = areaOfExpertise;
	}

}