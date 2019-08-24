<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>Mae Fah Luang University Alumni</title>

<style>
.errorblock {
	color: #ff0000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>

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

<!-- Shared on MafiaShare.net  -->
<!-- Shared on MafiaShare.net  -->
</head>

<body>

	<!-- Top navigation bar -->
	<div id="topNav">
		<div class="fixed">
			<div class="wrapper">
				<div class="backTo">
					<a href="http://mfualumni.com/"
						title="Back to main
							website"><img
						src="images/icons/topnav/mainWebsite.png" alt="" /><span>Main
							website</span></a>
				</div>
				<div class="userNav">
					<ul>

						<li><a href="contacts.jsp" title=""><img
								src="images/icons/topnav/contactAdmin.png" alt="" /><span>Contact
									admin</span></a></li>

					</ul>
				</div>
				<div class="fix"></div>
			</div>
		</div>
	</div>

	<!-- Login form area -->
	<div class="loginWrapper">
		<div class="loginLogo">
			<img src="images/Logo.png" alt="" />
		</div>

		<div class="loginPanel">
			<div class="head">
				<h5 class="iUser">Login</h5>
			</div>

			<form name='f' action="<c:url value='j_spring_security_check' />"
				method='POST' id="valid" class="mainForm">

				<fieldset>
					<div class="loginRow noborder">
						<label for="req1">Username:</label>
						<div class="loginInput">
							<input type='text' name='j_username' value=''
								class="validate[required]" id="req1" />
						</div>
						<div class="fix"></div>
					</div>

					<div class="loginRow">
						<label for="req2">Password:</label>
						<div class="loginInput">
							<input type='password' name='j_password'
								class="validate[required]" id="req2" />
						</div>
						<div class="fix"></div>
					</div>

					<div class="loginRow">
						<div class="rememberMe">
							<input type="checkbox" id="check2" name="chbox" /><label
								for="check2">Remember me</label>
						</div>
						<input name="submit" type="submit" value="Log me in"
							class="greyishBtn submitForm" />

						<div class="fix"></div>
					</div>
				</fieldset>
			</form>
				<c:if test="${not empty error}">
				<div class="pt20">
					<div class="nNote nFailure hideit">
						<p>
							<strong>FAILURE: </strong>Oops sorry. That action is not valid,
							or our servers have gone bonkers
						</p>
					</div>
				</div>
			</c:if>
			<div class="pt20">
				<div class="nNote nInformation hideit">
					<p>
						<strong>INFORMATION: </strong>ชื่อผู้ใช้ และ รหัสผ่าน แรกเข้าคือ รหัสประจำตัวนักศึกษาที่สำเร็จการศึกษา เช่น ชื่อผู้ใช้ เป็น 4731607XXX และ รหัสผ่าน เป็น 4731607XXX เมื่อเข้าสู่ระบบกรุณาเปลี่ยนรหัสผ่านใหม่
					</p>
				</div>
			</div>
		</div>
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
