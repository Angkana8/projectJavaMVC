<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  --></head>

<body>

<!-- Top navigation bar -->
<div id="topNav">
  <div class="fixed">
    <div class="wrapper">
      <div class="welcome"><a><img src="images/userPic.png" alt="" /></a><span>Association!</span></div>
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
	    <li class="dash"><a href="#" title="" class="exp"><span>จัดการข้อมูล</span><span class="numberLeft">4</span></a>
	      <ul class="sub">
	        <li><a href="index.html" title="">จัดการข้อมูลประวัติ</a></li>
	        <li><a href="form_elements.html" title="">จัดการข้อมูลการศักยภาพ</a></li>
	        <li><a href="calendar.html" title="">จัดการข้อมูลการได้รับรางวัล</a></li>
	        <li><a href="charts.html" title="">จัดการข้อมูลผู้แทนรุ่น</a></li>
          </ul>
        </li>
	    <li class="typo"><a href="#" title="" class="exp"><span>รายงานสารสนเทศ</span><span class="numberLeft">2</span></a>
	      <ul class="sub">
	        <li><a href="#" title="">จัดการรายงานสารสนเทศ</a></li>
	        <li><a href="#" title="">การส่งออกข้อมูลสารสนเทศ</a></li>
          </ul>
        </li>
	    <li class="tables"><a href="tables.html" title=""><span>สร้างแบบสอบถาม</span></a></li>
      </ul>
</div>
	<!-- Content -->
	<div class="content">
	  <div class="title">
	    <h5>จัดการข้อมูลการศักยภาพ</h5>
      </div>
	  <div class="table">
	    <div class="head">
	      <h5 class="iFrames">ผลการค้นหา พบข้อมูลทั้งหมดจำนวน 11 รายการ</h5>
        </div>
	    <table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
	      <thead>
	        <tr>
	          <th>ลำดับ</th>
	          <th>ชื่อ - สกุล</th>
	          <th>สาขาวิชาที่สำเร็จการศึกษา</th>
	          <th>สำนักวิชาที่สำเร็จการศึกษา</th>
	          <th>กลุ่มอาชีพ</th>
	          <th>ระดับ</th>
	          <th>ตำแหน่ง</th>
	          <th>ดู</th>
	          <th>แก้ไข</th>
	          <th>ลบ</th>
            </tr>
          </thead>
	      <tbody>
	        <c:forEach items="${companyList}" var="company">
	          <tr class="gradeA">
	            <td class="center">1</td>
	            <td>MR.  PRIDCHAWIN  SONGHAI</td>
	            <td class="center">Computer Engineering</td>
	            <td class="center">Information Technology</td>
	            <td class="center">1</td>
	            <td class="center">${company.level}</td>
	            <td class="center">${company.department}</td>
	            <td class="center"><a href="#" title="" class="btn14 mr5"><img src="images/icons/color/report-paper.png" alt="" /></a></td>
	            <td class="center"><a href="editCompany.do?id=${company.compID}" title="" class="btn14 mr5"><img src="images/icons/color/pencil.png" alt="" /></a></td>
	            <td class="center"><a href="deleteCompany.do?id=${company.compID}" title="" class="btn14 mr5"><img src="images/icons/color/paint-can.png" alt="" /></a></td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
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
