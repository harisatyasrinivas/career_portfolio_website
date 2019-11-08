package com.satya.career.portfolio.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.satya.career.portfolio.models.Address;
import com.satya.career.portfolio.services.AddressService;

@Controller
@RequestMapping("/profile/contact")
public class AddressController {
	
	@Autowired
	private AddressService addressService;
	
	public AddressController() {
		System.out.println("AddressController() started executing");
	}
	
	@RequestMapping(value = "/info",method = RequestMethod.GET)
	public ModelAndView address(HttpServletRequest request) {
		long profileid = Integer.parseInt(request.getParameter("id"));
		Address address = addressService.getAddress(profileid);	
		ModelAndView model = new ModelAndView();
		model.addObject("Address",address);
		model.setViewName("Address");
		return model;
		
	}

}
