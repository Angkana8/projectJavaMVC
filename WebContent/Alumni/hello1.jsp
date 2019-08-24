<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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


function OpenPopup(studentID)
{
	window.open('print_PDF_Alumni.do?id='+studentID);
}


</script>
</head>

<body>

<!-- Top navigation bar -->
<div id="topNav">
  <div class="fixed">
  <div class="wrapper">
      <div class="welcome"><a><img src="images/userPic.png" alt="" /></a><span>${nameTH}!</span></div>
      <div class="userNav">
        <ul>
          <li><a href="contact.do" title=""><img
								src="images/icons/topnav/contactAdmin.png" alt="" /><span>Contact
            admin</span></a></li>
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
    <li class="dash"><a href="alumni_Profile.do?id=${stu_id}" title=""><span>ดูข้อมูลประวัติ</span></a></li>
    <li class="typo"><a href="listSocial_Alumni.do?id=${stu_id}" title="" ><span>เครือข่ายสังคมออนไลน์</span></a></li>
    <li class="contacts"><a href="searchindex.do?id=${stu_id}" title=""><span>ค้นหานักศึกษา</span></a></li>
    <li class="errors"><a href="changePassword.do?id=${StudentID}" title=""><span>เปลี่ยนรหัสผ่าน</span></a></li>

  </ul>
</div>

<!-- Content -->
<div class="content">
  <div class="title">
    <h5>หน้าหลัก</h5>
  </div>
          <!-- Accordion -->
   <div class="widget first">
            <div class="head"><h5 class="iCreate">ยินดีต้อนรับ</h5></div>
            <div class="menu_body">
        <div class="supTicket nobg">
          
          <div class="issueSummary">
             
            <div class="pics">
              <ul>
                <li><a href="downloadPhoto.do" title="" rel="prettyPhoto"><img src="downloadPhoto.do" height="100" alt="" /></a>
                  <div class="actions"> <a href="newPhoto.do?id=${stu_id}" title=""><img src="images/edit.png" alt="" /></a></div>
                </li>
              </ul>
              <div class="fix"></div>
            </div>
      
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
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">เลขบัตรประจำตัวประชาชน:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${Card_ID}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">หมู่โลหิต:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${blood_Type}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">วัน เดือน ปี เกิด:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${date_Birth}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">สถานที่เกิด:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${place_Birth}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">สัญชาติ:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${nationality}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">เชื้อชาติ:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${ethnivity}</td>
                </tr>
                <tr border="0">
                  <td width="15"></td>
                  <td valign="top" bgcolor="#F0F0FF">ศาสนา:</td>
                  <td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${religious}</td>
                </tr>
               
              </tbody>
            </table>
            
            <div class="fix"></div>
            
          </div>
        </div>
      </div>
        </div>
  <!--End Accordion -->
  
  
  <sec:authorize access="hasRole('ROLE_ALUMNIVIP')">
  </sec:authorize>
  
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
