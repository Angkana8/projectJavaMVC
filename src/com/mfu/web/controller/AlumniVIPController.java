package com.mfu.web.controller;

import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.util.List;

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
public class AlumniVIPController {

	
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
	
	@RequestMapping(value = "/ALUMNI_VIP")
	public String ALUMNI_VIP(ModelMap model, Principal principal) {

		String username = principal.getName();
		
		model.addAttribute("username",username);
		return "Association/ManageAlumni_VIP.jsp";

	}
	
	@RequestMapping(value = "/allVIP")
	public ModelAndView allVIP(ModelMap model, Principal principal) {

		ModelAndView mv = new ModelAndView("Association/listVIP_ByName.jsp");
		
		String type = "ผู้แทนรุ่น";
		
		List<Alumni> allVIP = alumServ.showVIP(type);
		
		
		
		mv.addObject("AlumniList", allVIP);
		return mv;
		

	}
	
	@RequestMapping("/ChangeToNormal")
	public String ChangeToNormal(HttpServletRequest request,ModelMap model) {
		
		String studentID = request.getParameter("id");
		ModelAndView mv = new ModelAndView("Association/Finished_SetVIP2.jsp");
		
		User foundUser = userServ.findUserByStudentID(studentID);
		Alumni foundAlumni = alumServ.findAlumniByUsername(studentID);
		
		String name = foundUser.getFirstname();
		String student = foundUser.getUsername();
		long id = foundAlumni.getId();
		
		model.addAttribute("name", name);
		model.addAttribute("studentID", student);
		model.addAttribute("id",id);
		
		foundUser.setAuthority("ROLE_ALUMNI");
		foundUser.setType("ROLE_ALUMNI");
		
		foundAlumni.setStatus("normal");
		
		alumServ.update(foundAlumni);
		userServ.update(foundUser);
		
		return "redirect:allVIP.do";
	}
	
	@RequestMapping(value = "/VIPView", method = RequestMethod.GET)
	public ModelAndView VIPView(ModelMap model, Principal principal,
			HttpServletRequest request) {

		String name = principal.getName();
		String alumniId = null;
		if (request.getParameter("id") != null && request.getParameter("id") != "") {
			// add parameter value to session
			alumniId = request.getParameter("id");
			request.getSession().setAttribute("alumniid", alumniId);
		} else {
			// get parameter from session
			alumniId = (String) request.getSession().getAttribute("alumniid");
		}

		
		Alumni al = alumServ.findAlumni(Long.parseLong(alumniId));
		ModelAndView mv = new ModelAndView("Alumni/VIPEdit.jsp");

		List<Address> addressList;
		List<Award> awardList;
		List<Company> companyList;		
		List<Education> educationList;
		Other otherList;
		List<AddressHistory> addressHis;
		List<EducationHistory> educationHis;
		List<Social> socialList;
		String StudentID = al.getStudentID();
		addressList = addressServ.findAddressByAlumni(Long.parseLong(alumniId));
		awardList = awardServ.findAwardByAlumni(Long.parseLong(alumniId));
		companyList = companyServ.findCompanyByAlumni(Long.parseLong(alumniId));
		educationList = educationServ.findEducationByAlumni(Long.parseLong(alumniId));
		otherList = otherServ.findOtherByAlumni(Long.parseLong(alumniId));
		addressHis = addressHisServ.searchAddress(StudentID, "ตามทะเบียนบ้าน");
		educationHis = eduHisServ.findEducationHistoryBySearch(StudentID, "MFU");
		socialList = socialServ.findSocialByAlumni(Long.parseLong(alumniId));
	
		long stu_id = al.getId();
		
		String nickname = al.getNickname();
		
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
	
	
	@RequestMapping(value = "/Select_VIP", method = RequestMethod.GET)
	public ModelAndView Select_VIP(ModelMap model, Principal principal,HttpServletRequest request) throws UnsupportedEncodingException {

		ModelAndView mv = new ModelAndView("Association/SelectAlumni_VIP.jsp");
		
		String major = new String(request.getParameter("major").getBytes("ISO8859_1"),"UTF-8");
		String year = new String(request.getParameter("year").getBytes("ISO8859_1"),"UTF-8");
		String school = new String(request.getParameter("school").getBytes("ISO8859_1"),"UTF-8");
		String country = "";
		String level = new String(request.getParameter("level").getBytes("ISO8859_1"),"UTF-8");
		
		String StudentID = request.getParameter("studentID");
		
		List<Education> educationList = educationServ.findEducationBySearch(major,year,school,country,level);
		List<Alumni> al = alumServ.searchByID(StudentID);
		
		mv.addObject("educationList",educationList);
		mv.addObject("alumniList",al);
				try{
					if(educationList.isEmpty()||al.isEmpty()){
						model.addAttribute("level"," ไม่พบข้อมูล ");
						
					}
					else
						
					model.addAttribute("level",level);
					model.addAttribute("school",school);
					model.addAttribute("major",major);
					model.addAttribute("country",country);
					model.addAttribute("year",year);
					}
				
				catch(Exception e){
					
				}
				
		return mv;

	}
	
	
	@RequestMapping("/ChangeToVIP")
	public ModelAndView listAddress(HttpServletRequest request,ModelMap model) {
		
		String studentID = request.getParameter("id");
		ModelAndView mv = new ModelAndView("Association/Finished_SetVIP2.jsp");
		
		User foundUser = userServ.findUserByStudentID(studentID);
		Alumni foundAlumni = alumServ.findAlumniByUsername(studentID);
		
		String name = foundUser.getFirstname();
		String student = foundUser.getUsername();
		long id = foundAlumni.getId();
		
		model.addAttribute("name", name);
		model.addAttribute("studentID", student);
		model.addAttribute("id",id);
		
		foundUser.setAuthority("ROLE_ALUMNIVIP");
		foundUser.setType("ROLE_ALUMNIVIP");
		
		foundAlumni.setStatus("ผู้แทนรุ่น");
		
		alumServ.update(foundAlumni);
		userServ.update(foundUser);
		
		return mv;
	}
}
