package com.mfu.web.controller;

import java.security.Principal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mfu.entity.Address;
import com.mfu.entity.Alumni;
import com.mfu.historyEntity.AddressHistory;
import com.mfu.service.AddressFacade;
import com.mfu.service.AlumniFacade;
import com.mfu.socialnetwork.Social;
import com.mfu.socialnetwork.SocialFacade;

@Controller
public class SocialController {

	@EJB(mappedName = "ejb:/MFUAlumniEJB//SocialImplement!com.mfu.socialnetwork.SocialFacade")
	SocialFacade socialServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AlumniImplement!com.mfu.service.AlumniFacade")
	AlumniFacade alumServ;
	
	
	@RequestMapping("/listSocial_Alumni")
	public ModelAndView listSocial_Alumni(HttpServletRequest request) {
		
		String alumniId = null;
		// check if pararameter passed
		if (request.getParameter("id") != null && request.getParameter("id") != "") {
			// add parameter value to session
			alumniId = request.getParameter("id");
			request.getSession().setAttribute("alumniid", alumniId);
		} else {
			// get parameter from session
			alumniId = (String) request.getSession().getAttribute("alumniid");
		}
		ModelAndView mv = new ModelAndView("Alumni/socialPage.jsp");
		
		List<Social> socialList;
		try {
			socialList = socialServ.findSocialByAlumni(Long.parseLong(alumniId));
			mv.addObject("socialList", socialList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/editSocial_Alumni")
	public ModelAndView editSocial_Alumni(HttpServletRequest request,Principal principal,ModelMap model) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		Social foundsocial;
		ModelAndView mv = new ModelAndView("Alumni/SocialForm.jsp");
		try {
			foundsocial = socialServ.findSocialByID(paramId);
			String name = principal.getName();
			model.addAttribute("username",name);
			mv.addObject("social", foundsocial);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/saveSocial_Alumni")
	public String saveSocial_Alumni(@ModelAttribute("address") Social social,
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (social.getSocialID() == 0) {
				socialServ.insert(social);
				// employee is existed
			} else {
				
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				long alumniID = social.getAlumni().getId();
				Alumni alumni = alumServ.findAlumni(alumniID);
				alumni.setDateEdit(formattedDate);
				
				
				social.setDateEdit(formattedDate);
				social.setActive("active");
				
				
				socialServ.update(social);
				alumServ.update(alumni);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:listSocial_Alumni.do";
	}
}
