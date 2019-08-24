package com.mfu.web.controller;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.ejb.EJB;
import javax.persistence.MapKeyTemporal;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mfu.csvfile.UploadCSV;
import com.mfu.csvfile.UploadCSVFacade;
import com.mfu.entity.Address;
import com.mfu.entity.Alumni;
import com.mfu.entity.Education;
import com.mfu.entity.Other;
import com.mfu.service.AddressFacade;
import com.mfu.service.AlumniFacade;
import com.mfu.user.User;
import com.mfu.user.UserService;
//import com.sun.java.swing.plaf.windows.resources.windows;

@Controller
public class userController {

	@EJB(mappedName = "ejb:/MFUAlumniEJB//UserFacadeImplement!com.mfu.user.UserService")
	UserService userServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//UploadCSVImplement!com.mfu.csvfile.UploadCSVFacade")
	UploadCSVFacade uploadServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AddressImplement!com.mfu.service.AddressFacade")
	AddressFacade addressServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AlumniImplement!com.mfu.service.AlumniFacade")
	AlumniFacade alumServ;

	
	@RequestMapping("/index")
	public ModelAndView index(HttpServletRequest request,Principal principal,ModelMap model) {

		List<User> userList;
		
		ModelAndView mv = new ModelAndView("admin/index.jsp");
		String name = principal.getName();
		model.addAttribute("username", name);
		return mv;
	}
	@RequestMapping("/searchUsername")
	public ModelAndView searchUsername(HttpServletRequest request,Principal principal,ModelMap model) {

		
		ModelAndView mv = new ModelAndView("admin/SearchUser1.jsp");
	
		return mv;
	}
	@RequestMapping("/listUser")
	public ModelAndView listUser(HttpServletRequest request) {

		List<User> userList;
		
		ModelAndView mv = new ModelAndView("admin/listUser.jsp");
		try {
			userList = userServ.getAllUser();
			
			mv.addObject("userList", userList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping(value = "/searchUserByUsername", method = RequestMethod.GET)
	public ModelAndView search(ModelMap model, Principal principal,HttpServletRequest request) {

		String StudentID = request.getParameter("studentID");
		ModelAndView mv = new ModelAndView("admin/listUser.jsp");
		
		List<User> userList = null;
		
		
		try {
			userList = userServ.SearchUserByID(StudentID);
			
			mv.addObject("userList", userList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return mv;

	}
	@RequestMapping(value = "/searchUserByName", method = RequestMethod.GET)
	public ModelAndView searchUserByName(ModelMap model, Principal principal,HttpServletRequest request) throws UnsupportedEncodingException {

		String firstname = new String(request.getParameter("firstname").getBytes("ISO8859_1"),"UTF-8");

		String lastname = request.getParameter("lastname");
		ModelAndView mv = new ModelAndView("admin/listUser.jsp");
		
		List<User> userList = null;
		
		
		try {
			userList = userServ.SearchUserByName(firstname,lastname);
			System.out.println("first name" +firstname);
			mv.addObject("userList", userList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return mv;

	}
	@RequestMapping("/listCSV")
	public ModelAndView listCSV(HttpServletRequest request) {

		List<UploadCSV> csvList;
		
		ModelAndView mv = new ModelAndView("admin/listCSV.jsp");
		try {
			csvList = uploadServ.getAllCSV();
			
			mv.addObject("csvList", csvList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

	
	
	@RequestMapping("/newUser")
	public ModelAndView newUser(Object target,Errors errors) {
		ModelAndView mv = new ModelAndView("admin/userForm.jsp");
		User user = new User();
		
		
		Map<String, String> authority = new LinkedHashMap<String, String>();
		authority.put("ROLE_ALUMNI", "ศิษย์เก่า");
		authority.put("ROLE_ALUMNIVIP", "ผู้แทนรุ่น");
		authority.put("ROLE_USER", "พนักงานสมาคมนักศึกษา");
		authority.put("ROLE_ADMIN", "ผู้ดูแลระบบ");

		Map<String, String> type = new LinkedHashMap<String, String>();
		type.put("ALUMNI", "ศิษย์เก่า");
		type.put("ALUMNI_VIT", "ผู้แทนรุ่น");
		type.put("ASSOCIATION", "พนักงานสมาคมนักศึกษา");
		type.put("ADMIN", "ผู้ดูแลระบบ");

		mv.addObject("typelist", type);
		mv.addObject("authoritylist", authority);
		mv.addObject("user", user);
		return mv;
	}
	@RequestMapping("/newCSV")
	public ModelAndView newUser_CSV() {
		ModelAndView mv = new ModelAndView("admin/UploadCSV.jsp");
		UploadCSV user = new UploadCSV();

		mv.addObject("user", user);
		return mv;
	}

	@RequestMapping("/saveUser")
	public String saveUser(@ModelAttribute("user") User user,
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (user.getEntID() == 0) {
				
				java.util.Date today = new java.util.Date();
				
				
				
				userServ.create(user);
				// employee is existed
			} else {
				userServ.update(user);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:listUser.do";
	}
	
	

	@RequestMapping("/editUser")
	public ModelAndView editUser(HttpServletRequest request) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		User founduser;
		ModelAndView mv = new ModelAndView("admin/userForm.jsp");
		try {
			founduser = userServ.findUserById(paramId);
			
			Map<String, String> authority = new LinkedHashMap<String, String>();
			authority.put("ROLE_ALUMNI", "ศิษย์เก่า");
			authority.put("ROLE_ALUMNIVIP", "ผู้แทนรุ่น");
			authority.put("ROLE_USER", "พนักงานสมาคมนักศึกษา");
			authority.put("ROLE_ADMIN", "ผู้ดูแลระบบ");
			

			Map<String, String> type = new LinkedHashMap<String, String>();
			type.put("ALUMNI", "ศิษย์เก่า");
			type.put("ALUMNI_VIT", "ผู้แทนรุ่น");
			type.put("ASSOCIATION", "พนักงานสมาคมนักศึกษา");
			type.put("ADMIN", "ผู้ดูแลระบบ");
			
			
			

			mv.addObject("typelist", type);
			mv.addObject("authoritylist", authority);
			
			
			mv.addObject("user", founduser);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/changePassword")
	public ModelAndView changePassword(HttpServletRequest request,ModelMap model) {
		String paramId = request.getParameter("id");
		User founduser;
		ModelAndView mv = new ModelAndView("Alumni/changePassword.jsp");
		try {
			founduser = userServ.findUserByStudentID(paramId);
			
			String username = founduser.getUsername();
			String oldPass = founduser.getPassword();
			
			
			

			
			model.addAttribute("username",username);
			model.addAttribute("oldPass",oldPass);
			mv.addObject("user", founduser);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/deleteUser")
	public String deleteUser(HttpServletRequest request) {
		userServ.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:listUser.do";
	}
	
	@RequestMapping("/saveChangePassword")
	public String saveChangePassword(@ModelAttribute("user") User user,
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (user.getEntID() == 0) {
				
				java.util.Date today = new java.util.Date();
				
				
				
				userServ.create(user);
				// employee is existed
			} else {
				
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				String alumniID = user.getUsername();
				Alumni alumni = alumServ.findAlumniByUsername(alumniID);
				alumni.setDateEdit(formattedDate);
				alumni.setActive("active");
				
				alumServ.update(alumni);
				userServ.update(user);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:finish.do";
	}
	
}
