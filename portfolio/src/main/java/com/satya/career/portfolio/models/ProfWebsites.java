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
@Table(name="PROF_WEBSITES")
public class ProfWebsites {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private long id;
	@Column(name = "WEBSITE_NAME")
	private String webName;
	@Column(name = "WEBSITE_URL")
	private String webUrl;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "PROFILE_ID")
	private Profile profile;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getWebName() {
		return webName;
	}
	public void setWebName(String webName) {
		this.webName = webName;
	}
	public String getWebUrl() {
		return webUrl;
	}
	public void setWebUrl(String webUrl) {
		this.webUrl = webUrl;
	}
	public Profile getProfile() {
		return profile;
	}
	public void setProfile(Profile profile) {
		this.profile = profile;
	}
	@Override
	public String toString() {
		return "ProfWebsites [id=" + id + ", webName=" + webName + ", webUrl=" + webUrl + ", profile=" + profile + "]";
	}
	
	
}
