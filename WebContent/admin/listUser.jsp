<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

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



<script type="text/javascript" src="fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<script type="text/javascript" src="fancybox/jquery.easing-1.4.pack.js"></script>
<script type="text/javascript" src="fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
<link rel="stylesheet" href="css/jquery.fancybox-1.3.4.css" type="text/css" media="screen" />




<script language="javascript">
	$(document).ready(function() {
		$('#example').DataTable({
			dom : 'T<"clear">lfrtip',
			"tableTools" : {
				"sSwfPath" : "swf/copy_csv_xls_pdf.swf",
				"aButtons" : [ {
					"sExtends" : "copy",
					"mColumns" : [ 0, 1, 2, 3 ]
				}, {
					"sExtends" : "csv",
					"mColumns" : [ 0, 1, 2, 3 ]
				}, {
					"sExtends" : "pdf",
					"mColumns" : [ 0, 1, 2, 3 ]
				}, {
					"sExtends" : "print",
					"mColumns" : [ 0, 1, 2, 3 ]

				}, {
					"sExtends" : "xls",
					"mColumns" : [ 0, 1, 2, 3 ]

				} ]
			}
		});
	});

	function OpenPopup() {
		window
				.open(
						'newUser.do',
						'myPopup',
						'width=400,height=200,toolbar=0, menubar=0,location=0,status=1,scrollbars=1,resizable=1');
	}

	function winopen() {
		var setfocus;
		setfocus = window
				.open(
						'newUser.do',
						'myPopup',
						'width=400,height=200,toolbar=0, menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=400,top=100');
		setfocus.focus();
	}

	function editPopup(userID) {
		var setfocus;
		setfocus = window
				.open(
						'editUser.do?id=' + userID,
						'myPopup',
						'width=400,height=200,toolbar=0, menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=400,top=100');
		setfocus.focus();
	}
</script>
</head>

<body>
<!-- Top navigation bar -->
<div id="topNav">
  <div class="fixed">
    <div class="wrapper">
      <div class="welcome"> <a><img src="images/userPic.png" alt="" /></a><span>Admin!</span> </div>
      <div class="userNav">
        <ul>
          <li><a href="j_spring_security_logout" title=""><img
								src="images/icons/topnav/logout.png" alt="" /><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="fix"></div>
    </div>
  </div>
</div>

<!-- Header -->
<div id="header" class="wrapper">
  <div class="logo"> <a><img src="images/loginLogo.png" alt="" /></a> </div>
  <div class="fix"></div>
</div>

<!-- Content wrapper -->
<div class="wrapper">

<!-- Left navigation -->
<div class="leftNav">
  <ul id="menu">
    <li class="typo"><a href="searchUsername.do" title=""><span>กลับสู่หน้าก่อนหน้า</span></a></li>
  </ul>
</div>
<!-- Content -->
<div class="content">
  <div class="title">
    <h5>ข้อมูลรายชื่อผู้ใช้งานระบบ</h5>
  </div>
  <div class="table">
    <div class="head">
      <h5 class="iFrames">คำแนะนำ
        ค้นหารายชื่อผู้ใช้งานระบบจากเงื่อนไขต่างๆ
        และเลือกผู้ใช้งานระบบเพื่อจัดการข้อมูล</h5>
    </div>
    <table id="example" class="display" cellspacing="0" width="100%">
      <thead>
        <tr>
          <th>ชื่อ - สกุล</th>
          <th>ตำแหน่ง</th>
          <th>ชื่อผู้ใช้งาน</th>
          <th>รหัสผ่าน</th>
          <th>แก้ไข</th>
          <th>ลบ</th>
        </tr>
      </thead>
      <tfoot>
        <tr>
          <th>ชื่อ - สกุล</th>
          <th>ตำแหน่ง</th>
          <th>ชื่อผู้ใช้งาน</th>
          <th>รหัสผ่าน</th>
          <th>แก้ไข</th>
          <th>ลบ</th>
        </tr>
      </tfoot>
      <tbody>
        <c:forEach items="${userList}" var="user">
          <tr class="gradeA">
            <td>${user.firstname}${user.lastname}</td>
            <td>${user.type}</td>
            <td class="center">${user.username}</td>
            <td class="center">${user.password}</td>
            <td class="center"><a href="editUser.do?id=${user.entID}"
									title="" class="btn14 mr5"><img
										src="images/icons/color/pencil.png" alt="" /></a></td>
            <td class="center"><a href="deleteUser.do?id=${user.entID}"
									title="" class="btn14 mr5"><img
										src="images/icons/color/paint-can.png" alt="" /></a></td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
</div>
 <div class="fix"></div>
      </div>
<!-- Footer -->
<div id="footer">
	<div class="wrapper">
    	<span>&copy; Copyright 2015. All rights reserved. MFUAlumni
    by <a href="http://www.mfu.ac.th/2012/" title="">Mae Fah Luang University</a></span>
    </div>
</div>
</body>
</html>
