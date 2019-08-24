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

import com.mfu.entity.Address;
import com.mfu.entity.Alumni;
import com.mfu.historyEntity.AddressHistory;
import com.mfu.historyEntity.AddressHistoryFacade;
import com.mfu.historyEntity.AlumniHistory;
import com.mfu.historyEntity.AlumniHistoryFacade;
import com.mfu.service.AddressFacade;
import com.mfu.service.AlumniFacade;


@Controller
public class HistoryController {

	@EJB(mappedName = "ejb:/MFUAlumniEJB//AlumniHistoryImplement!com.mfu.historyEntity.AlumniHistoryFacade")
	AlumniHistoryFacade alumHisServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AlumniImplement!com.mfu.service.AlumniFacade")
	AlumniFacade alumServ;
	
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AddressImplement!com.mfu.service.AddressFacade")
	AddressFacade addressServ;
	@EJB(mappedName = "ejb:/MFUAlumniEJB//AddressHistoryImplement!com.mfu.historyEntity.AddressHistoryFacade")
	AddressHistoryFacade addressHisServ;
	
	@RequestMapping("/listAlumniHis")
	public ModelAndView listAlumni(HttpServletRequest request) {

		List<AlumniHistory> alumniHisList;
		List<AddressHistory> addressHisList;
		
		long alumID = Long.parseLong(request.getParameter("id"));
		
		ModelAndView mv = new ModelAndView("Association/listAlumniHis.jsp");
		try {
			alumniHisList = alumHisServ.findListOfAlumniHistory(alumID);
			
			List<Address> addList = addressServ.findAddressByAlumni(alumID);
			
			
			
													
			
			mv.addObject("alumniHisList", alumniHisList);
			mv.addObject("addList", addList);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/listAddressHistory")
	public ModelAndView listAddressHistory(HttpServletRequest request) {

		
		List<AddressHistory> addressHisList;
		
		long addID = Long.parseLong(request.getParameter("id"));
		
		ModelAndView mv = new ModelAndView("Association/listAddHis.jsp");
		try {
			
			
			addressHisList= addressHisServ.findAddressByAlumni(addID);
			
			
			
													
			
			
			mv.addObject("addressHisList", addressHisList);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/editAlumniHis")
	public ModelAndView editAlumniHis(HttpServletRequest request,
			Principal principal,ModelMap model) {

		AlumniHistory alumniHis;
		
		long alumID = Long.parseLong(request.getParameter("id"));
		
		ModelAndView mv = new ModelAndView("Association/alumniForm1.jsp");
		try {
			alumniHis = alumHisServ.findAlumniHistory(alumID);
			String name = principal.getName();

			Map<String, String> blood = new LinkedHashMap<String, String>();
			blood.put("A", "A");
			blood.put("B", "B");
			blood.put("AB", "AB");
			blood.put("O", "O");

			mv.addObject("bloodlist", blood);

													
			model.addAttribute("username", name);
			mv.addObject("alumni", alumniHis);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/editAddressHis")
	public ModelAndView editAddress(HttpServletRequest request,Principal principal,ModelMap model) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		AddressHistory foundaddresshis;
		Address foundaddress;
		ModelAndView mv = new ModelAndView("Association/addressForm.jsp");
		try {
			foundaddresshis = addressHisServ.findAddressByID(paramId);
			long addressID = foundaddresshis.getAddressID();
			String village = foundaddresshis.getVillage();
			String house_Number = foundaddresshis.getHouse_Number();
			String village_Number = foundaddresshis.getVillage_Number();
			String road = foundaddresshis.getRoad();
			String sub_District = foundaddresshis.getSub_District();
			String district = foundaddresshis.getDistrict();
			String province = foundaddresshis.getProvince();
			String country = foundaddresshis.getCountry();
			String postalcode = foundaddresshis.getPostalcode();
			String status = foundaddresshis.getStatus();
			String mobile_Number = foundaddresshis.getMobile_Number();
			String telephone_Number = foundaddresshis.getTelephone_Number();
			String fax = foundaddresshis.getFax();
			String email = foundaddresshis.getEmail();
			
			
			foundaddress = addressServ.findAddressByID(addressID);
			
			String name = principal.getName();
			model.addAttribute("username",name);
			model.addAttribute("village",village);
			model.addAttribute("house_Number",house_Number);
			model.addAttribute("road",road);
			model.addAttribute("sub_District",sub_District);
			model.addAttribute("district",district);
			model.addAttribute("country",country);
			model.addAttribute("province",province);
			model.addAttribute("village_Number",village_Number);
			model.addAttribute("postalcode",postalcode);
			model.addAttribute("status",status);
			model.addAttribute("mobile_Number",mobile_Number);
			model.addAttribute("telephone_Number",telephone_Number);
			model.addAttribute("fax",fax);
			model.addAttribute("email",email);
			
			mv.addObject("address", foundaddress);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/saveAlumniHistory")
	public String saveAlumniHistory(@ModelAttribute("alumnihis") AlumniHistory alumnihis,
			BindingResult result, HttpServletRequest request) {
		// System.out.println("saving "+employee.getFirstname()+" "+employee.getLastname());

		try {
			// employee is not existed, meaning it's new employee
			if (alumnihis.getId() == 0) {

				alumHisServ.insert(alumnihis);
				// employee is existed
			} else {

				DateFormat df = new SimpleDateFormat("EEE,dd/MM/yy");
				String formattedDate = df.format(new Date());
				alumnihis.setDateEdit(formattedDate);

				long id = alumnihis.getId();
				String nameTH = alumnihis.getNameTH();
				String nameEN = alumnihis.getNameEN();
				String f_name_New = alumnihis.getFirstname_New();
				String l_name_New = alumnihis.getLastname_New();
				String f_name_ENG_New  = alumnihis.getFirstnameENG_New();
				String l_name_ENG_New = alumnihis.getLastnameENG_New();
				String Card_ID = alumnihis.getCard_ID();
				String Date_Birth = alumnihis.getDate_Birth();
				String Blood_Type = alumnihis.getBlood_Type();
				String Place_Birth = alumnihis.getPlace_Birth();
				String Nationality = alumnihis.getNationality();
				String Ethnivity = alumnihis.getEthnivity();
				String Religious = alumnihis.getReligious();
				String StudentID = alumnihis.getStudentID();
				String active = alumnihis.getActive();
				String editBy = alumnihis.getEditBy();
				String status = alumnihis.getStatus();
				
				Alumni foundalumni;
				
				foundalumni = alumServ.findAlumni(id);
				
				foundalumni.setStudentID(StudentID);
				foundalumni.setNameTH(nameTH);
				foundalumni.setNameEN(nameEN);
				foundalumni.setBlood_Type(Blood_Type);
				foundalumni.setPlace_Birth(Place_Birth);
				foundalumni.setNationality(Nationality);
				foundalumni.setEthnivity(Ethnivity);
				foundalumni.setReligious(Religious);
				foundalumni.setFirstname_New(f_name_New);
				foundalumni.setLastname_New(l_name_New);
				foundalumni.setFirstnameENG_New(f_name_ENG_New);
				foundalumni.setLastnameENG_New(l_name_ENG_New);
				foundalumni.setCard_ID(Card_ID);
				foundalumni.setDate_Birth(Date_Birth);
				foundalumni.setActive(active);
				foundalumni.setDateEdit(formattedDate);
				foundalumni.setEditBy(editBy);
				foundalumni.setStatus(status);
				
				alumServ.update(foundalumni);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:indexAssociation.do";
	}
	
	
	
}
