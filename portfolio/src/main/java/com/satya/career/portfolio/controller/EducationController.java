package com.satya.career.portfolio.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.satya.career.portfolio.models.Education;
import com.satya.career.portfolio.services.EducationService;

@Controller
@RequestMapping("/profile/education")
public class EducationController {
			
		@Autowired
		private EducationService educationService;
		
		public EducationController() {
			System.out.println("EducationController() started executing");
		}
		
		@RequestMapping(value = "/info",method = RequestMethod.GET)
		public ModelAndView education(HttpServletRequest request) {
			int educationId = Integer.parseInt(request.getParameter("id"));
			Education education = educationService.getEducationProfile(educationId);
			ModelAndView model = new ModelAndView();
			model.addObject("Education", education);
			model.setViewName("education");
			return model;
			
		}
		
		@RequestMapping(value = "/addEducation", method = RequestMethod.GET)
		public ModelAndView addEducation(ModelAndView model) {
			Education education = new Education();
			model.addObject("Education", education);
			model.setViewName("educationForm");
			return model;
		}
		 
		@RequestMapping(value = "/saveEducation", method = RequestMethod.POST)
		public ModelAndView saveEducation(@RequestParam("id") Integer profileId,@ModelAttribute Education education) {
			if (education.getId() == 0) { // if employee id is 0 then user the employee other perform update on user
				educationService.addEducationProfile(profileId, education);
			} else 
			{
			educationService.updateEducationProfile(education);	
			}
			return new ModelAndView("redirect:/profile");
		}
		
		@RequestMapping(value = "/deleteEducation", method = RequestMethod.GET)
		public ModelAndView deleteEducation(HttpServletRequest request) {
			int educationId = Integer.parseInt(request.getParameter("id"));
			educationService.deleteEducationProfile(educationId);
			return new ModelAndView("redirect:/");
		}
		
		@RequestMapping(value = "/editEducation", method = RequestMethod.GET)
		public ModelAndView editEducation (HttpServletRequest request) {
			int educationId = Integer.parseInt(request.getParameter("id"));
			Education education = educationService.getEducationProfile(educationId);
			ModelAndView model = new ModelAndView("educationForm");
			model.addObject("education", education);
			return model;
		}

	}

