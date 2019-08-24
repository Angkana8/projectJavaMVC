<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>Mae Fah Luang University Alumni</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Cuprum' rel='stylesheet' type='text/css' />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/plugins/spinner/jquery.mousewheel.js"></script>
<script type="text/javascript" src="js/plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/plugins/wysiwyg/jquery.wysiwyg.js"></script>
<script type="text/javascript" src="js/plugins/wysiwyg/wysiwyg.image.js"></script>
<script type="text/javascript" src="js/plugins/wysiwyg/wysiwyg.link.js"></script>
<script type="text/javascript" src="js/plugins/wysiwyg/wysiwyg.table.js"></script>
<script type="text/javascript" src="js/plugins/flot/jquery.flot.js"></script>
<script type="text/javascript" src="js/plugins/flot/jquery.flot.orderBars.js"></script>
<script type="text/javascript" src="js/plugins/flot/jquery.flot.pie.js"></script>
<script type="text/javascript" src="js/plugins/flot/excanvas.min.js"></script>
<script type="text/javascript" src="js/plugins/flot/jquery.flot.resize.js"></script>
<script type="text/javascript" src="js/plugins/tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="js/plugins/tables/colResizable.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/forms.js"></script>
<script type="text/javascript" src="js/plugins/forms/autogrowtextarea.js"></script>
<script type="text/javascript" src="js/plugins/forms/autotab.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.validationEngine-en.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.validationEngine.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.dualListBox.js"></script>
<script type="text/javascript" src="js/plugins/forms/chosen.jquery.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.maskedinput.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.inputlimiter.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="js/plugins/other/calendar.min.js"></script>
<script type="text/javascript" src="js/plugins/other/elfinder.min.js"></script>
<script type="text/javascript" src="js/plugins/uploader/plupload.js"></script>
<script type="text/javascript" src="js/plugins/uploader/plupload.html5.js"></script>
<script type="text/javascript" src="js/plugins/uploader/plupload.html4.js"></script>
<script type="text/javascript" src="js/plugins/uploader/jquery.plupload.queue.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.progress.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.jgrowl.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.tipsy.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.alerts.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.colorpicker.js"></script>
<script type="text/javascript" src="js/plugins/wizards/jquery.form.wizard.js"></script>
<script type="text/javascript" src="js/plugins/wizards/jquery.validate.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.breadcrumbs.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.collapsible.min.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.ToTop.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.listnav.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.sourcerer.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.timeentry.min.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript" src="js/charts/chart.js"></script>

<!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  -->


<script language="javascript">

function newEducation()
{
	window.open('newEducation_Alumni.do','myPopup','width=350,height=300,toolbar=0, menubar=0,location=0,status=1,scrollbars=1,resizable=1');
}

function newAward() { 
	  setfocus = window.open('newAward_Alumni.do','myPopup','width=400,height=200,toolbar=0, menubar=0,location=0,status=1,scrollbars=1,resizable=1');
	  
	}

function newCompany() { 
	  setfocus = window.open('newCompany_Alumni.do','myPopup','width=400,height=200,toolbar=0, menubar=0,location=0,status=1,scrollbars=1,resizable=1');
	  
	}

function editPopup(addressID) { 
	var setfocus;
	  setfocus = window.open('editAddress_Alumni.do?id='+addressID,'myPopup','width=350,height=400,toolbar=0, menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=0,top=0');
	  setfocus.focus();
	}

function editAlumniPopup(AlumniID) { 
	var setfocus;
	  setfocus = window.open('update_information.do?id='+AlumniID,'myPopup','width=500,height=400,toolbar=0, menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=0,top=0');
	  setfocus.focus();
	}
	
function doit(){
	if (!window.print){
	alert("You need NS4.x to use this print button!")
	return
	}
	window.print()
	}

function profile(AlumniID) { 
	var setfocus;
	  setfocus = window.open('print_PDF_Alumni.do?id='+AlumniID);
	  setfocus.focus();
	}
</script>
</head>

<body>

<!-- Top navigation bar -->
<div id="topNav">
  <div class="fixed">
    <div class="wrapper">
      <div class="welcome"><a><img src="images/userPic.png" alt="" /></a><span><sec:authorize access="hasRole('ROLE_ALUMNI')">Alumni!</sec:authorize><sec:authorize access="hasRole('ROLE_USER')">Association!</sec:authorize></span></div>
      <div class="userNav">
        <ul>
          <li><a href="j_spring_security_logout" title=""><img src="images/icons/topnav/logout.png" alt="" /><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="fix"></div>
    </div>
  </div>
</div>

<!-- Header -->
<div id="header" class="wrapper">
  <div class="logo"><a><img src="images/loginLogo.png" alt="" /></a></div>
  <div class="fix"></div>
</div>

<!-- Content wrapper -->
<div class="wrapper">

<!-- Left navigation -->
<div class="leftNav">
  <ul id="menu">
  <sec:authorize access="hasRole('ROLE_ALUMNI')">
  <li class="dash"><a href="alumni.do" title=""><span>กลับสู่หน้าหลัก</span></a></li>
  </sec:authorize>
  
   <sec:authorize access="hasRole('ROLE_USER')">
  <li class="dash"><a href="indexAssociation.do" title=""><span>กลับสู่หน้าหลัก</span></a></li>
  <li class="typo"><a href="#" onclick="profile(${stu_id })" title=""><span>ส่งออกข้อมูลประวัติ</span></a></li>
  </sec:authorize>
  </ul>
</div>

<!-- Content -->
<div class="content">
  <div class="title">
    <h5>ข้อมูลประวัติ</h5>
  </div>
          <!-- Accordion -->
<div class="widget acc">
      <div class="head">
        <h5>ประวัติส่วนตัว</h5>
      </div>
      <div class="menu_body">
        <div class="supTicket nobg">
          <div class="issueType"> <span class="issueInfo"><a href="#" title="">ประวัติส่วนตัว</a></span>
            <div class="fix"></div>
          </div>
          <div class="issueSummary">
            <sec:authorize access="hasRole('ROLE_ADMIN')">
            <div class="pics">
              <ul>
                <li><a href="images/big.png" title="" rel="prettyPhoto"><img src="images/img.png" alt="" /></a>
                  <div class="actions"> <a href="#" title=""><img src="images/edit.png" alt="" /></a> <a href="#" title=""><img src="images/delete.png" alt="" /></a> </div>
                </li>
              </ul>
              <div class="fix"></div>
            </div>
      </sec:authorize>
            <table border="0" cellspacing="0" cellpadding="0">
              <tbody>
                <tr border="0">
                  <td></td>
                  <td colspan="2" valign="top" bgcolor="#F0F0FF"><div class="issueType"> <span class="issueInfo"><a href="#" title="">รายละเอียด</a></span>
                      <div class="fix"></div>
                    </div></td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td width="420" valign="top" bgcolor="#F0F0FF">รหัสประจำตัว:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${StudentID}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">ชื่อ-สกุล ภาษาไทย:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${nameTH}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">ชื่อ-สกุล ภาษาอังกฤษ:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${nameEN}</td>
                </tr>
                                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">ชื่อ-สกุล ใหม่ภาษาไทย:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${f_name_New} ${l_name_New}</td>
                                                  <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">ชื่อ-สกุล ใหม่ภาษาอังกฤษ:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${f_name_ENG_New} ${l_name_ENG_New}</td>
                </tr>
                <sec:authorize access="hasRole('ROLE_USER')">
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">เลขบัตรประจำตัวประชาชน:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${Card_ID}</td>
                </tr>
                </sec:authorize>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">หมู่โลหิต:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${Blood_Type}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">วัน เดือน ปี เกิด:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${Date_Birth}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">สถานที่เกิด:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${Place_Birth}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">สัญชาติ:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${Nationality}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">เชื้อชาติ:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${Ethnivity}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">ศาสนา:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${Religious}</td>
                </tr>
               
              </tbody>
            </table>
            <div class="rowElem noborder">
            </div>
            <div class="fix"></div>
            
          </div>
        </div>
      </div>   
      
      <div class="head">
        <h5>ที่อยู่ปัจจุบันที่สามารถติดต่อได้</h5>
      </div>
      <div class="menu_body">
        <div class="supTicket nobg">
          <div class="issueType"> <span class="issueInfo"><a href="#" title="">ที่อยู่ปัจจุบันที่สามารถติดต่อได้</a></span>
            <div class="fix"></div>
          </div>
          <div class="issueSummary">
          <c:forEach items="${addressList}" var="address">
            <table border="0" cellpadding="0" cellspacing="0" dwcopytype="CopyTableRow">
              <tbody>
                <tr border="0">
                  <td width="15"></td>
                  <td width="420" valign="top" bgcolor="#F0F0FF">หมู่บ้าน:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${address.village}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">เลขที่:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${address.house_Number}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">หมู่ที่:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${address.village_Number}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">ตรอก/ซอย:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${address.lane_Alley}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">ถนน:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${address.road}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">ตำบล/แขวง:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${address.sub_District}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">อำเภอ/เขต:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${address.district}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">จังหวัด:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${address.province}</td>
                </tr>               <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">รหัสไปรษณีย์:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${address.postalcode}</td>
                </tr>
                                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">ประเทศ:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${address.country}</td>
                </tr>
 <sec:authorize access="hasRole('ROLE_USER')">
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">โทรศัพท์เคลื่อนที่:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${address.mobile_Number}</td>
                </tr>
                           <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">โทรศัพท์:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${address.telephone_Number}</td>
                </tr>
                           <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">โทรสาร:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${address.fax}</td>
                </tr>
                 </sec:authorize>
                                    <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">อีเมล:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${address.email}</td>
                </tr>
              </tbody>
            </table>
            <div class="rowElem noborder">
              
            </div>
            <div class="fix"></div>
            </c:forEach>
          </div>
        </div>
      </div>
      <div class="head">
        <h5>ประวัติการศึกษา</h5>
      </div>
      <div class="menu_body">
        <div class="supTicket nobg">
          <div class="issueType"> <span class="issueInfo"><a href="#" title="">ประวัติการศึกษา</a></span>
            <div class="fix"></div>
          </div>
          <div class="issueSummary">
            <div class="widget first">
              <div class="head">
                <h5 class="">ประวัติการศึกษา</h5>
              </div>
              <table cellpadding="0" cellspacing="0" width="100%" class="tableStatic">
                <thead>
                  <tr>
                    
                    <td width="%">วัน เดือน ปี ที่สำเร็จการศึกษา</td>
                    <td width="%">ระดับการศึกษาที่สำเร็จ</td>
                    <td width="%">สำเร็จการศึกษาจากสถานศึกษา</td>
                    <td width="%">ปริญญาที่สำเร็จการศึกษา</td>
                    <td width="%">หลักสูตรที่สำเร็จการศึกษา</td>
                    <td width="%">คณะ/สำนักวิชาที่สำเร็จการศึกษา</td>
                    <td width="%">สาขาวิชาที่สำเร็จการศึกษา</td>
                    <td width="%">รายวิชาโทที่สำเร็จการศึกษา</td>
                    <td width="%">ประเทศ</td>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <td width="%">เกรดเฉลี่ยสะสม(GPAX)</td>
                    </sec:authorize>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${educationList}" var="education">
                  <tr>
                    
                    <td>${education.year_Attended}</td>
                    <td>${education.education_Level}</td>
                    <td>${education.name_University}</td>
                    <td>${education.degree_Name}</td>
                    <td>${education.course}</td>
                    <td>${education.school}</td>
                    <td>${education.major}</td>
                    <td>${education.course_Second}</td>
                    <td>${education.country}</td>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                 	<td>${education.gpax}</td>
                 	</sec:authorize>
                  
                  </tr>
                  </c:forEach>
                  
                </tbody>
              </table>
            </div>
            <div class="rowElem noborder">
              <label></label>
            </div>
            <div class="fix"></div>
          </div>
        </div>
      </div>
      <div class="head">
        <h5>ประวัติการทำงาน</h5>
      </div>
      <div class="menu_body">
        <div class="supTicket nobg">
          <div class="issueType"> <span class="issueInfo"><a href="#" title="">ประวัติการทำงาน</a></span>
            <div class="fix"></div>
          </div>
          <div class="issueSummary">
            <div class="widget first">
              <div class="head">
                <h5 class="">ประวัติการทำงาน</h5>
              </div>
              <table cellpadding="0" cellspacing="0" width="100%" class="tableStatic">
                <thead>
                  <tr>
                   
                    <td width="%">วัน เดือน ปี ที่ดำรงตำแหน่ง</td>
                    <td width="%">ระดับการทำงาน</td>
                    <td width="%">ฝ่าย/แผนก</td>
                    <td width="%">ตำแหน่ง</td>
                    <td width="%">สถานที่ทำงาน</td>
                    <td width="%">ประเทศ</td>
                    <td width="%">สถานภาพการทำงาน</td>
                    
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <td width="%">แก้ไข</td>
                    <td width="%">ลบ</td>
                    </sec:authorize>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${companyList}" var="company">
                  <tr>
                    
                    <td>${company.date_Work}</td>
                    <td>${company.level}</td>
                    <td>${company.department}</td>
                    <td>${company.position}</td>
                    <td>${company.work_Place}</td>
                    <td>${company.country}</td>
                    <td>${company.employment_Status}</td>
         
                    <sec:authorize access="hasRole('ROLE_USER')">
                    <td><a href="#" title="" class="btn14 mr5"><img src="images/icons/color/pencil.png" alt="" /></a></td>
                    <td><a href="#" title="" class="btn14 mr5"><img src="images/icons/color/paint-can.png" alt="" /></a></td>
                    </sec:authorize>
                  </tr>
                  </c:forEach>
               
                </tbody>
              </table>
            </div>
            <div class="rowElem noborder">
              
              <label></label>
            </div>
            <div class="fix"></div>
          </div>
        </div>
      </div>
      <div class="head">
        <h5>การได้รับรางวัล</h5>
      </div>
      <div class="menu_body">
        <div class="supTicket nobg">
          <div class="issueType"> <span class="issueInfo"><a href="#" title="">การได้รับรางวัล</a></span>
            <div class="fix"></div>
          </div>
          <div class="issueSummary">
            <div class="widget first">
              <div class="head">
                <h5 class="">การได้รับรางวัล</h5>
              </div>
              <table cellpadding="0" cellspacing="0" width="100%" class="tableStatic">
                <thead>
                  <tr>
                   
                    <td width="%">วัน เดือน ปี ปีที่ได้รับรางวัล</td>
                    <td width="%">ชื่อรางวัล</td>
                    <td width="%">ระดับรางวัล</td>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <td width="%">แก้ไข</td>
                    <td width="%">ลบ</td>
                    </sec:authorize>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${awardList}" var="award">
                  <tr>
                    
                    <td>${award.date_Award}</td>
                    <td>${award.name_Award}</td>
                    <td>${award.level_Award}</td>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <td><a href="#" title="" class="btn14 mr5"><img src="images/icons/color/pencil.png" alt="" /></a></td>
                    <td><a href="#" title="" class="btn14 mr5"><img src="images/icons/color/paint-can.png" alt="" /></a></td>
                    </sec:authorize>
                  </tr>
                  </c:forEach>
                
                </tbody>
              </table>
            </div>
            <div class="rowElem noborder">
              
              <label></label>
            </div>
            <div class="fix"></div>
          </div>
        </div>
      </div>
      <sec:authorize access="hasRole('ROLE_USER')">
      <div class="head">
        <h5>ข้อมูลเพิ่มเติมอื่นๆ</h5>
      </div>
      <div class="menu_body">
        <div class="supTicket nobg">
          <div class="issueType"> <span class="issueInfo"><a href="#" title="">ข้อมูลเพิ่มเติมอื่นๆ</a></span>
            <div class="fix"></div>
          </div>
          <div class="issueSummary">
            <table border="0" cellpadding="0" cellspacing="0" dwcopytype="CopyTableRow">
              <tbody>            
                <tr border="0">
                  <td width="15"></td>
                  <td width="420" valign="top" bgcolor="#F0F0FF">วิธีรับเข้าศึกษา:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${method}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">อาจารย์ ที่ปรึกษา:</td>
                  <td align="left" bgcolor="#F5F5FF" valign="top">${adviser}</td>
                </tr>            
              </tbody>
            </table>
            <div class="rowElem noborder">
              
            </div>
            <div class="fix"></div>
          </div>
        </div>
      </div>
       </sec:authorize>
    </div>
  <!--End Accordion -->
  
  
  
  
  
</div>
<div class="fix"></div></div>
<!-- Footer -->
<div id="footer">
	<div class="wrapper">
    	<span>&copy; Copyright 2015. All rights reserved. MFUAlumni
    by <a href="http://www.mfu.ac.th/2012/" title="">Mae Fah Luang University</a></span>
    </div>
</div>
</body>
</html>
