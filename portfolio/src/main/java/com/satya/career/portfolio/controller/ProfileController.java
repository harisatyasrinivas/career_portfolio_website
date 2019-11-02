package com.satya.career.portfolio.controller;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.satya.career.portfolio.models.Profile;
import com.satya.career.portfolio.services.ProfileService;

@Controller
@RequestMapping("/profile")
public class ProfileController {

	@Autowired
	private ProfileService profileService;

	private static final Logger logger = Logger.getLogger(ProfileController.class);

	public ProfileController() {
		System.out.println("ProfileController() started executing");
	}

	// display form for user registration
	@RequestMapping(value = "/registerProfile", method = RequestMethod.GET)
	public ModelAndView registerProfile(ModelAndView model) {
		Profile profile = new Profile();
		model.addObject("Profile", profile);
		model.setViewName("registerForm");
		return model;
	}
	
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public ModelAndView listEmployee(HttpServletRequest request) {
		int profileId = Integer.parseInt(request.getParameter("id"));
		Profile profile = profileService.getProfile(profileId);
		ModelAndView model = new ModelAndView("home");
		model.addObject("Profile", profile);
		return model;
	}

	// register user data for profile creation
	@RequestMapping(value = "/saveProfile", method = RequestMethod.POST)
	public ModelAndView saveProfile(@ModelAttribute Profile profile) {
		if (profile.getId() == 0) { // if employee id is 0 then user the employee other perform update on user
			profileService.createProfile(profile);
		} else {
			profileService.updateProfile(profile);
		}
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/deleteProfile", method = RequestMethod.GET)
	public ModelAndView deleteProfile(HttpServletRequest request) {
		int profileId = Integer.parseInt(request.getParameter("id"));
		profileService.deleteProfile(profileId);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/editProfile", method = RequestMethod.GET)
	public ModelAndView editProfile(HttpServletRequest request) {
		int profileId = Integer.parseInt(request.getParameter("id"));
		Profile profile = profileService.getProfile(profileId);
		ModelAndView model = new ModelAndView("registerForm");
		model.addObject("Profile", profile);
		return model;
	}

}