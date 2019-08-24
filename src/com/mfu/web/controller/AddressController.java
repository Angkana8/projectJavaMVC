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
import com.mfu.historyEntity.AddressHistoryFacade;
import com.mfu.service.AddressFacade;
import com.mfu.service.AlumniFacade;




@Controller
public class AddressController {

	@EJB(mappedName = "ejb:/MFUAlumniEJB//AddressImplement!com.mfu.service.AddressFacade")
	AddressFacade addressServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AlumniImplement!com.mfu.service.AlumniFacade")
	AlumniFacade alumServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AddressHistoryImplement!com.mfu.historyEntity.AddressHistoryFacade")
	AddressHistoryFacade addressHisServ;
	
	@RequestMapping("/listAddress")
	public ModelAndView listAddress(HttpServletRequest request) {
		
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
		ModelAndView mv = new ModelAndView("Association/listAddress.jsp");
		
		List<Address> addressList;
		try {
			addressList = addressServ.findAddressByAlumni(Long.parseLong(alumniId));
			mv.addObject("addressList", addressList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/listAddress_Alumni")
	public ModelAndView listAddress_Alumni(HttpServletRequest request) {
		
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
		ModelAndView mv = new ModelAndView("Alumni/listAddress.jsp");
		
		List<Address> addressList;
		try {
			addressList = addressServ.findAddressByAlumni(Long.parseLong(alumniId));
			mv.addObject("addressList", addressList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			
		}
		return mv;
	}
	
	@RequestMapping("/newAddress")
	public ModelAndView newAddress(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("Association/addressForm1.jsp");
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		Alumni alumni = alumServ.findAlumni(Long.parseLong(alumniId));
		Address address = new Address();
		address.setAlumni(alumni);
		mv.addObject("address", address);
		return mv;
	}
	@RequestMapping("/newAddress_Alumni")
	public ModelAndView newAddress_Alumni(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("Alumni/addressForm.jsp");
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		Alumni alumni = alumServ.findAlumni(Long.parseLong(alumniId));
		Address address = new Address();
		address.setAlumni(alumni);
		mv.addObject("address", address);
		return mv;
	}
	

	@RequestMapping("/saveAddress")
	public ModelAndView saveAddress(@ModelAttribute("address") Address address,AddressHistory addressHis,
			BindingResult result, HttpServletRequest request,ModelMap model) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		ModelAndView mv = new ModelAndView("Association/Finish2.jsp");
		
		try {
			// employee is not existed, meaning it's new employee
			if (address.getAddressID() == 0) {
				addressServ.insert(address);
				// employee is existed
			} else {
				
				
				
				
				
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				long alumniID = address.getAlumni().getId();
				Alumni alumni = alumServ.findAlumni(alumniID);
				alumni.setDateEdit(formattedDate);
				
				
				String stuID = alumni.getStudentID();
				String nameTH = alumni.getNameTH();
				long id = alumni.getId();
				
				model.addAttribute("studentID",stuID);
				model.addAttribute("nameTH",nameTH);
				model.addAttribute("id",id);
				
				addressHis.setDateEdit(formattedDate);	
				addressHis.setActive("active");
				long alumID = alumni.getId();
				addressHis.setId(alumID);
				addressHis.setAlumni_id(alumID);
				
				address.setDateEdit(formattedDate);
				address.setActive("active");
				
				addressHisServ.insert(addressHis);
				addressServ.update(address);
				alumServ.update(alumni);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/saveAddress_Alumni")
	public String saveAddress_Alumni(@ModelAttribute("address") Address address,AddressHistory addressHis, 
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (address.getAddressID() == 0) {
				addressServ.insert(address);
				// employee is existed
			} else {
				
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				long alumniID = address.getAlumni().getId();
				Alumni alumni = alumServ.findAlumni(alumniID);
				alumni.setDateEdit(formattedDate);
				
				addressHis.setDateEdit(formattedDate);	
				addressHis.setActive("active");
				long alumID = alumni.getId();
				addressHis.setId(alumID);
				addressHis.setAlumni_id(alumID);
				
				address.setDateEdit(formattedDate);
				address.setActive("active");
				
				addressHisServ.insert(addressHis);
				addressServ.update(address);
				alumServ.update(alumni);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:alumni_Profile.do";
	}
	
	@RequestMapping("/saveAddressHis_Alumni")
	public String saveAddressHis_Alumni(@ModelAttribute("address") AddressHistory addressHis, 
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			
				
				
				
				addressHisServ.update(addressHis);
				
				
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:alumni_Profile.do";
	}
	@RequestMapping("/saveAddress_AlumniVIP")
	public String saveAddress_AlumniVIP(@ModelAttribute("address") Address address,AddressHistory addressHis, 
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());
		try {
			// employee is not existed, meaning it's new employee
			if (address.getAddressID() == 0) {
				addressServ.insert(address);
				// employee is existed
			} else {
				
				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				long alumniID = address.getAlumni().getId();
				Alumni alumni = alumServ.findAlumni(alumniID);
				alumni.setDateEdit(formattedDate);
				
				addressHis.setDateEdit(formattedDate);	
				addressHis.setActive("active");
				long alumID = alumni.getId();
				addressHis.setId(alumID);
				
				address.setDateEdit(formattedDate);
				address.setActive("active");
				
				addressHisServ.insert(addressHis);
				addressServ.update(address);
				alumServ.update(alumni);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:VIPView.do";
	}

	@RequestMapping("/editAddress")
	public ModelAndView editAddress(HttpServletRequest request,Principal principal,ModelMap model) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		Address foundaddress;
		ModelAndView mv = new ModelAndView("Association/addressForm1.jsp");
		try {
			foundaddress = addressServ.findAddressByID(paramId);
			String name = principal.getName();
			model.addAttribute("username",name);
			mv.addObject("address", foundaddress);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping("/editAddress_Alumni")
	public ModelAndView editAddress_Alumni(HttpServletRequest request,Principal principal,ModelMap model) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		Address foundaddress;
		ModelAndView mv = new ModelAndView("Alumni/addressForm1.jsp");
		try {
			foundaddress = addressServ.findAddressByID(paramId);
			String name = principal.getName();
			model.addAttribute("username",name);
			mv.addObject("address", foundaddress);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/editAddressHis_Alumni")
	public ModelAndView editAddressHis_Alumni(HttpServletRequest request,Principal principal,ModelMap model) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		AddressHistory foundaddresshis;
		ModelAndView mv = new ModelAndView("Alumni/addressHisForm.jsp");
		try {
			foundaddresshis = addressHisServ.findAddressByID(paramId);
			String name = principal.getName();
			model.addAttribute("username",name);
			mv.addObject("address", foundaddresshis);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/editAddress_AlumniVIP")
	public ModelAndView editAddress_AlumniVIP(HttpServletRequest request,Principal principal,ModelMap model) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		Address foundaddress;
		ModelAndView mv = new ModelAndView("Alumni/addressVIPForm.jsp");
		try {
			foundaddress = addressServ.findAddressByID(paramId);
			String name = principal.getName();
			model.addAttribute("username",name);
			mv.addObject("address", foundaddress);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/deleteAddress")
	public String deleteAddress(HttpServletRequest request) {
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		long addressid = Long.parseLong(request.getParameter("id"));
		addressServ.delete(addressid);
		return "redirect:listAddress.do";
	}
	@RequestMapping("/deleteAddress_Alumni")
	public String deleteAddress_Alumni(HttpServletRequest request) {
		String alumniId = (String) request.getSession().getAttribute("alumniid");
		long addressid = Long.parseLong(request.getParameter("id"));
		addressServ.delete(addressid);
		return "redirect:listAddress_Alumni.do";
	}

	
}
