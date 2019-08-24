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
<script language="javascript">
     function demoFromHTML() {
         var doc = new jsPDF('p', 'in', 'letter');
         var source = $('#testcase').first();
         var specialElementHandlers = {
             '#bypassme': function(element, renderer) {
                 return true;
             }
         };

         doc.fromHTML(
             source, // HTML string or DOM elem ref.
             0.5,    // x coord
             0.5,    // y coord
             {
                 'width': 7.5, // max width of content on PDF
                 'elementHandlers': specialElementHandlers
             });

         doc.output('dataurl');
    }
     
     function doit(){
    		if (!window.print){
    		alert("You need NS4.x to use this print button!")
    		return
    		}
    		window.print()
    		}
</script>
</head>
<body>
<table border="0" cellspacing="0" cellpadding="0">
 <tbody>
    <tr border="0">
      <td width="1370" valign="top"><center>
  <h1>ข้อมูลประวัติ</h1>
</center></td>
    </tr>
  </tbody>

</table>
<center>
  <img src = "fileStore/${Photo}.jpg" width="125" height="175" border="1">
</center>
<table border="0" cellspacing="0" cellpadding="0">

  <tbody>
    <tr border="0">
      <td width="30"></td>
      <td width="920" valign="top"><h3>1. ประวัติส่วนตัว</h3></td>
    </tr>
  </tbody>
</table>
<table border="0" cellspacing="0" cellpadding="0">
  <tbody>
  <sec:authorize access="hasRole('ROLE_ADMIN')">
    <tr border="0">
      <td width="100"></td>
      <td width="380" valign="top"><font size=2>คำนำหน้านาม : </font></td>
      <td colspan="3" align="LEFT" valign="TOP"><em><font size=2>-</font></em></td>
    </tr>
    </sec:authorize>
    <tr border="0">
      <td width="100"></td>
      <td width="380" valign="top"><font size=2>ชื่อ-สกุลปัจจุบัน (ภาษาไทย) : </font></td>
      <td colspan="3" align="LEFT" valign="TOP"><em><font size=2>${f_name_New} ${l_name_New}</font></em></td>
    </tr>
    <tr border="0">
      <td width="100"></td>
      <td width="380" valign="top"><font size=2>ชื่อ-สกุลปัจจุบัน (ภาษาอังกฤษ) : </font></td>
      <td colspan="3" align="LEFT" valign="TOP"><em><font size=2>${f_name_ENG_New} ${l_name_ENG_New}</font></em></td>
    </tr>
    <tr border="0">
      <td width="100"></td>
      <td width="380" valign="top"><font size=2>ชื่อ-สกุล เดิม (ภาษาไทย) : </font></td>
      <td colspan="3" align="LEFT" valign="TOP"><em><font size=2>${nameTH}</font></em></td>
    <tr border="0">
      <td width="100"></td>
      <td width="380" valign="top"><font size=2>ชื่อ-สกุล เดิม (ภาษาอังกฤษ) : </font></td>
      <td colspan="3" align="LEFT" valign="TOP"><em><font size=2>${nameEN}</font></em></td>
    </tr>
  </tbody>
  <tbody>
    <tr border="0">
      <td width="100"></td>
      <td width="380" valign="top"><font size=2>เลขบัตรประจำตัวประชาชน : </font></td>
      <td width="470" valign="top"><em><font size=2>${Card_ID}</font></em></td>
      <td width="100" align="LEFT" valign="TOP"><font size=2>หมู่โลหิต : </font></td>
      <td width="320" align="LEFT" valign="TOP"><em><font size=2>${blood_Type}</font></em></td>
    </tr>
    <tr border="0">
      <td width="100"></td>
      <td width="380" valign="top"><font size=2>วัน เดือน ปี เกิด : </font></td>
      <td width="470" valign="top"><em><font size=2>${date_Birth}</font></em></td>
      <td width="100" align="LEFT" valign="TOP"><font size=2>ศาสนา : </font></td>
      <td width="320" align="LEFT" valign="TOP"><em><font size=2>${religious}</font></em></td>
    </tr>
    <tr border="0">
      <td width="100"></td>
      <td width="380" valign="top"><font size=2>เชื้อชาติ : </font></td>
      <td width="470" valign="top"><em><font size=2>${ethnivity}</font></em></td>
      <td width="100" align="LEFT" valign="TOP"><font size=2>สัญชาติ : </font></td>
      <td width="320" align="LEFT" valign="TOP"><em><font size=2>${nationality}</font></em></td>
    </tr>
      <tr border="0">
      <td width="100"></td>
      <td width="380" valign="top">&nbsp;</td>
      <td width="470" valign="top">&nbsp;</td>
      <td width="100" align="LEFT" valign="TOP">&nbsp;</td>
      <td width="320" align="LEFT" valign="TOP">&nbsp;</td>
    </tr>
  </tbody>
</table>
<table border="0" cellspacing="0" cellpadding="0">
  <tbody>
    <tr border="0">
      <td width="30"></td>
      <td width="920" valign="top"><h3>2. ที่อยู่ตามสำเนาทะเบียนบ้าน</h3></td>
    </tr>
  </tbody>
</table>
<c:forEach items="${addresshis}" var="addresshis">
  <table border="0" cellpadding="0" cellspacing="0" dwcopytype="CopyTableRow">
    <tbody>
      <tr border="0">
        <td width="100"></td>
        <td width="135" valign="top" ><font size=2>หมู่บ้าน : </font></td>
        <td width="500" valign="top" ><em><font size=2>${addresshis.village}</font></em></td>
        <td width="135" align="left" valign="top"><font size=2>เลขที่ : </font></td>
        <td width="500" align="left" valign="top"><em><font size=2>${addresshis.house_Number}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="135" valign="top"><font size=2>หมู่ที่ : </font></td>
        <td width="500" valign="top"><em><font size=2>${addresshis.village_Number}</font></em></td>
        <td width="135" align="left" valign="top"><font size=2>ตรอก/ซอย : </font></td>
        <td width="500" align="left" valign="top"><em><font size=2>${addresshis.lane_Alley}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="135" valign="top"><font size=2>ถนน : </font></td>
        <td width="500" valign="top"><em><font size=2>${addresshis.road}</font></em></td>
        <td width="135" align="left" valign="top"><font size=2>ตำบล/แขวง : </font></td>
        <td width="500" align="left" valign="top"><em><font size=2>${addresshis.sub_District}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="135" valign="top"><font size=2>อำเภอ/เขต : </font></td>
        <td width="500" align="left" valign="top"><em><font size=2>${addresshis.district}</font></em></td>
        <td width="135" valign="top"><font size=2>จังหวัด : </font></td>
        <td width="500" align="left" valign="top"><em><font size=2>${addresshis.province}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="135" valign="top"><font size=2>รหัสไปรษณีย์ : </font></td>
        <td width="500" align="left" valign="top"><em><font size=2>${addresshis.postalcode}</font></em></td>
        <td width="135" valign="top"><font size=2>ประเทศ : </font></td>
        <td width="500" align="left" valign="top"><em><font size=2>${addresshis.country}</font></em></td>
      </tr>
       <tr border="0">
        <td width="100"></td>
        <td width="135" valign="top">&nbsp;</td>
        <td width="500" align="left" valign="top">&nbsp;</td>
        <td width="135" valign="top">&nbsp;</td>
        <td width="500" align="left" valign="top">&nbsp;</td>
      </tr>
    </tbody>
  </table>
</c:forEach>
<table border="0" cellspacing="0" cellpadding="0">
  <tbody>
    <tr border="0">
      <td width="30"></td>
      <td width="920" valign="top"><h3>3. ที่อยู่ปัจจุบันที่สามารถติดต่อได้</h3></td>
    </tr>
  </tbody>
</table>
<c:forEach items="${addressList}" var="address">
  <table border="0" cellpadding="0" cellspacing="0" dwcopytype="CopyTableRow">
    <tbody>
      <tr border="0">
        <td width="100"></td>
        <td width="180" valign="top" ><font size=2>หมู่บ้าน : </font></td>
        <td width="455" valign="top" ><em><font size=2>${address.village}</font></em></td>
        <td width="135" align="left" valign="top"><font size=2>เลขที่ : </font></td>
        <td width="500" align="left" valign="top"><em><font size=2>${address.house_Number}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="180" valign="top"><font size=2>หมู่ที่ : </font></td>
        <td width="455" valign="top"><em><font size=2>${address.village_Number}</font></em></td>
        <td width="135" align="left" valign="top"><font size=2>ตรอก/ซอย : </font></td>
        <td width="500" align="left" valign="top"><em><font size=2>${address.lane_Alley}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="180" valign="top"><font size=2>ถนน : </font></td>
        <td width="455" valign="top"><em><font size=2>${address.road}</font></em></td>
        <td width="135" align="left" valign="top"><font size=2>ตำบล/แขวง : </font></td>
        <td width="500" align="left" valign="top"><em><font size=2>${address.sub_District}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="180" valign="top"><font size=2>อำเภอ/เขต : </font></td>
        <td width="455" align="left" valign="top"><em><font size=2>${address.district}</font></em></td>
        <td width="135" valign="top"><font size=2>จังหวัด : </font></td>
        <td width="500" align="left" valign="top"><em><font size=2>${address.province}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="180" valign="top"><font size=2>รหัสไปรษณีย์ : </font></td>
        <td width="455" align="left" valign="top"><em><font size=2>${address.postalcode}</font></em></td>
        <td width="135" valign="top"><font size=2>ประเทศ : </font></td>
        <td width="500" align="left" valign="top"><em><font size=2>${address.country}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="180" valign="top"><font size=2>โทรศัพท์เคลื่อนที่ : </font></td>
        <td width="455" align="left" valign="top"><em><font size=2>${address.mobile_Number}</font></em></td>
        <td width="135" valign="top"><font size=2>โทรศัพท์ : </font></td>
        <td width="500" align="left" valign="top"><em><font size=2>${address.telephone_Number}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="180" valign="top"><font size=2>โทรสาร : </font></td>
        <td width="455" align="left" valign="top"><em><font size=2>${address.fax}</font></em></td>
        <td width="135" valign="top"><font size=2>อีเมล : </font></td>
        <td width="500" align="left" valign="top"><em><font size=2>${address.email}</font></em></td>
      </tr>
        <tr border="0">
        <td width="100"></td>
        <td width="180" valign="top">&nbsp;</td>
        <td width="455" align="left" valign="top">&nbsp;</td>
        <td width="135" valign="top">&nbsp;</td>
        <td width="500" align="left" valign="top">&nbsp;</td>
      </tr>
    </tbody>
  </table>
</c:forEach>
<table border="0" cellspacing="0" cellpadding="0">
  <tbody>
    <tr border="0">
      <td width="30"></td>
      <td width="920" valign="top"><h3>4. ประวัติการศึกษา</h3></td>
    </tr>
  </tbody>
</table>
<c:forEach items="${educationList}" var="education">
  <table border="0" cellpadding="0" cellspacing="0" dwcopytype="CopyTableRow">
    <tbody>
      <tr border="0">
        <td width="100"></td>
        <td width="200" valign="top" ><font size=2>ปีที่สำเร็จการศึกษา : </font></td>
        <td width="620" valign="top" ><em><font size=2>${education.year_Attended}</font></em></td>
        <td width="180" align="left" valign="top"><font size=2>ระดับการศึกษา : </font></td>
        <td width="270" align="left" valign="top"><em><font size=2>${education.education_Level}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="200" valign="top"><font size=2>ชื่อปริญญา/หลักสูตร : </font></td>
        <td width="620" valign="top"><em><font size=2>${education.degree_Name}</font></em></td>
        <td width="180" align="left" valign="top"><font size=2>สำนักวิชา/คณะ : </font></td>
        <td width="270" align="left" valign="top"><em><font size=2>${education.school}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="200" valign="top"><font size=2>สาขา/แขนงวิชา : </font></td>
        <td width="620" valign="top"><em><font size=2>${education.major}</font></em></td>
        <td width="180" align="left" valign="top"><font size=2>รายวิชาเอก : </font></td>
        <td width="270" align="left" valign="top"><em><font size=2>${education.course_Second}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="200" valign="top"><font size=2>มหาวิทยาลัย/สถาบัน : </font></td>
        <td width="620" valign="top"><em><font size=2>${education.name_University}</font></em></td>
        <td width="180" align="left" valign="top"><font size=2>ประเทศ : </font></td>
        <td width="270" align="left" valign="top"><em><font size=2>${education.country}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="200" valign="top">&nbsp;</td>
        <td width="620" valign="top">&nbsp;</td>
        <td width="180" align="left" valign="top">&nbsp;</td>
        <td width="270" align="left" valign="top">&nbsp;</td>
      </tr>
    </tbody>
  </table>
</c:forEach>
<table border="0" cellspacing="0" cellpadding="0">
  <tbody>
    <tr border="0">
      <td width="30"></td>
      <td width="920" valign="top"><h3>5. ประวัติการทำงาน</h3></td>
    </tr>
  </tbody>
</table>
<c:forEach items="${companyList}" var="company">
  <table border="0" cellpadding="0" cellspacing="0" dwcopytype="CopyTableRow">
    <tbody>
      <tr border="0">
        <td width="100"></td>
        <td width="170" valign="top" ><font size=2>วัน/เดือน/ปี ที่เริ่ม : </font></td>
        <td width="465" valign="top" ><em><font size=2>${company.date_Work}</font></em></td>
        <td width="210" align="left" valign="top"></td>
        <td width="425" align="left" valign="top"></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="170" valign="top"><font size=2>ตำแหน่ง :</font></td>
        <td colspan="3" valign="top"><em><font size=2>${company.position}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="170" valign="top"><font size=2>ฝ่าย/แผนก : </font></td>
        <td width="465" valign="top"><em><font size=2>${company.department}</font></em></td>
        <td width="210" align="left" valign="top"><font size=2>ประเภท : </font></td>
        <td width="425" align="left" valign="top"><em><font size=2>${company.level}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="170" valign="top"><font size=2>ชื่อหน่วยงาน : </font></td>
        <td colspan="3" align="left" valign="top"><em><font size=2>${company.work_Place}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="170" valign="top"><font size=2>ประเทศ : </font></td>
        <td colspan="3" align="left" valign="top"><em><font size=2>${company.country}</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="170" valign="top">&nbsp;</td>
        <td width="465" align="left" valign="top">&nbsp;</td>
        <td width="210" valign="top">&nbsp;</td>
        <td width="425" align="left" valign="top">&nbsp;</td>
      </tr>
    </tbody>
  </table>
</c:forEach>
<table border="0" cellspacing="0" cellpadding="0">
  <tbody>
    <tr border="0">
      <td width="30"></td>
      <td width="920" valign="top"><h3>6. การได้รับรางวัล</h3></td>
    </tr>
  </tbody>
</table>
<c:forEach items="${awardList}" var="award">
  <table border="0" cellpadding="0" cellspacing="0" dwcopytype="CopyTableRow">
    <tbody>
      <tr border="0">
        <td width="100"></td>
        <td width="250" valign="top" ><font size=2>วัน เดือน ปี : </font></td>
        <td width="685" valign="top" ><font size=2><em>${award.date_Award}</em></font></td>
        <td width="130" align="left" valign="top"><font size=2>ระดับรางวัล : </font></td>
        <td width="205" align="left" valign="top"><font size=2><em>${award.level_Award}</em></font></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="250" valign="top"><font size=2>ชื่อรางวัล : </font></td>
        <td colspan="3" valign="top"><em><font size=2>${award.name_Award}</font></em></td>
      </tr>
      <sec:authorize access="hasRole('ROLE_ADMIN')">
      <tr border="0">
        <td width="100"></td>
        <td width="250" valign="top"><font size=2>ชื่อการแข่งขัน/กิจกรรม : </font></td>
        <td colspan="3" valign="top"><em><font size=2>-</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="250" valign="top"><font size=2>หน่วยงานผู้มอบ : </font></td>
        <td colspan="3" align="left" valign="top"><em><font size=2>-</font></em></td>
      </tr>
      <tr border="0">
        <td width="100"></td>
        <td width="250" valign="top"><font size=2>ประเทศ : </font></td>
        <td colspan="3" align="left" valign="top"><em><font size=2>-</font></em></td>
      </tr>
      </sec:authorize>
      <tr border="0">
        <td width="100"></td>
        <td width="245" valign="top"><font size=2>&nbsp;</font></td>
        <td colspan="3" align="left" valign="top"><em><font size=2>&nbsp;</font></em></td>
      </tr>
    </tbody>
  </table>
</c:forEach>
</body>
</html>