package com.mfu.web.controller;

import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.util.List;

import javax.ejb.EJB;
import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mfu.entity.Address;
import com.mfu.entity.Alumni;
import com.mfu.entity.Education;
import com.mfu.service.AddressFacade;
import com.mfu.service.AlumniFacade;
import com.mfu.service.AwardFacade;
import com.mfu.service.CompanyFacade;
import com.mfu.service.EducationFacade;
import com.mfu.service.OtherFacade;
import com.mfu.user.UserService;

@Controller
public class SearchController {

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
	
	@RequestMapping(value = "/searchindex", method = RequestMethod.GET)
	public String searchindex(ModelMap model, Principal principal,HttpServletRequest request) {

		
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
		
		String studentID =  request.getParameter("id");
		
		model.addAttribute("studentID", studentID);
		
		return "Alumni/search2.jsp";

	}
	@RequestMapping(value = "/searchByID", method = RequestMethod.GET)
	public ModelAndView search(ModelMap model, Principal principal,HttpServletRequest request) {

		String StudentID = request.getParameter("studentID");
		ModelAndView mv = new ModelAndView("Alumni/searchID.jsp");
		
		List<Alumni> al = alumServ.searchByID(StudentID);
		
		
		
		
		mv.addObject("alumniList",al);
		
		try{
			if(al.isEmpty()){
				model.addAttribute("StudentID"," ไม่พบข้อมูล ");
				
			}
			else
				
				model.addAttribute("StudentID",StudentID);
			}
		
		catch(Exception e){
			
		}
		
		return mv;

	}
	@RequestMapping(value = "/searchByID_Association", method = RequestMethod.GET)
	public ModelAndView searchByID_Association(ModelMap model, Principal principal,HttpServletRequest request) throws UnsupportedEncodingException {

		String StudentID = request.getParameter("studentID");
		ModelAndView mv = new ModelAndView("Association/listAlumni_ByID.jsp");
		
		List<Alumni> al = alumServ.searchByID(StudentID);
		
		
		
		
		mv.addObject("alumniList",al);
		
		try{
			if(al.isEmpty()){
				model.addAttribute("StudentID"," ไม่พบข้อมูล ");
				
			}
			else
				
				model.addAttribute("StudentID",StudentID);
			}
		
		catch(Exception e){
			
		}
		
		return mv;

	}
	
	
	
	
	@RequestMapping(value = "/searchByName", method = RequestMethod.GET)
	public ModelAndView searchByName(ModelMap model, Principal principal,HttpServletRequest request) throws UnsupportedEncodingException {

		ModelAndView mv = new ModelAndView("Alumni/searchByName.jsp");
		
		String fname = new String(request.getParameter("fname").getBytes("ISO8859_1"),"UTF-8");
		
		
		List<Alumni> al = alumServ.searchByName(fname);
	
		
		mv.addObject("AlumniList",al);
				try{
					if(al.isEmpty()){
						model.addAttribute("fname"," ไม่พบข้อมูล ");
						
					}
					else
						
						model.addAttribute("fname",fname);
					}
				
				catch(Exception e){
					
				}
				
		return mv;

	}
	@RequestMapping(value = "/searchByName_Association", method = RequestMethod.GET)
	public ModelAndView searchByName_Association(ModelMap model, Principal principal,HttpServletRequest request) throws UnsupportedEncodingException {

		ModelAndView mv = new ModelAndView("Association/listAlumni_ByName.jsp");
		
		String fname = new String(request.getParameter("fname").getBytes("ISO8859_1"),"UTF-8");
		
		
		List<Alumni> al = alumServ.searchByName(fname);
	
		
		mv.addObject("AlumniList",al);
				try{
					if(al.isEmpty()){
						model.addAttribute("fname"," ไม่พบข้อมูล ");
						
					}
					else
						
						model.addAttribute("fname",fname);
					}
				
				catch(Exception e){
					
				}
				
		return mv;

	}
	
	@RequestMapping(value = "/searchByEducation", method = RequestMethod.GET)
	public ModelAndView searchByEducation(ModelMap model, Principal principal,HttpServletRequest request) throws UnsupportedEncodingException {

		ModelAndView mv = new ModelAndView("Alumni/searchByEducation.jsp");
		
		String major = new String(request.getParameter("major").getBytes("ISO8859_1"),"UTF-8");
		String year = new String(request.getParameter("year").getBytes("ISO8859_1"),"UTF-8");
		String school = new String(request.getParameter("school").getBytes("ISO8859_1"),"UTF-8");
		String country = new String(request.getParameter("country").getBytes("ISO8859_1"),"UTF-8");
		String level = new String(request.getParameter("level").getBytes("ISO8859_1"),"UTF-8");
		
		
		List<Education> educationList = educationServ.findEducationBySearch(major,year,school,country,level);
	
		mv.addObject("educationList",educationList);

				try{
					if(educationList.isEmpty()){
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
	
	@RequestMapping(value = "/searchByEducation_Association", method = RequestMethod.GET)
	public ModelAndView searchByEducation_Association(ModelMap model, Principal principal,HttpServletRequest request) throws UnsupportedEncodingException {

		ModelAndView mv = new ModelAndView("Association/listAlumni_ByEducation.jsp");
		
		String major = new String(request.getParameter("major").getBytes("ISO8859_1"),"UTF-8");
		String year = new String(request.getParameter("year").getBytes("ISO8859_1"),"UTF-8");
		String school = new String(request.getParameter("school").getBytes("ISO8859_1"),"UTF-8");
		String country = new String(request.getParameter("country").getBytes("ISO8859_1"),"UTF-8");
		String level = new String(request.getParameter("level").getBytes("ISO8859_1"),"UTF-8");
		
		
		List<Education> educationList = educationServ.findEducationBySearch(major,year,school,country,level);
	
		mv.addObject("educationList",educationList);

				try{
					if(educationList.isEmpty()){
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
	
	@RequestMapping(value = "/searchByAddress_Association", method = RequestMethod.GET)
	public ModelAndView searchByAddress_Association(ModelMap model, Principal principal,HttpServletRequest request) throws UnsupportedEncodingException {

		ModelAndView mv = new ModelAndView("Association/listAlumni_ByAddress.jsp");
		
		String province = new String(request.getParameter("province").getBytes("ISO8859_1"),"UTF-8");
		String status = new String(request.getParameter("status").getBytes("ISO8859_1"),"UTF-8");
		
		
		
		List<Address> addressList = addressServ.searchAddress(province, status);
	
		mv.addObject("addressList",addressList);

				try{
					if(addressList.isEmpty()){
						model.addAttribute("province"," ไม่พบข้อมูล ");
						
					}
					else
						
					model.addAttribute("province",province);
					model.addAttribute("status",status);
					
					}
				
				catch(Exception e){
					
				}
				
		return mv;

	}
}
