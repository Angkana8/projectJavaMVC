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
import com.mfu.entity.Company;
import com.mfu.service.AlumniFacade;
import com.mfu.service.CompanyFacade;

@Controller
public class CompanyController {

	@EJB(mappedName = "ejb:/MFUAlumniEJB//CompanyImplement!com.mfu.service.CompanyFacade")
	CompanyFacade companyServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AlumniImplement!com.mfu.service.AlumniFacade")
	AlumniFacade alumServ;

	@RequestMapping("/listCompany")
	public ModelAndView listCompany(HttpServletRequest request) {

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
		
		List<Company> companyList;
		ModelAndView mv = new ModelAndView("Association/listCompany.jsp");
		try {
			companyList = companyServ.findCompanyByAlumni(Long.parseLong(alumniId));
			mv.addObject("companyList", companyList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping("/listCompany_Alumni")
	public ModelAndView listCompany_Alumni(HttpServletRequest request) {

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
		
		List<Company> companyList;
		ModelAndView mv = new ModelAndView("Alumni/listCompany.jsp");
		try {
			companyList = companyServ.findCompanyByAlumni(Long.parseLong(alumniId));
			mv.addObject("companyList", companyList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/newCompany")
	public ModelAndView newCompany(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("Association/companyForm1.jsp");
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		Alumni alumni = alumServ.findAlumni(Long.parseLong(alumniId));
		Company company = new Company();
		company.setAlumni(alumni);
		mv.addObject("company", company);
		return mv;
	}
	@RequestMapping("/newCompany_Alumni")
	public ModelAndView newCompany_Alumni(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("Alumni/companyForm1.jsp");
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		Alumni alumni = alumServ.findAlumni(Long.parseLong(alumniId));
		Company company = new Company();
		company.setAlumni(alumni);
		mv.addObject("company", company);
		return mv;
	}
	@RequestMapping("/newCompany_AlumniVIP")
	public ModelAndView newCompany_AlumniVIP(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("Alumni/companyVIPForm.jsp");
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		Alumni alumni = alumServ.findAlumni(Long.parseLong(alumniId));
		Company company = new Company();
		company.setAlumni(alumni);
		mv.addObject("company", company);
		return mv;
	}

	@RequestMapping("/saveCompany")
	public String saveAward(@ModelAttribute("company") Company company,
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (company.getCompID() == 0) {
				
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				company.setDateEdit(formattedDate);
				companyServ.insert(company);
				// employee is existed
			} else {
				companyServ.update(company);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:listCompany.do";
	}
	@RequestMapping("/saveCompany_Alumni")
	public String saveAward_Alumni(@ModelAttribute("company") Company company,
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (company.getCompID() == 0) {
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				company.setDateEdit(formattedDate);
				
				
				companyServ.insert(company);
				// employee is existed
			} else {
				
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				company.setDateEdit(formattedDate);
				
				companyServ.update(company);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:alumni_Profile.do";
	}
	@RequestMapping("/saveCompany_AlumniVIP")
	public String saveCompany_AlumniVIP(@ModelAttribute("company") Company company,
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (company.getCompID() == 0) {
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				company.setDateEdit(formattedDate);
				
				companyServ.insert(company);
				// employee is existed
			} else {
				
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				company.setDateEdit(formattedDate);
				
				companyServ.update(company);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:VIPView.do";
	}

	@RequestMapping("/editCompany")
	public ModelAndView editCompany(HttpServletRequest request) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		Company foundcompany;
		ModelAndView mv = new ModelAndView("Association/companyForm1.jsp");
		try {
			foundcompany = companyServ.findCompanyByID(paramId);
			mv.addObject("company", foundcompany);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping("/editCompany_Alumni")
	public ModelAndView editCompany_Alumni(HttpServletRequest request) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		Company foundcompany;
		ModelAndView mv = new ModelAndView("Alumni/companyForm1.jsp");
		try {
			foundcompany = companyServ.findCompanyByID(paramId);
			mv.addObject("company", foundcompany);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/deleteCompany")
	public String deleteCompany(HttpServletRequest request) {
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		long companyid = Long.parseLong(request.getParameter("id"));
		companyServ.delete(companyid);
		return "redirect:listCompany.do";
	}
	@RequestMapping("/deleteCompany_Alumni")
	public String deleteCompany_Alumni(HttpServletRequest request) {
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		long companyid = Long.parseLong(request.getParameter("id"));
		companyServ.delete(companyid);
		return "redirect:alumni_Profile.do";
	}
	@RequestMapping("/deleteCompany_AlumniVIP")
	public String deleteCompany_AlumniVIP(HttpServletRequest request) {
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		long companyid = Long.parseLong(request.getParameter("id"));
		companyServ.delete(companyid);
		return "redirect:VIPView.do";
	}
}
