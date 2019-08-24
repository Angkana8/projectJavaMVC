package com.mfu.web.controller;

import java.security.Principal;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mfu.entity.Address;
import com.mfu.entity.Alumni;
import com.mfu.entity.Award;
import com.mfu.entity.Company;
import com.mfu.entity.Education;
import com.mfu.entity.Other;
import com.mfu.historyEntity.AddressHistory;
import com.mfu.historyEntity.AddressHistoryFacade;
import com.mfu.historyEntity.EducationHistory;
import com.mfu.historyEntity.EducationHistoryFacade;
import com.mfu.service.AddressFacade;
import com.mfu.service.AlumniFacade;
import com.mfu.service.AwardFacade;
import com.mfu.service.CompanyFacade;
import com.mfu.service.EducationFacade;
import com.mfu.service.OtherFacade;
import com.mfu.socialnetwork.Social;
import com.mfu.socialnetwork.SocialFacade;
import com.mfu.user.User;
import com.mfu.user.UserService;

@Controller
public class StudentController {

	@EJB(mappedName = "ejb:/MFUAlumniEJB//UserFacadeImplement!com.mfu.user.UserService")
	UserService userServ;
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
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AddressHistoryImplement!com.mfu.historyEntity.AddressHistoryFacade")
	AddressHistoryFacade addressHisServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//EducationHistoryImplement!com.mfu.historyEntity.EducationHistoryFacade")
	EducationHistoryFacade eduHisServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//SocialImplement!com.mfu.socialnetwork.SocialFacade")
	SocialFacade socialServ;

	@RequestMapping(value = "/alumni", method = RequestMethod.GET)
	public String printWelcome(ModelMap model, Principal principal,HttpServletRequest request) {

		String name = principal.getName();
		Alumni al = alumServ.findAlumniByUsername(name);
		
		String alumniId = null;
		// check if pararameter passed
		if (request.getParameter("id") != null ) {
			// add parameter value to session
			alumniId = request.getParameter("id");
			request.getSession().setAttribute("alumniid", alumniId);
		} else {
			// get parameter from session
			alumniId = (String) request.getSession().getAttribute("alumniid");
		}
		
		
		
		String nameTH = al.getNameTH();
		long stu_id = al.getId();
		String Nickname = al.getNickname();
		
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
		String StudentID = al.getStudentID();
		String photo = al.getPhotoFile();
		
		model.addAttribute("photo", photo);
		model.addAttribute("StudentID", StudentID);
		model.addAttribute("stu_id", stu_id);
		model.addAttribute("username", name);
		model.addAttribute("Nickname", Nickname);
		model.addAttribute("nameTH", nameTH);
		model.addAttribute("nameEN", nameEN);
		model.addAttribute("f_name_New", f_name_New);
		model.addAttribute("l_name_New", l_name_New);
		model.addAttribute("f_name_ENG_New", f_name_ENG_New);
		model.addAttribute("l_name_ENG_New", l_name_ENG_New);
		model.addAttribute("Card_ID", Card_ID);
		model.addAttribute("date_Birth", Date_Birth);
		model.addAttribute("blood_Type", Blood_Type);
		model.addAttribute("place_Birth", Place_Birth);
		model.addAttribute("nationality", Nationality);
		model.addAttribute("ethnivity", Ethnivity);
		model.addAttribute("religious", Religious);
		
		return "Alumni/hello1.jsp";

	}

	@RequestMapping(value = "/alumni_Profile", method = RequestMethod.GET)
	public ModelAndView alumni_Profile(ModelMap model, Principal principal,
			HttpServletRequest request) {

		String name = principal.getName();
		Alumni al = alumServ.findAlumniByUsername(name);

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
		ModelAndView mv = new ModelAndView("Alumni/Profile.jsp");

		List<Address> addressList;
		List<Award> awardList;
		List<Company> companyList;		
		List<Education> educationList;
		Other otherList;
		List<AddressHistory> addressHis;
		List<EducationHistory> educationHis;
		List<Social> socialList;
		
		addressList = addressServ.findAddressByAlumni(Long.parseLong(alumniId));
		awardList = awardServ.findAwardByAlumni(Long.parseLong(alumniId));
		companyList = companyServ.findCompanyByAlumni(Long.parseLong(alumniId));
		educationList = educationServ.findEducationByAlumni(Long.parseLong(alumniId));
		otherList = otherServ.findOtherByAlumni(Long.parseLong(alumniId));
		addressHis = addressHisServ.searchAddress(name, "ตามทะเบียนบ้าน");
		educationHis = eduHisServ.findEducationHistoryBySearch(name, "MFU");
		socialList = socialServ.findSocialByAlumni(Long.parseLong(alumniId));
	
		long stu_id = al.getId();
		
		String nickname = al.getNickname();
		String StudentID = al.getStudentID();
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
		String photo = al.getPhotoFile();
		
		String adviser = otherList.getAdviser_Name();
		String method = otherList.getMethod_Admission();
		
		model.addAttribute("photo", photo);
		mv.addObject("educationHis", educationHis);
		mv.addObject("addressHis", addressHis);
		mv.addObject("addressList", addressList);
		mv.addObject("awardList", awardList);
		mv.addObject("companyList", companyList);
		mv.addObject("educationList", educationList);
		mv.addObject("socialList", socialList);
		model.addAttribute("stu_id", stu_id);
		model.addAttribute("nickname", nickname);
		model.addAttribute("StudentID", StudentID);
		model.addAttribute("username", name);
		model.addAttribute("nameTH", nameTH);
		model.addAttribute("nameEN", nameEN);
		model.addAttribute("f_name_New", f_name_New);
		model.addAttribute("l_name_New", l_name_New);
		model.addAttribute("f_name_ENG_New", f_name_ENG_New);
		model.addAttribute("l_name_ENG_New", l_name_ENG_New);
		model.addAttribute("Card_ID", Card_ID);
		model.addAttribute("date_Birth", Date_Birth);
		model.addAttribute("blood_Type", Blood_Type);
		model.addAttribute("place_Birth", Place_Birth);
		model.addAttribute("nationality", Nationality);
		model.addAttribute("ethnivity", Ethnivity);
		model.addAttribute("religious", Religious);
		
		model.addAttribute("adviser", adviser);
		model.addAttribute("method", method);
		return mv;

	}

	@RequestMapping(value = "/finish", method = RequestMethod.GET)
	public ModelAndView finish(ModelMap model, Principal principal,
			HttpServletRequest request) {

		String name = principal.getName();
		User user = userServ.findUserByStudentID(name);

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
		ModelAndView mv = new ModelAndView("Alumni/finish.jsp");

		String username = user.getUsername();
		String password = user.getPassword();
		
		model.addAttribute("username", username);
		model.addAttribute("Password", password);
		return mv;

	}
	
	
	
	
	

	
	
}
