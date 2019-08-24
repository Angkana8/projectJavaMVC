package com.mfu.web.controller;

import java.util.List;

import javax.ejb.EJB;
import javax.enterprise.inject.Model;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mfu.entity.Address;
import com.mfu.entity.Alumni;
import com.mfu.entity.Award;
import com.mfu.entity.Company;
import com.mfu.entity.Education;
import com.mfu.entity.Other;
import com.mfu.service.AddressFacade;
import com.mfu.service.AlumniFacade;
import com.mfu.service.AwardFacade;
import com.mfu.service.CompanyFacade;
import com.mfu.service.EducationFacade;
import com.mfu.service.OtherFacade;

@Controller
public class ProfileController {

	@EJB(mappedName = "ejb:/MFUAlumniEJB//AlumniImplement!com.mfu.service.AlumniFacade")
	AlumniFacade alumServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AddressImplement!com.mfu.service.AddressFacade")
	AddressFacade addressServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AwardImplement!com.mfu.service.AwardFacade")
	AwardFacade awardServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//CompanyImplement!com.mfu.service.CompanyFacade")
	CompanyFacade companyServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//EducationImplement!com.mfu.service.EducationFacade")
	EducationFacade educationServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//OtherImplement!com.mfu.service.OtherFacade")
	OtherFacade otherServ;
	
	
	@RequestMapping("/profile")
	public ModelAndView listAddress(HttpServletRequest request,ModelMap model) {
		
		String alumniId = null;
		// check if pararameter passed
		if (request.getParameter("id") != null) {
			// add parameter value to session
			alumniId = request.getParameter("id");
			request.getSession().setAttribute("alumniid", alumniId);
		} else {
			// get parameter from session
			alumniId = (String) request.getSession().getAttribute("alumniid");
		}
		ModelAndView mv = new ModelAndView("Association/Profile.jsp");
		
		List<Address> addressList;
		List<Award> awardList;
		List<Company> companyList;		
		List<Education> educationList;
		Other other;
		
		addressList = addressServ.findAddressByAlumni(Long.parseLong(alumniId));
		awardList = awardServ.findAwardByAlumni(Long.parseLong(alumniId));
		companyList = companyServ.findCompanyByAlumni(Long.parseLong(alumniId));
		educationList = educationServ.findEducationByAlumni(Long.parseLong(alumniId));
		other = otherServ.findOtherByAlumni(Long.parseLong(alumniId));
		
		String method = other.getMethod_Admission();
		String adviser = other.getAdviser_Name();
		
		
		long alumniId2 =Long.parseLong(request.getParameter("id"));
		
		Alumni al = alumServ.findAlumni(alumniId2);
		String nameTH= al.getNameTH();
		String nameEN = al.getNameEN();
		String f_name_New = al.getFirstname_New();
		String l_name_New = al.getLastname_New();
		String f_name_ENG_New  = al.getFirstnameENG_New();
		String l_name_ENG_New = al.getLastnameENG_New();
		String Card_ID = al.getCard_ID();
		String Date_Birth = al.getDate_Birth();
		String Blood_Type = al.getBlood_Type();
		String Place_Birth = al.getPlace_Birth();
		String Nationality = al.getNationality();
		String Ethnivity = al.getEthnivity();
		String Religious = al.getReligious();
		
		long stu_id = al.getId();
		model.addAttribute("stu_id", stu_id);	
	
		
		mv.addObject("addressList", addressList);
		mv.addObject("awardList", awardList);
		mv.addObject("companyList", companyList);
		mv.addObject("educationList", educationList);
		model.addAttribute("method", method);
		model.addAttribute("adviser", adviser);
		model.addAttribute("nameTH", nameTH);
		model.addAttribute("nameEN", nameEN);
		model.addAttribute("f_name_New", f_name_New);
		model.addAttribute("l_name_New", l_name_New);
		model.addAttribute("f_name_ENG_New", f_name_ENG_New);
		model.addAttribute("l_name_ENG_New", l_name_ENG_New);
		model.addAttribute("Card_ID", Card_ID);
		model.addAttribute("Date_Birth", Date_Birth);
		model.addAttribute("Blood_Type", Blood_Type);
		model.addAttribute("Place_Birth", Place_Birth);
		model.addAttribute("Nationality", Nationality);
		model.addAttribute("Ethnivity", Ethnivity);
		model.addAttribute("Religious", Religious);
		
		return mv;
	}
}
