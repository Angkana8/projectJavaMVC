<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>Mae Fah Luang University Alumni</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Cuprum'
	rel='stylesheet' type='text/css' />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript"
	src="js/plugins/spinner/jquery.mousewheel.js"></script>
<script type="text/javascript" src="js/plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="js/plugins/wysiwyg/jquery.wysiwyg.js"></script>
<script type="text/javascript" src="js/plugins/wysiwyg/wysiwyg.image.js"></script>
<script type="text/javascript" src="js/plugins/wysiwyg/wysiwyg.link.js"></script>
<script type="text/javascript" src="js/plugins/wysiwyg/wysiwyg.table.js"></script>
<script type="text/javascript" src="js/plugins/flot/jquery.flot.js"></script>
<script type="text/javascript"
	src="js/plugins/flot/jquery.flot.orderBars.js"></script>
<script type="text/javascript" src="js/plugins/flot/jquery.flot.pie.js"></script>
<script type="text/javascript" src="js/plugins/flot/excanvas.min.js"></script>
<script type="text/javascript"
	src="js/plugins/flot/jquery.flot.resize.js"></script>
<script type="text/javascript"
	src="js/plugins/tables/jquery.dataTables.js"></script>
<script type="text/javascript"
	src="js/plugins/tables/colResizable.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/forms.js"></script>
<script type="text/javascript"
	src="js/plugins/forms/autogrowtextarea.js"></script>
<script type="text/javascript" src="js/plugins/forms/autotab.js"></script>
<script type="text/javascript"
	src="js/plugins/forms/jquery.validationEngine-en.js"></script>
<script type="text/javascript"
	src="js/plugins/forms/jquery.validationEngine.js"></script>
<script type="text/javascript"
	src="js/plugins/forms/jquery.dualListBox.js"></script>
<script type="text/javascript"
	src="js/plugins/forms/chosen.jquery.min.js"></script>
<script type="text/javascript"
	src="js/plugins/forms/jquery.maskedinput.min.js"></script>
<script type="text/javascript"
	src="js/plugins/forms/jquery.inputlimiter.min.js"></script>
<script type="text/javascript"
	src="js/plugins/forms/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="js/plugins/other/calendar.min.js"></script>
<script type="text/javascript" src="js/plugins/other/elfinder.min.js"></script>
<script type="text/javascript" src="js/plugins/uploader/plupload.js"></script>
<script type="text/javascript"
	src="js/plugins/uploader/plupload.html5.js"></script>
<script type="text/javascript"
	src="js/plugins/uploader/plupload.html4.js"></script>
<script type="text/javascript"
	src="js/plugins/uploader/jquery.plupload.queue.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.progress.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.jgrowl.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.tipsy.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.alerts.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.colorpicker.js"></script>
<script type="text/javascript"
	src="js/plugins/wizards/jquery.form.wizard.js"></script>
<script type="text/javascript"
	src="js/plugins/wizards/jquery.validate.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.breadcrumbs.js"></script>
<script type="text/javascript"
	src="js/plugins/ui/jquery.collapsible.min.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.ToTop.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.listnav.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.sourcerer.js"></script>
<script type="text/javascript"
	src="js/plugins/ui/jquery.timeentry.min.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript" src="js/charts/chart.js"></script>
<script type="text/javascript"
	src="fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<script type="text/javascript" src="fancybox/jquery.easing-1.4.pack.js"></script>
<script type="text/javascript"
	src="fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
<link rel="stylesheet" href="css/jquery.fancybox-1.3.4.css"
	type="text/css" media="screen" />
<script language="javascript">
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
						'width=650,height=200,toolbar=0, menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=0,top=0');
		setfocus.focus();
	}
</script>
</head>

<body>
	<!-- Top navigation bar -->
	<div id="topNav">
		<div class="fixed">
			<div class="wrapper">
				<div class="welcome">
					<a><img src="images/userPic.png" alt="" /></a><span>Alumni!</span>
				</div>
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
		<div class="logo">
			<a><img src="images/loginLogo.png" alt="" /></a>
		</div>
		<div class="fix"></div>
	</div>

	<!-- Content wrapper -->
	<div class="wrapper">

		<!-- Left navigation -->
		<div class="leftNav">
			<ul id="menu">
				<li class="dash"><a href="alumni_Profile.do?id=${stu_id}"
					title=""><span>กลับสู่หน้าก่อนหน้า</span></a></li>


			</ul>
		</div>
		<!-- Content -->
		<div class="content">
			<div class="title">
				<h5>ข้อมูลประวัติ</h5>
			</div>
			<!-- Form with validation -->
			<form:form name="address" method="post" id="valid" class="mainForm"
				action="saveAddressHis_Alumni.do" commandName="address">

				<form:hidden path="address_historyID" />
				<form:hidden path="addressID" />
				<form:hidden path="historyOf" />
				<form:hidden path="editBy" value="${username }" />
				<form:hidden path="status" value="ตามทะเบียนบ้าน" />
				<fieldset>
					<div class="widget">
						<div class="head">
							<h5 class="iLocked2">เพิ่ม/แก้ไข ข้อมูลที่อยู่</h5>
						</div>

						<div class="rowElem noborder">
							<label>หมู่บ้าน:</label>
							<div class="formRight">
								<form:input type="text" path="village" name="village"
									id="village" />
							</div>
							<div class="fix"></div>
						</div>
						<div class="rowElem">
							<label>เลขที่:<span class="req">*</span></label>
							<div class="formRight">
								<form:input type="text" class="validate[required]"
									path="house_Number" name="house_Number" id="house_Number" />
							</div>
							<div class="fix"></div>
						</div>
						<div class="rowElem">
							<label>หมู่ที่:<span class="req">*</span></label>
							<div class="formRight">
								<form:input type="text" class="validate[required]"
									path="village_Number" name="village_Number" id="village_Number" />
							</div>
							<div class="fix"></div>
						</div>
						<div class="rowElem">
							<label>ตรอก/ซอย:</label>
							<div class="formRight">
								<form:input type="text" path="Lane_Alley" name="Lane_Alley"
									id="Lane_Alley" />
							</div>
							<div class="fix"></div>
						</div>
						<div class="rowElem">
							<label>ถนน:</label>
							<div class="formRight">
								<form:input type="text" path="road" name="road" id="road" />
							</div>
							<div class="fix"></div>
						</div>
						<div class="rowElem">
							<label>ตำบล/แขวง:<span class="req">*</span></label>
							<div class="formRight">
								<form:input type="text" class="validate[required]"
									path="sub_District" name="sub_District" id="sub_District" />
							</div>
							<div class="fix"></div>
						</div>
						<div class="rowElem">
							<label>อำเภอ/เขต:<span class="req">*</span></label>
							<div class="formRight">
								<form:input type="text" class="validate[required]"
									path="district" name="district" id="district" />
							</div>
							<div class="fix"></div>
						</div>
						<div class="rowElem">
							<label>จังหวัด:<span class="req">*</span></label>
							<div class="formRight">
								<form:input type="text" class="validate[required]"
									path="province" name="province" id="province" />
							</div>
							<div class="fix"></div>
						</div>
						<div class="rowElem">
							<label>ประเทศ:<span class="req">*</span></label>
							<div class="formRight">
								<form:input type="text" class="validate[required]"
									path="country" name="country" id="country" />
							</div>
							<div class="fix"></div>
						</div>
						<div class="rowElem">
							<label>รหัสไปรษณีย์:<span class="req">*</span></label>
							<div class="formRight">
								<form:input type="text" class="validate[required]"
									path="postalcode" name="postalcode" id="postalcode" />
							</div>
							<div class="fix"></div>
						</div>





						<input type="submit" value="Save" class="greyishBtn submitForm" />
						<div class="fix"></div>
					</div>
				</fieldset>
			</form:form>

			<!-- Validation form -->
		</div>
		<div class="fix"></div>
	</div>
	<!-- Footer -->
	<div id="footer">
		<div class="wrapper">
			<span>&copy; Copyright 2015. All rights reserved. MFUAlumni by
				<a href="http://www.mfu.ac.th/2012/" title="">Mae Fah Luang
					University</a>
			</span>
		</div>
	</div>
</body>
</html>
