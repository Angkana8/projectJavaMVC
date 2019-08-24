package com.mfu.web.controller;


import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

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
import com.mfu.service.AddressFacade;
import com.mfu.service.AlumniFacade;
import com.mfu.service.AwardFacade;
import com.mfu.service.CompanyFacade;
import com.mfu.service.EducationFacade;
import com.mfu.service.OtherFacade;
import com.mfu.user.User;
import com.mfu.user.UserService;

@Controller
public class ReportController {
	
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
	
	@RequestMapping(value = "/indexReport", method = RequestMethod.GET)
	public String indexReport(ModelMap model, Principal principal) {

		String username = principal.getName();
		
		model.addAttribute("username",username);
		return "Association/ReportIndex.jsp";

	}
	
    @RequestMapping(method = RequestMethod.GET , value = "pdf")
    public ModelAndView generatePdfReport(ModelAndView modelAndView){
 
       
 
        Map<String,Object> parameterMap = new HashMap<String,Object>();
 
        List<User> usersList = userServ.getAllUser();
 
        JRDataSource JRdataSource = new JRBeanCollectionDataSource(usersList);
 
        parameterMap.put("datasource", JRdataSource);
 
        //pdfReport bean has ben declared in the jasper-views.xml file
        modelAndView = new ModelAndView("pdfReport", parameterMap);
 
        return modelAndView;
 
    }//generatePdfReport
 
 
 
    @RequestMapping(value = "/chart")
	public String Chart(ModelMap model, Principal principal,HttpServletRequest request) throws UnsupportedEncodingException {
	
    	String school_ar = "เวชศาสตร์ชะลอวัยและฟื้นฟูสุขภาพ";
    	String school_la = "ศิลปศาสตร์";
    	String school_ss = "วิทยาศาสตร์";
    	String school_mm = "การจัดการ";
    	String school_it = "เทคโนโลยีสารสนเทศ";
    	String school_ia = "อุตสาหกรรมเกษตร";
		String school_sl = "นิติศาสตร์";
		String school_cs = "วิทยาศาสตร์เครื่องสำอาง";
		String school_hs = "วิทยาศาสตร์สุขภาพ";
		String school_ns = "พยาบาลศาสตร์";

		
		
		long count_ar = (long) educationServ.countEducationBySchool(school_ar);
		long count_la = (long) educationServ.countEducationBySchool(school_la);
		long count_ss = (long) educationServ.countEducationBySchool(school_ss);
		long count_mm = (long) educationServ.countEducationBySchool(school_mm);
		long count_it = (long) educationServ.countEducationBySchool(school_it);
		long count_ia = (long) educationServ.countEducationBySchool(school_ia);
		long count_sl = (long) educationServ.countEducationBySchool(school_sl);
		long count_cs = (long) educationServ.countEducationBySchool(school_cs);
		long count_hs = (long) educationServ.countEducationBySchool(school_hs);
		long count_ns = (long) educationServ.countEducationBySchool(school_ns);
		
		model.addAttribute("count_ar",count_ar);
		model.addAttribute("count_la",count_la);
		model.addAttribute("count_ss",count_ss);
		model.addAttribute("count_mm",count_mm);
		model.addAttribute("count_it",count_it);
		model.addAttribute("count_ia",count_ia);
		model.addAttribute("count_sl",count_sl);
		model.addAttribute("count_cs",count_cs);
		model.addAttribute("count_hs",count_hs);
		model.addAttribute("count_ns",count_ns);
		
		return "Association/AllSchool.jsp";

	}
	@RequestMapping(value = "/chartSearch")
	public String chartSearch(ModelMap model, Principal principal,HttpServletRequest request) throws UnsupportedEncodingException {

		
		String school = new String(request.getParameter("school").getBytes("ISO8859_1"),"UTF-8");
		
		
		
		long countFromSelect = (long) educationServ.countEducationBySchool(school);
		
		model.addAttribute("school",school);
		model.addAttribute("countFromSelect",countFromSelect);
		
		
		
		return "Association/SearchschoolCountChart.jsp";

	}
	
	@RequestMapping(value = "/DayCount")
	public String DayCount(ModelMap model, Principal principal,HttpServletRequest request) throws UnsupportedEncodingException {

		
		String mon = "mon";
		String tue = "tue";
		String wed = "wed";
		String thu = "thu";
		String fri = "fri";
		String sat = "sat";
		String sun = "sun";
		
		
		
		long countMon = (long) alumServ.countAlumniByDay(mon);
		long counttue = (long) alumServ.countAlumniByDay(tue);
		long countwed = (long) alumServ.countAlumniByDay(wed);
		long countthu = (long) alumServ.countAlumniByDay(thu);
		long countfri = (long) alumServ.countAlumniByDay(fri);
		long countsat = (long) alumServ.countAlumniByDay(sat);
		long countsun = (long) alumServ.countAlumniByDay(sun);
		
		
		
		model.addAttribute("countMon",countMon);
		model.addAttribute("counttue",counttue);
		model.addAttribute("countwed",countwed);
		model.addAttribute("countthu",countthu);
		model.addAttribute("countfri",countfri);
		model.addAttribute("countsat",countsat);
		model.addAttribute("countsun",countsun);
		
		
		
		return "Association/CountDayChart.jsp";

	}
 
 
	@RequestMapping(value = "/print_PDF_Alumni", method = RequestMethod.GET)
	public ModelAndView print_PDF_Alumni(ModelMap model, Principal principal,
			HttpServletRequest request) {

		String name = principal.getName();
		
		String stuID = request.getParameter("id");
		Alumni al = alumServ.findAlumni(Long.parseLong(stuID));

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
		ModelAndView mv = new ModelAndView("Alumni/Alumni_PDF.jsp");

		List<Address> addressList;
		List<AddressHistory> addressHis;
		
		List<Award> awardList;
		List<Company> companyList;		
		List<Education> educationList;
		Other otherList;

		addressList = addressServ.findAddressByAlumni(Long.parseLong(stuID));
		awardList = awardServ.findAwardByAlumni(Long.parseLong(stuID));
		companyList = companyServ.findCompanyByAlumni(Long.parseLong(stuID));
		educationList = educationServ.findEducationByAlumni(Long.parseLong(stuID));
		otherList = otherServ.findOtherByAlumni(Long.parseLong(stuID));
		
		
		
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
		String Photo = al.getPhotoFile();
		
		String adviser = otherList.getAdviser_Name();
		String method = otherList.getMethod_Admission();
		
		addressHis = addressHisServ.searchAddress(StudentID, "ตามทะเบียนบ้าน");
		
		mv.addObject("addresshis", addressHis);
		mv.addObject("addressList", addressList);
		mv.addObject("awardList", awardList);
		mv.addObject("companyList", companyList);
		mv.addObject("educationList", educationList);
		model.addAttribute("stu_id", stu_id);
		model.addAttribute("nickname", nickname);
		model.addAttribute("StudentID", StudentID);
		
		model.addAttribute("Photo", Photo);
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
}
