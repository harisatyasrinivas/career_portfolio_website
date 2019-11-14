package com.satya.career.portfolio.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.satya.career.portfolio.models.WorkExp;
import com.satya.career.portfolio.services.WorkExpService;

@Controller
@RequestMapping("/workexp")
public class WorkExpController {
	
	@Autowired
	private WorkExpService workExpService;

		public WorkExpController() {
		System.out.println("WorkExpController() started executing");
	}
		
		// display form for user registration
		@RequestMapping(value = "/WorkExpForm", method = RequestMethod.GET)
		public ModelAndView registerProfile(ModelAndView model) {
			WorkExp workExp = new WorkExp();
			model.addObject("Profile", workExp);
			model.setViewName("workExpForm");
			return model;
		}
		
		@RequestMapping(value = "/saveWorkExp", method = RequestMethod.POST)
		public ModelAndView saveProfile(@Valid @ModelAttribute("WorkExp") WorkExp workExp, BindingResult result) {
			if (result.hasErrors()) {
				return new ModelAndView("workExpForm");
			} 
			else 
			{
				if (workExp.getId() == 0) { 
					workExpService.createWorkExp(workExp);
				} else {
					workExpService.updateWorkExp(workExp);
				}
				return new ModelAndView("redirect:/profile/");
			}

		}

}
