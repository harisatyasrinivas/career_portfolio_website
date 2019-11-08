package com.satya.career.portfolio.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.satya.career.portfolio.models.Education;
import com.satya.career.portfolio.models.Profile;
import com.satya.career.portfolio.models.Skill;
import com.satya.career.portfolio.models.WorkExp;
import com.satya.career.portfolio.services.AddressService;
import com.satya.career.portfolio.services.EducationService;
import com.satya.career.portfolio.services.ProfWebsitesService;
import com.satya.career.portfolio.services.ProfileService;
import com.satya.career.portfolio.services.ProjectService;
import com.satya.career.portfolio.services.SkillService;
import com.satya.career.portfolio.services.WorkExpService;

@Controller
@RequestMapping("/v1/profile/")
public class PortfolioControllerVersion1 {

	@Autowired
	private ProfileService profileService;

	@Autowired
	private EducationService educationService;

	@Autowired
	private AddressService addressService;

	@Autowired
	private ProfWebsitesService profWebsitesService;

	@Autowired
	private WorkExpService workExpService;

	@Autowired
	private ProjectService projectService;

	@Autowired
	private SkillService skillService;

	public PortfolioControllerVersion1() {
		System.out.println("PortfolioControllerVersion1() is running");
	}
	
	//read data from database 
	@RequestMapping(value = "/info",method = RequestMethod.GET)
	public ModelAndView education(HttpServletRequest request) {		
		long profileId = Integer.parseInt(request.getParameter("id"));
		Profile profile = profileService.getProfile(profileId);
		Education edu = educationService.getEducationProfile(profileId);
		WorkExp workExp = workExpService.getWorkExp(profileId);
		List<Skill> skillslist =skillService.getSkill();
		ModelAndView model = new ModelAndView();
		model.addObject("Profile",profile);
		model.addObject("Education",edu);
		model.addObject("WorkExp",workExp);
		model.addObject("SkillsList",skillslist);
		model.setViewName("profile");
		return model;
		}
	

}
