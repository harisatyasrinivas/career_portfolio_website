package com.satya.career.portfolio.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.satya.career.portfolio.models.Project;
import com.satya.career.portfolio.models.WorkExp;
import com.satya.career.portfolio.services.ProjectService;
import com.satya.career.portfolio.services.WorkExpService;

@Controller
@RequestMapping("/projects")
public class ProjectController {
	
	@Autowired
	private ProjectService projectService;
	
	@Autowired
	private WorkExpService workExpService;

	public ProjectController() {
		System.out.println("ProjectController() started executing");
	}
	
	// display form for user registration
		@RequestMapping(value = "/registerProject", method = RequestMethod.GET)
		public ModelAndView registerProfile(ModelAndView model) {
			Project project = new Project();
			List<WorkExp> workExp = workExpService.getWorkExpList();
			model.addObject("Project", project);
			model.addObject("WorkExpList", workExp);
			model.setViewName("projectForm");
			return model;
		}


		// register user data for profile creation
		@RequestMapping(value = "/saveProject", method = RequestMethod.POST)
		public ModelAndView saveProject(@Valid @ModelAttribute("Project") Project project, BindingResult result) {
				if (project.getId() == 0) { 
//					WorkExp workExp = workExpService.getWorkExp(1);
//					project.setWorkExp(workExp);
					projectService.createProject(project);
				} else {
					projectService.updateProject(project);
				}
				return new ModelAndView("redirect:/info?id=3");
			}

		}


