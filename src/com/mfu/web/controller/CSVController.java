package com.mfu.web.controller;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mfu.csvfile.UploadCSV;
import com.mfu.csvfile.UploadCSVFacade;
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
import com.mfu.socialnetwork.Social;
import com.mfu.socialnetwork.SocialFacade;
import com.mfu.user.User;
import com.mfu.user.UserService;

@Controller
public class CSVController {
	
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
	@EJB(mappedName = "ejb:/MFUAlumniEJB//UploadCSVImplement!com.mfu.csvfile.UploadCSVFacade")
	UploadCSVFacade uploadServ;
	
	
	@RequestMapping("/saveCSV")
	public String saveCSV(@ModelAttribute("user") UploadCSV user,
			BindingResult result, HttpServletRequest request) {
		
		CommonsMultipartFile filea = (CommonsMultipartFile)user.getCsvData();
		InputStream inputStream = null;
		FileOutputStream outputStream = null;
// write file data to file at location of 'fileloc' variable
// the filestore location is situated in EmployeeAppEJBSpring2.war which allow the user to access
		String filename = filea.getOriginalFilename();
		String fileloc = "C:\\workspace\\WebMFUAlumniMVC\\WebContent\\CSVstore\\"+ filename;
		
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
		                 user.setFileCSV(filename);
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
		user.setCsvData(null);

		
		try {
			// employee is not existed, meaning it's new employee
			if (user.getCsvID() == 0) {
				uploadServ.create(user);
				// employee is existed
			} else {
				uploadServ.update(user);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:listCSV.do";
	}
	
	
	
	@RequestMapping("/readAlumni_CSV")
	public ModelAndView ReadCSV(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("admin/SavedCSV.jsp");

		String csvname = request.getParameter("csvname");
		System.out.println(csvname);
		Address address = new Address();
		Alumni alumni = new Alumni();
		Education education = new Education();
		Other other = new Other();
		AddressHistory addressHis = new AddressHistory();
		AlumniHistory alumniHis = new AlumniHistory();
		EducationHistory educationHis = new EducationHistory();
		Social social = new Social();

		User user = new User();

		String csvFile = "C:/workspace/WebMFUAlumniMVC/WebContent/CSVstore/" + csvname;
		BufferedReader br = null;
		String line = "";
		String cvsSplitBy = ",";
		try {

			br = new BufferedReader(new FileReader(csvFile));
			while ((line = br.readLine()) != null) {

				// use comma as separator
				String[] printcsv = line.split(cvsSplitBy);

				// user
				user.setFirstname(printcsv[2]);
				user.setPassword(printcsv[1]);
				user.setUsername(printcsv[1]);
				user.setType("ALUMNI");
				user.setAuthority("ROLE_ALUMNI");

				// alummni
				alumni.setStudentID(printcsv[1]);
				alumni.setNameTH(printcsv[2]);
				alumni.setNameEN(printcsv[3]);
				alumni.setBlood_Type("-");
				alumni.setBlood_Type(printcsv[4]);
				alumni.setPlace_Birth(printcsv[5]);
				alumni.setNationality(printcsv[6]);
				alumni.setEthnivity(printcsv[7]);
				alumni.setReligious(printcsv[8]);
				alumni.setFirstname_New("-");
				alumni.setLastname_New("-");
				alumni.setFirstnameENG_New("-");
				alumni.setLastnameENG_New("-");
				alumni.setCard_ID("-");
				
				alumni.setDate_Birth("-");
				alumni.setActive("nonactive");
				alumni.setDateEdit("-");
				alumni.setEditBy("-");
				alumni.setStatus("normal");
				
				
				

				// address
				address.setVillage(printcsv[9]);
				address.setHouse_Number(printcsv[10]);
				address.setVillage_Number(printcsv[11]);
				address.setLane_Alley(printcsv[12]);
				address.setRoad(printcsv[13]);
				address.setSub_District(printcsv[14]);
				address.setDistrict(printcsv[15]);
				address.setProvince(printcsv[16]);
				address.setPostalcode(printcsv[17]);
				address.setTelephone_Number(printcsv[18]);
				address.setAlumni(alumni);
				address.setVillage("-");
				address.setCountry("ไทย");
				address.setMobile_Number("-");
				address.setTelephone_Number("-");
				address.setHouse_Number("-");
				address.setFax("-");
				address.setEmail("-");
				address.setStatus("notmove");
				address.setActive("nonactive");
				address.setDateEdit("-");
				address.setEditBy("-");
				ArrayList<Address> addList = new ArrayList<Address>();
				addList.add(address);
				alumni.setAddress(addList);

				

				// Education
				education.setYear_Attended(printcsv[20]);
				education.setSchool(printcsv[21]);
				education.setMajor(printcsv[22]);
				education.setCourse(printcsv[22]);
				education.setEducation_Level(printcsv[23]);
				education.setDegree_Name(printcsv[24]);
				education.setCourse_Second(printcsv[25]);
				education.setName_University("มหาวิทยาลัยแม่ฟ้าหลวง");
				education.setCountry("ไทย");
				education.setActive("nonactive");
				education.setDateEdit("-");
				education.setEditBy("-");

				education.setAlumni(alumni);
				ArrayList<Education> educationList = new ArrayList<Education>();
				educationList.add(education);
				alumni.setEducations(educationList);

				// Other
				other.setAdviser_Name(printcsv[26]);
				other.setMethod_Admission(printcsv[19]);
				other.setAlumni(alumni);
				alumni.setOther(other);
				
				// alummniHistory
				alumniHis.setHistoryOf(printcsv[1]);
				alumniHis.setStudentID(printcsv[1]);
				alumniHis.setNameTH(printcsv[2]);
				alumniHis.setNameEN(printcsv[3]);
				alumniHis.setBlood_Type(printcsv[4]);
				alumniHis.setPlace_Birth(printcsv[5]);
				alumniHis.setNationality(printcsv[6]);
				alumniHis.setEthnivity(printcsv[7]);
				alumniHis.setReligious(printcsv[8]);
				alumniHis.setFirstname_New("-");
				alumniHis.setLastname_New("-");
				alumniHis.setFirstnameENG_New("-");
				alumniHis.setLastnameENG_New("-");
				alumniHis.setCard_ID("-");
				alumniHis.setBlood_Type("-");
				alumniHis.setDate_Birth("-");
				alumniHis.setActive("nonactive");
				alumniHis.setDateEdit("-");
				alumniHis.setEditBy("-");
				alumniHis.setStatus("normal");
				
				// addressHis
				addressHis.setHistoryOf(printcsv[1]);
				addressHis.setVillage(printcsv[9]);
				addressHis.setHouse_Number(printcsv[10]);
				addressHis.setVillage_Number(printcsv[11]);
				addressHis.setLane_Alley(printcsv[12]);
				addressHis.setRoad(printcsv[13]);
				addressHis.setSub_District(printcsv[14]);
				addressHis.setDistrict(printcsv[15]);
				addressHis.setProvince(printcsv[16]);
				addressHis.setPostalcode(printcsv[17]);
				addressHis.setTelephone_Number(printcsv[18]);
				addressHis.setVillage("-");
				addressHis.setCountry("ไทย");
				addressHis.setMobile_Number("-");
				addressHis.setTelephone_Number("-");
				addressHis.setHouse_Number("-");
				addressHis.setFax("-");
				addressHis.setEmail("-");
				addressHis.setStatus("ตามทะเบียนบ้าน");
				addressHis.setActive("nonactive");
				addressHis.setDateEdit("-");
				addressHis.setEditBy("-");
				
				// EducationHistory
				educationHis.setHistoryOf(printcsv[1]);
				educationHis.setYear_Attended(printcsv[20]);
				educationHis.setSchool(printcsv[21]);
				educationHis.setMajor(printcsv[22]);
				educationHis.setCourse(printcsv[22]);
				educationHis.setEducation_Level(printcsv[23]);
				educationHis.setDegree_Name(printcsv[24]);
				educationHis.setCourse_Second(printcsv[25]);
				educationHis.setName_University("มหาวิทยาลัยแม่ฟ้าหลวง");
				educationHis.setCountry("ไทย");
				educationHis.setActive("nonactive");
				educationHis.setDateEdit("-");
				educationHis.setEditBy("-");
				educationHis.setStatus("MFU");
				
				// Social
				social.setActive("nonactive");
				social.setFacebook("ไม่มีข้อมูล");
				social.setLine("ไม่มีข้อมูล");
				social.setTweeter("ไม่มีข้อมูล");
				social.setAlumni(alumni);
				ArrayList<Social> socialList = new ArrayList<Social>();
				socialList.add(social);
				alumni.setSocial(socialList);
				
				Alumni check = null;
				 try {
					check =  alumServ.findAlumniByUsername(printcsv[1]);
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				
				if (check == null) {
					alumServ.insert(alumni);
					userServ.create(user);
					
					eduHisServ.insert(educationHis);
					alumHisServ.insert(alumniHis);
					addressHisServ.insert(addressHis);
					// employee is existed
				} else {

					long stuID = check.getId();
					alumni.setId(stuID);
					alumni.setOther(null);
					alumni.setAddress(null);
					alumni.setEducations(null);
					alumni.setSocial(null);
					alumServ.update(alumni);
					
					
				}
				//alumServ.insert(alumni);
				
			}

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		System.out.println("Done");

		// mv.addObject("user", user);
		return mv;
	}
	
	@RequestMapping("/deleteCSV")
	public String deleteCSV(HttpServletRequest request) {
		uploadServ.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:listCSV.do";
	}
	
}
