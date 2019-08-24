<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<!-- Shared on MafiaShare.net  -->
<!-- Shared on MafiaShare.net  -->


<script language="javascript">
	function OpenPopup(studentID) {
		window.open('print_PDF_Alumni.do?id=' + studentID);
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
				<li class="dash"><a href="alumni.do" title=""><span>กลับสู่หน้าหลัก</span></a></li>
			</ul>
		</div>

		<!-- Content -->
		<div class="content">
			<div class="title">
				<h5>หน้าหลัก</h5>
			</div>
			<!-- Accordion -->
			<div class="widget first">
				<div class="head">
					<h5 class="iCreate">Social Network</h5>
				</div>
				<div class="menu_body">
					<div class="supTicket nobg">

						<div class="issueSummary">
							<c:forEach items="${socialList}" var="social">


								<table border="0" cellspacing="0" cellpadding="0">
									<tbody>
										<tr border="0">
											<td></td>
											<td colspan="2" valign="top" bgcolor="#F0F0FF"><div
													class="issueType">
													<span class="issueInfo"><a href="#" title="">รายละเอียด</a></span>
													<div class="fix"></div>
												</div></td>
										</tr>
										<tr border="0">
											<td width="15"></td>
											<td width="420" valign="top" bgcolor="#F0F0FF">Facebook:</td>
											<td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${social.facebook}</td>
										</tr>
										<tr border="0">
											<td width="15"></td>
											<td valign="top" bgcolor="#F0F0FF">Line ID:</td>
											<td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${social.line}</td>
										</tr>
										<tr border="0">
											<td width="15"></td>
											<td valign="top" bgcolor="#F0F0FF">Twitter ID:</td>
											<td align="LEFT" bgcolor="#F5F5FF" valign="TOP">${social.tweeter}</td>
										</tr>


									</tbody>
								</table>

								<div class="fix"></div>

								<a href="editSocial_Alumni.do?id=${ social.socialID}"><input
									type="button" value="แก้ไข" class="greyishBtn submitForm" /></a>
							</c:forEach>
						</div>
						<div class="fix"></div>
					</div>

				</div>

			</div>
			<!--End Accordion -->





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
