package com.satya.career.portfolio.models;

import java.sql.Blob;
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

@Entity
@Table(name = "PROFILE")
public class Profile {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "PROFILE_ID", updatable = false, nullable = false)
	private long id;

	@Column(name = "PROFILE_PIC")
	private Blob profilePic;

	@Column(name = "FIRST_NAME", nullable = false)
	private String firstName;

	@Column(name = "LAST_NAME", nullable = false)
	private String lastName;

	@Column(name = "EMAIL", unique = true, nullable = false)
	private String email;

	@Column(name = "MOBILE", unique = true, nullable = false, length = 10)
	private String mobileNumber;

	@Lob
	@Column(name = "STATUS")
	private String status;

	@Lob
	@Column(name = "SUMMARY")
	private String summary;

	@OneToMany(mappedBy = "profile", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Education> education;

	@OneToOne(mappedBy = "profile", cascade = CascadeType.ALL, orphanRemoval = true)
	private Address address;

	@OneToMany(mappedBy = "profile", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<ProfWebsites> profWebsites;

	@OneToMany(mappedBy = "profile", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<WorkExp> workExp;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Blob getProfilePic() {
		return profilePic;
	}

	public void setProfilePic(Blob profilePic) {
		this.profilePic = profilePic;
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

}