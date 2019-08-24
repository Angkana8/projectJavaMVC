package com.mfu.web.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;








import com.mfu.entity.Alumni;
import com.mfu.entity.Award;
import com.mfu.service.AlumniFacade;
import com.mfu.service.AwardFacade;



@Controller
public class AwardController {

	@EJB(mappedName = "ejb:/MFUAlumniEJB//AwardImplement!com.mfu.service.AwardFacade")
	AwardFacade awardServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AlumniImplement!com.mfu.service.AlumniFacade")
	AlumniFacade alumServ;
	
	@RequestMapping("/listAward")
	public ModelAndView listAward(HttpServletRequest request) {
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
		
		List<Award> awardList;
		ModelAndView mv = new ModelAndView("Association/listAward.jsp");
		try {
			awardList = awardServ.findAwardByAlumni(Long.parseLong(alumniId));
			mv.addObject("awardList", awardList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping("/listAward_Alumni")
	public ModelAndView listAward_Alumni(HttpServletRequest request) {
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
		
		List<Award> awardList;
		ModelAndView mv = new ModelAndView("Alumni/listAward.jsp");
		try {
			awardList = awardServ.findAwardByAlumni(Long.parseLong(alumniId));
			mv.addObject("awardList", awardList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/newAward")
	public ModelAndView newAward(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("Association/awardForm.jsp");
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		Alumni alumni = alumServ.findAlumni(Long.parseLong(alumniId));
		Award award = new Award();
		award.setAlumni(alumni);
		mv.addObject("award", award);
		return mv;
	}
	@RequestMapping("/newAward_Alumni")
	public ModelAndView newAward_Alumni(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("Alumni/awardForm1.jsp");
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		Alumni alumni = alumServ.findAlumni(Long.parseLong(alumniId));
		Award award = new Award();
		award.setAlumni(alumni);
		mv.addObject("award", award);
		return mv;
	}
	@RequestMapping("/newAward_AlumniVIP")
	public ModelAndView newAward_AlumniVIP(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("Alumni/awardVIPForm.jsp");
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		Alumni alumni = alumServ.findAlumni(Long.parseLong(alumniId));
		Award award = new Award();
		award.setAlumni(alumni);
		mv.addObject("award", award);
		return mv;
	}

	@RequestMapping("/saveAward")
	public String saveAward(@ModelAttribute("award") Award award,Alumni alumni,
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (award.getAwardId() == 0) {
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				award.setDateEdit(formattedDate);
				
				awardServ.save(award);
				// employee is existed
			} else {
				
				
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				award.setDateEdit(formattedDate);
		
				
				awardServ.update(award);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:listAward.do";
	}
	@RequestMapping("/saveAward_Alumni")
	public String saveAward_Alumni(@ModelAttribute("award") Award award,
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (award.getAwardId() == 0) {
				awardServ.save(award);
				// employee is existed
			} else {
				
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				award.setDateEdit(formattedDate);
				awardServ.update(award);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:alumni_Profile.do";
	}
	@RequestMapping("/saveAward_AlumniVIP")
	public String saveAward_AlumniVIP(@ModelAttribute("award") Award award,
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (award.getAwardId() == 0) {
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				award.setDateEdit(formattedDate);
				
				awardServ.save(award);
				// employee is existed
			} else {
				
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				award.setDateEdit(formattedDate);
				awardServ.update(award);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:VIPView.do";
	}

	@RequestMapping("/editAward")
	public ModelAndView editAward(HttpServletRequest request) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		Award foundaward;
		ModelAndView mv = new ModelAndView("Association/awardForm.jsp");
		try {
			foundaward = awardServ.findAwardById(paramId);
			mv.addObject("award", foundaward);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping("/editAward_Alumni")
	public ModelAndView editAward_Alumni(HttpServletRequest request) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		Award foundaward;
		ModelAndView mv = new ModelAndView("Alumni/awardForm.jsp");
		try {
			foundaward = awardServ.findAwardById(paramId);
			mv.addObject("award", foundaward);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/deleteAward")
	public String deleteAward(HttpServletRequest request) {
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		long awardid = Long.parseLong(request.getParameter("id"));
		awardServ.delete(awardid);
		return "redirect:listAward.do";
	}
	@RequestMapping("/deleteAward_Alumni")
	public String deleteAward_Alumni(HttpServletRequest request) {
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		long awardid = Long.parseLong(request.getParameter("id"));
		awardServ.delete(awardid);
		return "redirect:alumni_Profile.do";
	}
	@RequestMapping("/deleteAward_AlumniVIP")
	public String deleteAward_AlumniVIP(HttpServletRequest request) {
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		long awardid = Long.parseLong(request.getParameter("id"));
		awardServ.delete(awardid);
		return "redirect:VIPView.do";
	}
	
}
