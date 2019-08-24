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
      <div class="welcome"><a><img src="images/userPic.png" alt="" /></a><span>Alumni!</span></div>
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
  <li class="dash"><a href="alumni_Profile.do?id=${stu_id}" title=""><span>กลับสู่หน้าก่อนหน้า</span></a></li>
  </ul>
</div>
<!-- Content -->
<div class="content">
  <div class="title">
    <h5>หน้าหลัก</h5>
  </div>
  <!-- Form with validation -->
  	<form:form name="alumni" method="post" id="valid" class="mainForm"  action="saveAlumni_AlumniVIP.do" commandName="alumni" accept-charset="UTF-8">
		<form:hidden path="id" />
		<form:hidden path="editBy" value="${username }"/>
		<form:hidden path="active" />
		<form:hidden path="photoFile" />
		<form:hidden path="status" />
    <fieldset>
      <div class="widget">
        <div class="head">
          <h5 class="iLocked2">ข้อมูลส่วนบุคคล</h5>
        </div>
        
        <div class="rowElem noborder">
          <label>Enter Student ID:</label>
          <div class="formRight">
            <form:input type="text" path="studentID" name="studentID" id="studentID" readonly="true"/>
          </div>
          <div class="fix"></div>
        </div>
        <div class="rowElem">
          <label>Enter Nickname:<span class="req">*</span></label>
          <div class="formRight">
            <form:input type="text" class="validate[required]" path="nickname" name="nickname" id="nickname"/>
          </div>
          <div class="fix"></div>
        </div>
        <div class="rowElem">
          <label>Enter First-Lastname TH:</label>
          <div class="formRight">
            <form:input type="text" path="nameTH" name="nameTH" id="nameTH" readonly="true"/>
          </div>
          <div class="fix"></div>
        </div>
                <div class="rowElem">
          <label>Enter First-Lastname EN:</label>
          <div class="formRight">
            <form:input type="text" path="nameEN" name="nameEN" id="nameEN" readonly="true"/>
          </div>
          <div class="fix"></div>
        </div>
                <div class="rowElem">
          <label>Enter New First-Lastname TH:</label>
          <div class="formRight">
            <form:input type="text" path="firstname_New" name="firstname_New" id="firstname_New"/>
          </div>
          <div class="formRight">
            <form:input type="text" path="lastname_New" name="lastname_New" id="lastname_New"/>
          </div>
          <div class="fix"></div>
        </div>
                <div class="rowElem">
          <label>Enter New First-Lastname EN</label>
          <div class="formRight">
            <form:input type="text" path="firstnameENG_New" name="firstnameENG_New" id="firstnameENG_New"/>
          </div>
                    <div class="formRight">
            <form:input type="text" path="lastnameENG_New" name="lastnameENG_New" id="lastnameENG_New"/>
          </div>
          <div class="fix"></div>
        </div>
                <div class="rowElem">
          <label>Enter Identification Number:<span class="req">*</span></label>
          <div class="formRight">
            <form:input type="text" class="validate[required]" path="card_ID" name="card_ID" id="card_ID"/>
          </div>
          <div class="fix"></div>
        </div>
        <div class="rowElem">
          <label>Enter Blood Group:<span class="req">*</span></label>
          <div class="formRight">
            <div class="floatleft">
              <form:select path="blood_Type" name="blood_Type" id="blood_Type" class="validate[required]">
                
                <form:options items="${bloodlist}" />
              </form:select>
            </div>
          </div>
          <div class="fix"></div>
        </div>
                  <div class="rowElem">
          <label>Enter Date of Birth:<span class="req">*</span></label>
          <div class="formRight">
            <form:input type="date" class="validate[required]" path="date_Birth" name="date_Birth" id="date_Birth"/>
          </div>
          <div class="fix"></div>
        </div>
                <div class="rowElem">
          <label>Enter Place of birth:</label>
          <div class="formRight">
            <form:input type="text" path="place_Birth" name="place_Birth" id="place_Birth" readonly="true"/>
          </div>
          <div class="fix"></div>
        </div>
                <div class="rowElem">
          <label>Enter Nationality:</label>
          <div class="formRight">
            <form:input type="text" path="nationality" name="nationality" id="nationality"/>
          </div>
          <div class="fix"></div>
        </div>
                <div class="rowElem">
          <label>Enter Ethnicity:</label>
          <div class="formRight">
            <form:input type="text" path="ethnivity" name="ethnivity" id="ethnivity" readonly="true"/>
          </div>
          <div class="fix"></div>
        </div>
        <div class="rowElem">
          <label>Enter Religion:</label>
          <div class="formRight">
            <form:input type="text" path="religious" name="religious" id="religious"/>
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
