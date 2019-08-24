package com.mfu.web.controller;

import java.security.Principal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;














import com.mfu.entity.Alumni;
import com.mfu.entity.Education;
import com.mfu.historyEntity.EducationHistory;
import com.mfu.historyEntity.EducationHistoryFacade;
import com.mfu.service.AlumniFacade;
import com.mfu.service.EducationFacade;



@Controller
public class EducationController {

	@EJB(mappedName = "ejb:/MFUAlumniEJB//EducationImplement!com.mfu.service.EducationFacade")
	EducationFacade educationServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AlumniImplement!com.mfu.service.AlumniFacade")
	AlumniFacade alumServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//EducationHistoryImplement!com.mfu.historyEntity.EducationHistoryFacade")
	EducationHistoryFacade eduHisServ;
	
	@RequestMapping("/listEducation")
	public ModelAndView listEducation(HttpServletRequest request) {
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
		
		List<Education> educationList;
		
		ModelAndView mv = new ModelAndView("Association/listEducation.jsp");
		try {
			educationList = educationServ.findEducationByAlumni(Long.parseLong(alumniId));
			
			Education r = new Education();
		String nameth =	r.getAlumni().getNameTH();
			
			mv.addObject("educationList", educationList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping("/listEducation_Alumni")
	public ModelAndView listEducation_Alumni(HttpServletRequest request) {
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
		
		List<Education> educationList;
		ModelAndView mv = new ModelAndView("Alumni/listEducation.jsp");
		try {
			educationList = educationServ.findEducationByAlumni(Long.parseLong(alumniId));
			mv.addObject("educationList", educationList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/newEducation")
	public ModelAndView newEducation(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("Association/educationForm1.jsp");
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		Alumni alumni = alumServ.findAlumni(Long.parseLong(alumniId));
		Education education = new Education();
		education.setAlumni(alumni);
		mv.addObject("education", education);
		return mv;
	}
	@RequestMapping("/newEducation_Alumni")
	public ModelAndView newEducation_Alumni(HttpServletRequest request,Principal principal,ModelMap model) {
		ModelAndView mv = new ModelAndView("Alumni/educationForm1.jsp");
		String alumniId = (String) request.getSession().getAttribute("alumniid");		
		Alumni alumni = alumServ.findAlumni(Long.parseLong(alumniId));
		Education education = new Education();
		education.setAlumni(alumni);
		
		String name = principal.getName();
		model.addAttribute("username",name);
		
		Map<String, String> degree = new LinkedHashMap<String, String>();
		degree.put("ปริญญาตรี", "ปริญญาตรี");
		degree.put("ปริญญาโท", "ปริญญาโท");
		degree.put("ปริญญาเอก", "ปริญญาเอก");
		
		mv.addObject("degreelist", degree);
		mv.addObject("education", education);
		return mv;
	}
	
	@RequestMapping("/newEducation_AlumniVIP")
	public ModelAndView newEducation_AlumniVIP(HttpServletRequest request,Principal principal,ModelMap model) {
		ModelAndView mv = new ModelAndView("Alumni/educationVIPForm.jsp");
		String alumniId = (String) request.getSession().getAttribute("alumniid");		
		Alumni alumni = alumServ.findAlumni(Long.parseLong(alumniId));
		Education education = new Education();
		education.setAlumni(alumni);
		
		String name = principal.getName();
		model.addAttribute("username",name);
		
		Map<String, String> degree = new LinkedHashMap<String, String>();
		degree.put("ปริญญาตรี", "ปริญญาตรี");
		degree.put("ปริญญาโท", "ปริญญาโท");
		degree.put("ปริญญาเอก", "ปริญญาเอก");
		
		mv.addObject("degreelist", degree);
		mv.addObject("education", education);
		return mv;
	}

	@RequestMapping("/saveEducation")
	public String saveEducation(@ModelAttribute("education") Education education,EducationHistory educationHis,
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (education.getEducationID() == 0) {
				educationServ.insert(education);
				// employee is existed
			} else {
				
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				educationHis.setDateEdit(formattedDate);					
				education.setDateEdit(formattedDate);
				
				eduHisServ.insert(educationHis);
				educationServ.update(education);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:listEducation.do";
	}
	@RequestMapping("/saveEducation_Alumni")
	public String saveEducation_Alumni(@ModelAttribute("education") Education education,EducationHistory educationHis,
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (education.getEducationID() == 0) {
				
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				educationHis.setDateEdit(formattedDate);	
				educationHis.setActive("active");
				
				eduHisServ.insert(educationHis);
				educationServ.insert(education);
				// employee is existed
			} else {
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				long alumniID = education.getAlumni().getId();
				
				Alumni alumni = alumServ.findAlumni(alumniID);
				alumni.setDateEdit(formattedDate);
				
				
				educationServ.update(education);
				alumServ.update(alumni);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:alumni_Profile.do";
	}
	
	@RequestMapping("/saveEducation_AlumniVIP")
	public String saveEducation_AlumniVIP(@ModelAttribute("education") Education education,EducationHistory educationHis,
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (education.getEducationID() == 0) {
				
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				educationHis.setDateEdit(formattedDate);	
				educationHis.setActive("active");
				
				eduHisServ.insert(educationHis);
				educationServ.insert(education);
				// employee is existed
			} else {
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				long alumniID = education.getAlumni().getId();
				
				Alumni alumni = alumServ.findAlumni(alumniID);
				alumni.setDateEdit(formattedDate);
				
				
				educationServ.update(education);
				alumServ.update(alumni);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:VIPView.do";
	}
	

	@RequestMapping("/editEducation_Alumni")
	public ModelAndView editEducation_Alumni(HttpServletRequest request) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		Education foundeducation;
		ModelAndView mv = new ModelAndView("Alumni/educationForm1.jsp");
		try {
			foundeducation = educationServ.findEducationByID(paramId);
			mv.addObject("education", foundeducation);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping("/editEducation")
	public ModelAndView editEducation(HttpServletRequest request) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		Education foundeducation;
		ModelAndView mv = new ModelAndView("Association/educationForm1.jsp");
		try {
			foundeducation = educationServ.findEducationByID(paramId);
			mv.addObject("education", foundeducation);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/deleteEducation")
	public String deleteEducation(HttpServletRequest request) {
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		long educationid = Long.parseLong(request.getParameter("id"));
		educationServ.delete(educationid);
		return "redirect:listEducation.do";
	}
	@RequestMapping("/deleteEducation_Alumni")
	public String deleteEducation_Alumni(HttpServletRequest request) {
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		long educationid = Long.parseLong(request.getParameter("id"));
		educationServ.delete(educationid);
		return "redirect:alumni_Profile.do";
	}
	@RequestMapping("/deleteEducation_AlumniVIP")
	public String deleteEducation_AlumniVIP(HttpServletRequest request) {
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		long educationid = Long.parseLong(request.getParameter("id"));
		educationServ.delete(educationid);
		return "redirect:VIPView.do";
	}
	
}
