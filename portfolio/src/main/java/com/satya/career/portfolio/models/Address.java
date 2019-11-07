package com.satya.career.portfolio.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="ADDRESS")
public class Address {
	
	@Id
	@Column(name="ID")
	private Long id;
	@Column(name="ADDRESS_LINE")
	private String addressLine;
	@Column(name="STATE")
	private String state;
	@Column(name="PROVINCE")
	private String province;
	@Column(name="ZIPCODE")
	private String zipcode;	
	@OneToOne
    @MapsId
	private Profile profile;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getAddressLine() {
		return addressLine;
	}
	public void setAddressLine(String addressLine) {
		this.addressLine = addressLine;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public Profile getProfile() {
		return profile;
	}
	public void setProfile(Profile profile) {
		this.profile = profile;
	}
	@Override
	public String toString() {
		return "Address [id=" + id + ", addressLine=" + addressLine + ", state=" + state + ", province=" + province
				+ ", zipcode=" + zipcode + ", profile=" + profile + "]";
	}
	
	

	
}
