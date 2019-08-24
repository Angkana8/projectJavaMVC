package com.mfu.web.controller;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.security.Principal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.ejb.EJB;
import javax.enterprise.inject.Model;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mfu.csvfile.UploadCSV;
import com.mfu.entity.Address;
import com.mfu.entity.Alumni;
import com.mfu.entity.Education;
import com.mfu.entity.Other;
import com.mfu.historyEntity.AddressHistory;
import com.mfu.historyEntity.AddressHistoryFacade;
import com.mfu.historyEntity.AlumniHistory;
import com.mfu.historyEntity.AlumniHistoryFacade;
import com.mfu.historyEntity.EducationHistory;
import com.mfu.historyEntity.EducationHistoryFacade;
import com.mfu.service.AddressFacade;
import com.mfu.service.AlumniFacade;
import com.mfu.service.EducationFacade;
import com.mfu.service.OtherFacade;
import com.mfu.socialnetwork.Social;
import com.mfu.socialnetwork.SocialFacade;
import com.mfu.user.User;
import com.mfu.user.UserService;

@Controller
public class AlumniController {

	@EJB(mappedName = "ejb:/MFUAlumniEJB//AlumniImplement!com.mfu.service.AlumniFacade")
	AlumniFacade alumServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AddressImplement!com.mfu.service.AddressFacade")
	AddressFacade addressServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//EducationImplement!com.mfu.service.EducationFacade")
	EducationFacade educationServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//UserFacadeImplement!com.mfu.user.UserService")
	UserService userServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AddressHistoryImplement!com.mfu.historyEntity.AddressHistoryFacade")
	AddressHistoryFacade addressHisServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AlumniHistoryImplement!com.mfu.historyEntity.AlumniHistoryFacade")
	AlumniHistoryFacade alumHisServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//EducationHistoryImplement!com.mfu.historyEntity.EducationHistoryFacade")
	EducationHistoryFacade eduHisServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//SocialImplement!com.mfu.socialnetwork.SocialFacade")
	SocialFacade socialServ;
	
	@RequestMapping("/listAlumni")
	public ModelAndView listAlumni(HttpServletRequest request) {

		List<Alumni> alumniList;
		ModelAndView mv = new ModelAndView("Association/listAlumni.jsp");
		try {
			alumniList = alumServ.getAllAlumni();
			mv.addObject("alumniList", alumniList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping("/contact")
	public ModelAndView contact(HttpServletRequest request) {

		
		ModelAndView mv = new ModelAndView("Alumni/contacts.jsp");
		
		return mv;
	}
	

	@RequestMapping("/newAlumni")
	public ModelAndView newAlumni() {
		ModelAndView mv = new ModelAndView("Association/alumniForm.jsp");
		Alumni alumni = new Alumni();

		mv.addObject("alumni", alumni);
		return mv;
	}
	
	@RequestMapping("/newPhoto")
	public ModelAndView newPhoto(ModelMap model,HttpServletRequest request,Principal principal) {
		

		int paramId = Integer.parseInt(request.getParameter("id"));
		Alumni foundalumni;
		ModelAndView mv = new ModelAndView("Alumni/PhotoForm.jsp");
		try {
			foundalumni = alumServ.findAlumni(paramId);
			String name = principal.getName();


			model.addAttribute("username", name);
			mv.addObject("photo", foundalumni);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
		
		
	}
	
	///
	@RequestMapping("/savePhoto")
	public String savePhoto(@ModelAttribute("photo") Alumni alumni,
			BindingResult result, HttpServletRequest request,Principal principal) {
		
		CommonsMultipartFile filea = (CommonsMultipartFile)alumni.getPhotoData();
		InputStream inputStream = null;
		FileOutputStream outputStream = null;
// write file data to file at location of 'fileloc' variable
// the filestore location is situated in EmployeeAppEJBSpring2.war which allow the user to access
		String filename = filea.getOriginalFilename();
		String userID = principal.getName();
		String fileloc = "C:\\jboss\\standalone\\deployments\\WebMFUAlumniMVC.war\\FileStore\\"+ userID+".jpg";
		
		try {
			if (filea.getSize() > 0) {
				inputStream = filea.getInputStream();
				// File realUpload = new File("C:/");
				outputStream = new FileOutputStream(fileloc);

				int readBytes = 0;
				byte[] buffer = new byte[8192];
				while ((readBytes = inputStream.read(buffer, 0, 8192)) != -1) {
					outputStream.write(buffer, 0, readBytes);
				}
				outputStream.close();
				inputStream.close();
                                 // set photo file path to employee
				alumni.setPhotoFile(userID);
		                 System.out.println("save file at: "+fileloc);

			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
               // set photo data to null to prevent error from EJB
		alumni.setPhotoData(null);

		
		try {
			// employee is not existed, meaning it's new employee
			if (alumni.getId() == 0) {
				alumServ.insert(alumni);
				// employee is existed
			} else {
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				alumni.setDateEdit(formattedDate);
				alumni.setActive("active");
				alumServ.update(alumni);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:alumni.do";
	}
	

	@RequestMapping("/saveAlumni")
	public ModelAndView saveAlumni(@ModelAttribute("alumni") Alumni alumni,AlumniHistory alumniHis,
			BindingResult result, HttpServletRequest request,ModelMap model) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());

		ModelAndView mv = new ModelAndView("Association/Finish2.jsp");
		
		try {
			// employee is not existed, meaning it's new employee
			if (alumni.getId() == 0) {

				alumServ.insert(alumni);
				// employee is existed
			} else {

				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				String stuID = alumni.getStudentID() ;
				String nameTH = alumni.getNameTH();
				long id = alumni.getId();
				model.addAttribute("studentID",stuID);
				model.addAttribute("nameTH",nameTH);
				model.addAttribute("id",id);
				
				DateFormat dfHis = new SimpleDateFormat("EEE,dd/MM/yy,h:mm a");
				String formattedDateHis = dfHis.format(new Date());
				
				alumni.setDateEdit(formattedDate);
				alumniHis.setDateEdit(formattedDateHis);
				alumHisServ.insert(alumniHis);
				alumServ.update(alumni);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/saveAlumni_Alumni")
	public String saveAlumni_Alumni(@ModelAttribute("alumni") Alumni alumni,AlumniHistory alumniHis,
			Education education, BindingResult result,
			HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (alumni.getId() == 0) {
				alumServ.insert(alumni);
				// employee is existed
			} else {

				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				DateFormat dfHis = new SimpleDateFormat("EEE,dd/MM/yy,h:mm a");
				String formattedDateHis = dfHis.format(new Date());

				long stuID = alumni.getId();

				Education found = educationServ
						.findSingleEducationByAlumni(stuID);				
				found.setActive("active");
				
				
				alumniHis.setDateEdit(formattedDateHis);
				alumni.setDateEdit(formattedDate);
				alumni.setActive("active");
				alumniHis.setActive("active");
				
				alumHisServ.insert(alumniHis);
				educationServ.update(found);
				alumServ.update(alumni);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:alumni_Profile.do";
	}

	@RequestMapping("/saveAlumni_AlumniVIP")
	public String saveAlumni_AlumniVIP(@ModelAttribute("alumni") Alumni alumni,AlumniHistory alumniHis,
			Education education, BindingResult result,
			HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (alumni.getId() == 0) {
				alumServ.insert(alumni);
				// employee is existed
			} else {

				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				
				DateFormat dfHis = new SimpleDateFormat("EEE,dd/MM/yy,h:mm a");
				String formattedDateHis = dfHis.format(new Date());

				long stuID = alumni.getId();

				Education found = educationServ
						.findSingleEducationByAlumni(stuID);				
				found.setActive("active");
				
				
				alumniHis.setDateEdit(formattedDateHis);
				alumni.setDateEdit(formattedDate);
				alumni.setActive("active");
				alumniHis.setActive("active");
				
				alumHisServ.insert(alumniHis);
				educationServ.update(found);
				alumServ.update(alumni);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:VIPView.do";
	}
	@RequestMapping("/editAlumni")
	public ModelAndView editAlumni(HttpServletRequest request,
			Principal principal, ModelMap model) {

		int paramId = Integer.parseInt(request.getParameter("id"));
		Alumni foundalumni;
		ModelAndView mv = new ModelAndView("Association/alumniForm1.jsp");
		try {
			foundalumni = alumServ.findAlumni(paramId);
			String name = principal.getName();

			Map<String, String> blood = new LinkedHashMap<String, String>();
			blood.put("A", "A");
			blood.put("B", "B");
			blood.put("AB", "AB");
			blood.put("O", "O");

			mv.addObject("bloodlist", blood);

			model.addAttribute("username", name);
			mv.addObject("alumni", foundalumni);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/update_information")
	public ModelAndView updateAlumni(ModelMap model, Principal principal,HttpServletRequest request) {
		String name = principal.getName();
		String alumniid = request.getParameter("id");
		Alumni al = alumServ.findAlumni(Long.parseLong(alumniid));
		long id = al.getId();
		Alumni foundalumni;
		ModelAndView mv = new ModelAndView("Alumni/alumniForm1.jsp");
		try {
			foundalumni = alumServ.findAlumni(id);
			
			Map<String, String> blood = new LinkedHashMap<String, String>();
			blood.put("A", "A");
			blood.put("B", "B");
			blood.put("AB", "AB");
			blood.put("O", "O");
			
			model.addAttribute("username",name);
			mv.addObject("bloodlist", blood);
			mv.addObject("alumni", foundalumni);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/update_informationVIP")
	public ModelAndView update_informationVIP(ModelMap model, Principal principal,HttpServletRequest request) {
		String name = principal.getName();
		String alumniid = request.getParameter("id");
		Alumni al = alumServ.findAlumni(Long.parseLong(alumniid));
		long id = al.getId();
		Alumni foundalumni;
		ModelAndView mv = new ModelAndView("Alumni/alumniVIPForm.jsp");
		try {
			foundalumni = alumServ.findAlumni(id);
			
			Map<String, String> blood = new LinkedHashMap<String, String>();
			blood.put("A", "A");
			blood.put("B", "B");
			blood.put("AB", "AB");
			blood.put("O", "O");
			
			model.addAttribute("username",name);
			mv.addObject("bloodlist", blood);
			mv.addObject("alumni", foundalumni);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/deleteAlumni")
	public String deleteAlumni(HttpServletRequest request) {
		alumServ.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:listAlumni.do";
	}

	
}
