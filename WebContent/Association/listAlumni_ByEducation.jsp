<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="css/dataTables.tableTools.css">
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.tableTools.min.js"></script>



<!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  -->

<script language="javascript">
function Profile(userID) { 
	var setfocus;
	  setfocus = window.open('profile.do?id='+userID);
	  setfocus.focus();
	}

function Edit(userID) { 
	var setfocus;
	  setfocus = window.open('EditAlumni_Profile.do?id='+userID);
	  setfocus.focus();
	}

function EditHistory(userID) { 
	var setfocus;
	  setfocus = window.open('listAlumniHis.do?id='+userID);
	  setfocus.focus();
	}
	
function editPopup(alumniID) { 
	var setfocus;
	  setfocus = window.open('editAlumni.do?id='+alumniID,'myPopup','width=650,height=400,toolbar=0, menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=0,top=0');
	  setfocus.focus();
	}
	
$(document).ready(function() {
	$('#example').DataTable({
		dom : 'T<"clear">lfrtip',
        "tableTools": {
            "sSwfPath": "swf/copy_csv_xls_pdf.swf",
            "aButtons": [
                         {
                             "sExtends": "copy",
                             "mColumns": [0, 1, 2]
                         },
                         {
                             "sExtends": "print",
                             "mColumns": [0, 1, 2]
                         
                         },{
                             "sExtends": "xls",
                             "mColumns": [0, 1, 2]
                         
                         }
                     ]
        }
	});
});
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
  <div class="table">
    <div class="head">
      <h5 class="iFrames">ข้อมูลที่ค้นหา</h5>
    </div>
    
      <table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
        <thead>
          <tr>
			 <th>รหัสนักศึกษา</th>
            <th>ชื่อ - สกุล(ไทย)</th>
            <th>สำนักวิชา/สาขาวิชา</th> 
           
            <th>ดู</th>
            <th>แก้ไข</th>
            <th>คืนค่าข้อมูล</th>
            <th>ลบ</th>
            
          </tr>
        </thead>
          <tbody>
          <c:forEach items="${educationList}" var="edu">
            <tr class="gradeA">
              <td class="center">${edu.alumni.studentID}</td>
              <td>${edu.alumni.nameTH}</td>
              <td>${edu.major }</td>
              
               
            
            
              
              <td class="center"><INPUT TYPE="image" src="images/icons/color/report-paper.png" NAME="btnPopup_1"  ID="btnPopup_1" OnClick="Profile(${edu.alumni.id})"></td>
                
                <td class="center"><INPUT TYPE="image" src="images/icons/color/pencil.png" NAME="btnPopup_2"  ID="btnPopup_1" OnClick="Edit(${edu.alumni.studentID})"></td>
                <td class="center"><INPUT TYPE="image" src="images/icons/color/arrow-circle-double.png" NAME="btnPopup_2"  ID="btnPopup_1" OnClick="EditHistory(${edu.alumni.id})"></td>
                
              <td class="center"><a href="deleteAlumni.do?id=${edu.alumni.id}" title="" class="btn14 mr5"><img src="images/icons/color/paint-can.png" alt="" /></a></td>
 
            
            
            
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
