<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
<script type="text/javascript" src="fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<script type="text/javascript" src="fancybox/jquery.easing-1.4.pack.js"></script>
<script type="text/javascript" src="fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
<link rel="stylesheet" href="css/jquery.fancybox-1.3.4.css" type="text/css" media="screen" />
<script language="javascript">

function OpenPopup()
{
	window.open('newUser.do','myPopup','width=400,height=200,toolbar=0, menubar=0,location=0,status=1,scrollbars=1,resizable=1');
}

function winopen() { 
	var setfocus;
	  setfocus = window.open('newUser.do','myPopup','width=400,height=200,toolbar=0, menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=400,top=100');
	  setfocus.focus();
	}

function editPopup(userID) { 
	var setfocus;
	  setfocus = window.open('editUser.do?id='+userID,'myPopup','width=650,height=200,toolbar=0, menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=0,top=0');
	  setfocus.focus();
	}



</script>
</head>

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
   <li class="dash"><a href="indexAssociation.do" title=""><span>กลับสู่หน้าหลัก</span></a></li>
  </ul>
</div>
<!-- Content -->
<div class="content">
  <div class="title">
    <h5>จัดการข้อมูลประวัติ</h5>
  </div>
  <!-- Form with validation -->
  
  	<form:form name="company" method="post" id="valid" class="mainForm" action="saveCompany.do" commandName="company">
		<form:hidden path="compID" />
		<form:hidden path="alumni.id" />
    <fieldset>
      <div class="widget">
        <div class="head">
          <h5 class="iLocked2">เพิ่ม/แก้ไข ข้อมูลการทำงาน</h5>
        </div>
        <div class="rowElem noborder">
          <label>Enter employment status:</label>
               <div class="formRight noSearch">
              <select path="employment_Status" name="employment_Status" id="employment_Status" class="chzn-select" >
                <option value="">เลือก สถานภาพการทำงาน</option>
                <option value="อยู่ระหว่างดำรงตำแหน่ง">อยู่ระหว่างดำรงตำแหน่ง</option>
                <option value="สิ้นสุดการทำงาน">สิ้นสุดการทำงาน</option>
              </select>
            </div>
          <div class="fix"></div>
        </div>
        <div class="rowElem">
          <label>Enter level:</label>
          <div class="formRight">
            <form:input type="text" path="level" name="level" id="level"/>
          </div>
          <div class="fix"></div>
        </div>
        <div class="rowElem">
          <label>Enter type:</label>
          <div class="formRight">
            <form:input type="text" path="type" name="type" id="type"/>
          </div>
          <div class="fix"></div>
        </div>
                <div class="rowElem">
          <label>Enter department:</label>
          <div class="formRight">
            <form:input type="text" path="department" name="department" id="department"/>
          </div>
          <div class="fix"></div>
        </div>
                <div class="rowElem">
          <label>Enter position:</label>
          <div class="formRight">
            <form:input type="text" path="position" name="position" id="position"/>
          </div>
          <div class="fix"></div>
        </div>
                <div class="rowElem">
          <label>country:</label>
          <div class="formRight">
            <form:input type="text" path="country" name="country" id="country"/>
          </div>
          <div class="fix"></div>
        </div>
           <div class="rowElem">
          <label>Enter work place:</label>
          <div class="formRight">
            <form:input type="text" path="work_Place" name="work_Place" id="work_Place"/>
          </div>
          <div class="fix"></div>
        </div>
                  <div class="rowElem">
          <label>Enter date work:</label>
          <div class="formRight">
            <form:input type="date" path="date_Work" name="date_Work" id="date_Work"/>
          </div>
          <div class="fix"></div>
        </div>
        <input type="submit" value="Save" class="greyishBtn submitForm"/>
        <div class="fix"></div>
      </div>
    </fieldset>
  </form:form>
  
  <!-- Validation form --> 
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
