<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
      <li class="dash"><a href="alumni.do" title=""><span>กลับสู่หน้าหลัก</span></a></li>
    </ul>
  </div>
  <!-- Content -->
  <div class="content" id="container">
    <div class="title">
      <h5>ค้นหานักศึกษา</h5>
    </div>
    <!-- Statistics --> 
    <!-- Form begins --> 
    
    <!-- Input text fields -->
    <fieldset>
      <form action="searchByEducation.do" class="mainForm">
        <div class="widget">
          <div class="head">
            <h5 class="iView">ค้นหาจากปีการศึกษาที่เข้าเรียน/ระดับการศึกษา/คณะ/สาขาวิชา/ประเทศ/ปีการศึกษา</h5>
            <br>
          </div>
          <div class="rowElem noborder">
            <label>ระดับการศึกษาที่สำเร็จ :</label>
            <div class="formRight">
              <select name="level" required>
                <option value="">เลือก ระดับการศึกษาที่สำเร็จ</option>
                <option value="ปริญญาเอก">ปริญญาเอก</option>
                <option value="ปริญญาโท">ปริญญาโท</option>
                <option value="ปริญญาตรี">ปริญญาตรี</option>
                <option value="อนุปริญญา">อนุปริญญา</option>
              </select>
            </div>
            <div class="fix"></div>
          </div>
          <div class="rowElem">
            <label>ปีการศึกษา :</label>
            <div class="formRight noSearch">
              <select name="year" class="chzn-select" >
                <option value="">เลือก ปีการศึกษา</option>
                 <option value="2542">ปีการศึกษา 2546</option>
                <option value="2543">ปีการศึกษา 2547</option>
                <option value="2544">ปีการศึกษา 2548</option>
                <option value="2545">ปีการศึกษา 2549</option>
                <option value="2546">ปีการศึกษา 2550</option>
                <option value="2547">ปีการศึกษา 2551</option>
                <option value="2548">ปีการศึกษา 2552</option>
                <option value="2549">ปีการศึกษา 2553</option>
                <option value="2550">ปีการศึกษา 2554</option>
                <option value="2551">ปีการศึกษา 2555</option>
                <option value="2552">ปีการศึกษา 2556</option>
                <option value="2553">ปีการศึกษา 2557</option>
                <option value="2554">ปีการศึกษา 2558</option>
                <option value="2555">ปีการศึกษา 2559</option>
                <option value="2556">ปีการศึกษา 2560</option>
              </select>
            </div>
            <div class="fix"></div>
          </div>
          <div class="rowElem">
            <label>คณะ/สำนักวิชาที่สำเร็จการศึกษา :</label>
            <div class="formRight searchDrop">
              <select name="school" class="chzn-select" style="width:350px;" tabindex="2" data-placeholder="เลือกสำนัก" >
                <option value="">เลือก คณะ/สำนักวิชาที่สำเร็จการศึกษา :</option>
                <option value="ศิลปศาสตร์">10 : สำนักวิชาศิลปศาสตร์</option>
                <option value="วิทยาศาสตร์">11 : สำนักวิชาวิทยาศาสตร์</option>
                <option value="การจัดการ">12 : สำนักวิชาการจัดการ</option>
                <option value="เทคโนโลยีสารสนเทศ">13 : สำนักวิชาเทคโนโลยีสารสนเทศ</option>
                <option value="อุตสาหกรรมเกษตร">14 : สำนักวิชาอุตสาหกรรมเกษตร</option>
                <option value="นิติศาสตร์">16 : สำนักวิชานิติศาสตร์</option>
                <option value="วิทยาศาสตร์เครื่องสำอาง">17 : สำนักวิชาวิทยาศาสตร์เครื่องสำอาง</option>
                <option value="วิทยาศาสตร์สุขภาพ">18 : สำนักวิชาวิทยาศาสตร์สุขภาพ</option>
                <option value="พยาบาลศาสตร์">19 : สำนักวิชาพยาบาลศาสตร์</option>
                <option value="เวชศาสตร์ชะลอวัยและฟื้นฟูสุขภาพ">20 : สำนักวิชาเวชศาสตร์ชะลอวัยและฟื้นฟูสุขภาพ</option>
              </select>
            </div>
            <div class="fix"></div>
          </div>
          <div class="rowElem">
            <label>สาขาวิชาที่สำเร็จการศึกษา :</label>
            <div class="formRight searchDrop">
              <select name="major" class="chzn-select" style="width:350px;" tabindex="2" data-placeholder="เลือกสาขา" >
              <option value="" >เลือก สาขาวิชาที่สำเร็จการศึกษา :</option>
                <optgroup label="10 : สำนักวิชาศิลปศาสตร์">
                <option value="สังคมศาสตร์">ปรัชญาดุษฎีบัณฑิต(สังคมศาสตร์)</option>
                <option value="รัฐประศาสนศาสตรมหาบัณฑิต">รัฐประศาสนศาสตรมหาบัณฑิต</option>
                <option value="บริหารการศึกษา">ศึกษาศาสตรมหาบัณฑิต(บริหารการศึกษา)</option>
                <option value="สังคมศาสตร์">ปรัชญาดุษฎีบัณฑิต(สังคมศาสตร์)</option>
                <option value="วัฒนธรรมศึกษา">ศิลปศาสตรมหาบัณฑิต(วัฒนธรรมศึกษา)</option>
                <option value="การสอนภาษาจีนในฐานะภาษาต่างประเทศ">ศึกษาศาสตรมหาบัณฑิต(การสอนภาษาจีนในฐานะภาษาต่างประเทศ)</option>
                <option value="สาขาวิชาการแปลและการล่ามภาษาจีน-ไทย">ศิลปศาสตรมหาบัณฑิต(สาขาวิชาการแปลและการล่ามภาษาจีน-ไทย)</option>
                <option value="ภาษาและวัฒนธรรมไทย">ศิลปศาสตรบัณฑิต(ภาษาและวัฒนธรรมไทย)</option>
                <option value="ภาษาอังกฤษ">ศิลปศาสตรบัณฑิต(ภาษาอังกฤษ)</option>
                <option value="ภาษาจีนธุรกิจ">ศิลปศาสตรบัณฑิต(ภาษาจีนธุรกิจ)</option>
                <option value="การปกครองท้องถิ่น">รัฐประศาสนศาสตรบัณฑิต(การปกครองท้องถิ่น)</option>
                <option value="การสอนภาษาจีน">ศึกษาศาสตรบัณฑิต(การสอนภาษาจีน)</option>
                <option value="ภาษาจีน">ศิลปศาสตรบัณฑิต(ภาษาจีน)</option>
                </optgroup>
                <optgroup label="11 : สำนักวิชาวิทยาศาสตร์">
                <option value="เคมีประยุกต์">ปรัชญาดุษฎีบัณฑิต(เคมีประยุกต์)</option>
                <option value="เทคโนโลยีชีวภาพ">ปรัชญาดุษฎีบัณฑิต(เทคโนโลยีชีวภาพ)</option>
                <option value="วิทยาศาสตรชีวภาพ">ปรัชญาดุษฎีบัณฑิต(วิทยาศาสตรชีวภาพ)</option>
                <option value="วิทยาศาสตร์เชิงคำนวณ">ปรัชญาดุษฎีบัณฑิต(วิทยาศาสตร์เชิงคำนวณ)</option>
                <option value="การจัดการทรัพยากรธรรมชาติและสิ่งแวดล้อม">ปรัชญาดุษฎีบัณฑิต(การจัดการทรัพยากรธรรมชาติและสิ่งแวดล้อม)</option>
                <option value="วัสดุศาสตร์">ปรัชญาดุษฎีบัณฑิต(วัสดุศาสตร์)</option>
                <option value="เคมีประยุกต์">วิทยาศาสตรมหาบัณฑิต(เคมีประยุกต์)</option>
                <option value="วิทยาศาสตรชีวภาพ">วิทยาศาสตรมหาบัณฑิต(วิทยาศาสตรชีวภาพ)</option>
                <option value="วิทยาศาสตร์เชิงคำนวณ">วิทยาศาสตรมหาบัณฑิต(วิทยาศาสตร์เชิงคำนวณ)</option>
                <option value="การจัดการทรัพยากรธรรมชาติและสิ่งแวดล้อม">วิทยาศาสตรมหาบัณฑิต(การจัดการทรัพยากรธรรมชาติและสิ่งแวดล้อม)</option>
                <option value="วัสดุศาสตร์">วิทยาศาสตรมหาบัณฑิต(วัสดุศาสตร์)</option>
                <option value="เทคโนโลยีอุตสาหกรรมเซรามิก">วิทยาศาสตรมหาบัณฑิต(เทคโนโลยีอุตสาหกรรมเซรามิก)</option>
                <option value="เคมีประยุกต์">วิทยาศาสตรบัณฑิต(วัสดุศาสตร์เคมีประยุกต์)</option>
                <option value="วิทยาศาสตรชีวภาพ">วิทยาศาสตรบัณฑิต(วิทยาศาสตรชีวภาพ)</option>
                </optgroup>
                <optgroup label="12 : สำนักการจัดการ">
                <option value="บริหารธุรกิจ">บริหารธุรกิจมหาบัณฑิต(บริหารธุรกิจ)</option>
                <option value="การจัดการโลจิสติกส์และซัพพลายเชน">บริหารธุรกิจมหาบัณฑิต(การจัดการโลจิสติกส์และซัพพลายเชน)</option>
                <option value="การจัดการโลจิสติกส์และโซ่อุปทาน">บริหารธุรกิจมหาบัณฑิต(การจัดการโลจิสติกส์และโซ่อุปทาน)</option>
                <option value="บัญชีบัณฑิต">บัญชีบัณฑิต</option>
                <option value="เศรษฐศาสตรบัณฑิต">เศรษฐศาสตรบัณฑิต</option>
                <option value="บริหารธุรกิจ">บริหารธุรกิจบัณฑิต(บริหารธุรกิจ)</option>
                <option value="การจัดการการท่องเที่ยว">บริหารธุรกิจบัณฑิต(การจัดการการท่องเที่ยว)</option>
                <option value="การจัดการอุตสาหกรรมการบริการ">บริหารธุรกิจบัณฑิต(การจัดการอุตสาหกรรมการบริการ)</option>
                <option value="การจัดการธุรกิจการบิน">บริหารธุรกิจบัณฑิต(การจัดการธุรกิจการบิน)</option>
                </optgroup>
                <optgroup label="13 : สำนักวิชาเทคโนโลยีสารสนเทศ">
                <option value="การจัดการระบบสารสนเทศเชิงกลยุทธ์">วิทยาศาสตรมหาบัณฑิต(การจัดการระบบสารสนเทศเชิงกลยุทธ์)</option>
                <option value="วิศวกรรมคอมพิวเตอร์">วิศวกรรมศาสตรมหาบัณฑิต(วิศวกรรมคอมพิวเตอร์)</option>
                <option value="เทคโนโลยีสารสนเทศขั้นสูง">วิทยาศาสตรมหาบัณฑิต(เทคโนโลยีสารสนเทศขั้นสูง)</option>
                <option value="การจัดการเทคโนโลยีสารสนเทศ">วิทยาศาสตรบัณฑิต(การจัดการเทคโนโลยีสารสนเทศ)</option>
                <option value="วิทยาการคอมพิวเตอร์">วิทยาศาสตรบัณฑิต(วิทยาการคอมพิวเตอร์)</option>
                <option value="วิศวกรรมซอฟต์แวร์">วิทยาศาสตรบัณฑิต(วิศวกรรมซอฟต์แวร์)</option>
                <option value="เทคโนโลยีมัลติมีเดียและการสร้างภาพเคลื่อนไหว">วิทยาศาสตรบัณฑิต(เทคโนโลยีมัลติมีเดียและการสร้างภาพเคลื่อนไหว)</option>
                <option value="วิศวกรรมคอมพิวเตอร์">วิศวกรรมศาสตรบัณฑิต(วิศวกรรมคอมพิวเตอร์)</option>
                <option value="เทคโนโลยีการสื่อสารและสารสนเทศ">วิศวกรรมศาสตรบัณฑิต(เทคโนโลยีการสื่อสารและสารสนเทศ)</option>
                </optgroup>
                <optgroup label="14 : สำนักวิชาอุตสาหกรรมเกษตร">
                <option value="เทคโนโลยีการอาหาร">วิทยาศาสตรมหาบัณฑิต(เทคโนโลยีการอาหาร)</option>
                <option value="เทคโนโลยีการจัดการผลิตผลเกษตร">วิทยาศาสตรมหาบัณฑิต(เทคโนโลยีการจัดการผลิตผลเกษตร)</option>
                <option value="เทคโนโลยีการอาหาร">วิทยาศาสตรบัณฑิต(เทคโนโลยีการอาหาร)</option>
                <option value="เทคโนโลยีหลังการเก็บเกี่ยวและบรรจุภัณฑ์">วิทยาศาสตรบัณฑิต(เทคโนโลยีหลังการเก็บเกี่ยวและบรรจุภัณฑ์)</option>
                <option value="เทคโนโลยีการจัดการผลิตผลเกษตรและการบรรจุ">วิทยาศาสตรบัณฑิต(เทคโนโลยีการจัดการผลิตผลเกษตรและการบรรจุ)</option>
                </optgroup>
                <optgroup label="16 : สำนักวิชานิติศาสตร์">
                <option value="นิติศาสตรมหาบัณฑิต">นิติศาสตรมหาบัณฑิต</option>
                <option value="นิติศาสตรบัณฑิต">นิติศาสตรบัณฑิต</option>
                </optgroup>
                <optgroup label="17 : สำนักวิชาวิทยาศาสตร์เครื่องสำอาง">
                <option value="วิทยาศาสตร์เครื่องสำอาง">วิทยาศาสตรมหาบัณฑิต(วิทยาศาสตร์เครื่องสำอาง)</option>
                <option value="วิทยาศาสตร์เครื่องสำอาง">วิทยาศาสตรบัณฑิต(วิทยาศาสตร์เครื่องสำอาง)</option>
                <option value="เทคโนโลยีความงาม">วิทยาศาสตรบัณฑิต(เทคโนโลยีความงาม)</option>
                </optgroup>
                <optgroup label="18 : สำนักวิชาวิทยาศาสตร์สุขภาพ">
                <option value="สาธารณสุขศาสตร์">วิทยาศาสตรมหาบัณฑิต(สาธารณสุขศาสตร์)</option>
                <option value="การแพทย์แผนไทยประยุกต์">การแพทย์แผนไทยประยุกต์บัณฑิต(การแพทย์แผนไทยประยุกต์)</option>
                <option value="กายภาพบำบัดบัณฑิต">กายภาพบำบัดบัณฑิต</option>
                <option value="สาธารณสุขศาสตรบัณฑิต">สาธารณสุขศาสตรบัณฑิต</option>
                <option value="การส่งเสริมสุขภาพ">อนุปริญญา(การส่งเสริมสุขภาพ)</option>
                </optgroup>
                <optgroup label="19 : สำนักวิชาพยาบาลศาสตร์">
                <option value="พยาบาลศาสตรบัณฑิต">พยาบาลศาสตรบัณฑิต</option>
                </optgroup>
                
                <optgroup label="20 : สำนักวิชาเวชศาสตร์ชะลอวัยและฟื้นฟูสุขภาพ">
                <option value="วิทยาศาสตร์ชะลอวัยและฟื้นฟูสุขภาพ">ปรัชญาดุษฎีบัณฑิต(วิทยาศาสตร์ชะลอวัยและฟื้นฟูสุขภาพ)</option>
                <option value="ตจวิทยา">วิทยาศาสตรมหาบัณฑิต(ตจวิทยา)</option>
                <option value="เวชศาสตร์ชะลอวัยและฟื้นฟูสุขภาพ">วิทยาศาสตรมหาบัณฑิต(เวชศาสตร์ชะลอวัยและฟื้นฟูสุขภาพ)</option>
                <option value="วิทยาศาสตร์ชะลอวัยและฟื้นฟูสุขภาพ">วิทยาศาสตรมหาบัณฑิต(วิทยาศาสตร์ชะลอวัยและฟื้นฟูสุขภาพ)</option>
                </optgroup>
              </select>
            </div>
            <div class="fix"></div>
          </div>
          <div class="rowElem">
            <label>ประเทศ :</label>
            <div class="formRight searchDrop">
              <select name="country" class="chzn-select" style="width:350px;" tabindex="2" data-placeholder="Choose a Country...">
                <option value=""></option>
                <option value="ไทย">ประเทศไทย</option>
                <option value="Cambodia">Cambodia</option>
                <option value="Cameroon">Cameroon</option>
                <option value="Canada">Canada</option>
                <option value="Cape Verde">Cape Verde</option>
                <option value="Cayman Islands">Cayman Islands</option>
                <option value="Central African Republic">Central African Republic</option>
                <option value="Chad">Chad</option>
                <option value="Chile">Chile</option>
                <option value="China">China</option>
                <option value="Christmas Island">Christmas Island</option>
                <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                <option value="Colombia">Colombia</option>
                <option value="Comoros">Comoros</option>
                <option value="Congo">Congo</option>
                <option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The</option>
                <option value="Cook Islands">Cook Islands</option>
                <option value="Costa Rica">Costa Rica</option>
                <option value="Cote D'ivoire">Cote D'ivoire</option>
                <option value="Croatia">Croatia</option>
                <option value="Cuba">Cuba</option>
                <option value="Cyprus">Cyprus</option>
                <option value="Czech Republic">Czech Republic</option>
                <option value="Denmark">Denmark</option>
                <option value="Djibouti">Djibouti</option>
                <option value="Dominica">Dominica</option>
                <option value="Dominican Republic">Dominican Republic</option>
                <option value="Ecuador">Ecuador</option>
                <option value="Egypt">Egypt</option>
                <option value="El Salvador">El Salvador</option>
                <option value="Equatorial Guinea">Equatorial Guinea</option>
                <option value="Eritrea">Eritrea</option>
                <option value="Estonia">Estonia</option>
                <option value="Ethiopia">Ethiopia</option>
                <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
                <option value="Faroe Islands">Faroe Islands</option>
                <option value="Fiji">Fiji</option>
                <option value="Finland">Finland</option>
                <option value="France">France</option>
                <option value="French Guiana">French Guiana</option>
                <option value="French Polynesia">French Polynesia</option>
                <option value="French Southern Territories">French Southern Territories</option>
                <option value="Gabon">Gabon</option>
                <option value="Gambia">Gambia</option>
                <option value="Georgia">Georgia</option>
                <option value="Germany">Germany</option>
                <option value="Ghana">Ghana</option>
                <option value="Gibraltar">Gibraltar</option>
                <option value="Greece">Greece</option>
                <option value="Greenland">Greenland</option>
                <option value="Grenada">Grenada</option>
                <option value="Guadeloupe">Guadeloupe</option>
                <option value="Guam">Guam</option>
                <option value="Guatemala">Guatemala</option>
                <option value="Guinea">Guinea</option>
                <option value="Guinea-bissau">Guinea-bissau</option>
                <option value="Guyana">Guyana</option>
                <option value="Haiti">Haiti</option>
                <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option>
                <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
                <option value="Honduras">Honduras</option>
                <option value="Hong Kong">Hong Kong</option>
                <option value="Hungary">Hungary</option>
                <option value="Iceland">Iceland</option>
                <option value="India">India</option>
                <option value="Indonesia">Indonesia</option>
                <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
                <option value="Iraq">Iraq</option>
                <option value="Ireland">Ireland</option>
                <option value="Israel">Israel</option>
                <option value="Italy">Italy</option>
                <option value="Jamaica">Jamaica</option>
                <option value="Japan">Japan</option>
                <option value="Jordan">Jordan</option>
                <option value="Kazakhstan">Kazakhstan</option>
                <option value="Kenya">Kenya</option>
                <option value="Kiribati">Kiribati</option>
                <option value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic of</option>
                <option value="Korea, Republic of">Korea, Republic of</option>
                <option value="Kuwait">Kuwait</option>
                <option value="Kyrgyzstan">Kyrgyzstan</option>
                <option value="Lao People's Democratic Republic">Lao People's Democratic Republic</option>
                <option value="Latvia">Latvia</option>
                <option value="Lebanon">Lebanon</option>
                <option value="Lesotho">Lesotho</option>
                <option value="Liberia">Liberia</option>
                <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
                <option value="Liechtenstein">Liechtenstein</option>
                <option value="Lithuania">Lithuania</option>
                <option value="Luxembourg">Luxembourg</option>
                <option value="Macao">Macao</option>
                <option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</option>
                <option value="Madagascar">Madagascar</option>
                <option value="Malawi">Malawi</option>
                <option value="Malaysia">Malaysia</option>
                <option value="Maldives">Maldives</option>
                <option value="Mali">Mali</option>
                <option value="Malta">Malta</option>
                <option value="Marshall Islands">Marshall Islands</option>
                <option value="Martinique">Martinique</option>
                <option value="Mauritania">Mauritania</option>
                <option value="Mauritius">Mauritius</option>
                <option value="Mayotte">Mayotte</option>
                <option value="Mexico">Mexico</option>
                <option value="Micronesia, Federated States of">Micronesia, Federated States of</option>
                <option value="Moldova, Republic of">Moldova, Republic of</option>
                <option value="Monaco">Monaco</option>
                <option value="Mongolia">Mongolia</option>
                <option value="Montenegro">Montenegro</option>
                <option value="Montserrat">Montserrat</option>
                <option value="Morocco">Morocco</option>
                <option value="Mozambique">Mozambique</option>
                <option value="Myanmar">Myanmar</option>
                <option value="Namibia">Namibia</option>
                <option value="Nauru">Nauru</option>
                <option value="Nepal">Nepal</option>
                <option value="Netherlands">Netherlands</option>
                <option value="Netherlands Antilles">Netherlands Antilles</option>
                <option value="New Caledonia">New Caledonia</option>
                <option value="New Zealand">New Zealand</option>
                <option value="Nicaragua">Nicaragua</option>
                <option value="Niger">Niger</option>
                <option value="Nigeria">Nigeria</option>
                <option value="Niue">Niue</option>
                <option value="Norfolk Island">Norfolk Island</option>
                <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                <option value="Norway">Norway</option>
                <option value="Oman">Oman</option>
                <option value="Pakistan">Pakistan</option>
                <option value="Palau">Palau</option>
                <option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option>
                <option value="Panama">Panama</option>
                <option value="Papua New Guinea">Papua New Guinea</option>
                <option value="Paraguay">Paraguay</option>
                <option value="Peru">Peru</option>
                <option value="Philippines">Philippines</option>
                <option value="Pitcairn">Pitcairn</option>
                <option value="Poland">Poland</option>
                <option value="Portugal">Portugal</option>
                <option value="Puerto Rico">Puerto Rico</option>
                <option value="Qatar">Qatar</option>
                <option value="Reunion">Reunion</option>
                <option value="Romania">Romania</option>
                <option value="Russian Federation">Russian Federation</option>
                <option value="Rwanda">Rwanda</option>
                <option value="Saint Helena">Saint Helena</option>
                <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                <option value="Saint Lucia">Saint Lucia</option>
                <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                <option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option>
                <option value="Samoa">Samoa</option>
                <option value="San Marino">San Marino</option>
                <option value="Sao Tome and Principe">Sao Tome and Principe</option>
                <option value="Saudi Arabia">Saudi Arabia</option>
                <option value="Senegal">Senegal</option>
                <option value="Serbia">Serbia</option>
                <option value="Seychelles">Seychelles</option>
                <option value="Sierra Leone">Sierra Leone</option>
                <option value="Singapore">Singapore</option>
                <option value="Slovakia">Slovakia</option>
                <option value="Slovenia">Slovenia</option>
                <option value="Solomon Islands">Solomon Islands</option>
                <option value="Somalia">Somalia</option>
                <option value="South Africa">South Africa</option>
                <option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</option>
                <option value="South Sudan">South Sudan</option>
                <option value="Spain">Spain</option>
                <option value="Sri Lanka">Sri Lanka</option>
                <option value="Sudan">Sudan</option>
                <option value="Suriname">Suriname</option>
                <option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
                <option value="Swaziland">Swaziland</option>
                <option value="Sweden">Sweden</option>
                <option value="Switzerland">Switzerland</option>
                <option value="Syrian Arab Republic">Syrian Arab Republic</option>
                <option value="Taiwan, Republic of China">Taiwan, Republic of China</option>
                <option value="Tajikistan">Tajikistan</option>
                <option value="Tanzania, United Republic of">Tanzania, United Republic of</option>
                <option value="Thailand">Thailand</option>
                <option value="Timor-leste">Timor-leste</option>
                <option value="Togo">Togo</option>
                <option value="Tokelau">Tokelau</option>
                <option value="Tonga">Tonga</option>
                <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                <option value="Tunisia">Tunisia</option>
                <option value="Turkey">Turkey</option>
                <option value="Turkmenistan">Turkmenistan</option>
                <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
                <option value="Tuvalu">Tuvalu</option>
                <option value="Uganda">Uganda</option>
                <option value="Ukraine">Ukraine</option>
                <option value="United Arab Emirates">United Arab Emirates</option>
                <option value="United Kingdom">United Kingdom</option>
                <option value="United States">United States</option>
                <option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option>
                <option value="Uruguay">Uruguay</option>
              </select>
            </div>
            <div class="fix"></div>
          </div>
          <button  type="submit" value="ค้นหา" class="greyishBtn submitForm">Search</button>
          <div class="fix"></div>
        </div>
      </form>
    </fieldset>
    <fieldset>
      <div class="widget">
        <div class="head">
          <h5 class="iView">ค้นหาจากรหัส/ชื่อนักศึกษา</h5>
        </div>
        <form action="searchByID.do" target="_blank" class="mainForm">
          <div class="rowElem noborder">
            <label>รหัสนักศึกษา :</label>
            <div class="formRight">
              <input type="text" id="studentID" name="studentID" value="" required/>
              <span class="formNote">เพื่อความรวดเร็วในการค้นหา กรุณากรอกรหัสอย่างน้อย 3  หลักแรก หรือใส่จนครบ 7 หลัก / 10 หลัก</span></div>
            <div class="fix"></div>
            <button  type="submit" value="ค้นหา" class="greyishBtn submitForm">Search</button>
          </div>
        </form>
        <div class="fix"></div>
        <form action="searchByName.do" target="_blank" class="mainForm">
          <div class="rowElem">
            <label>ชื่อ - นามสกุล :</label>
            <div class="formRight">
              <ul class="rowData">
                <li>
                  <input type="text" id="fname" name="fname" value=""  required/>
                </li>
              </ul>
              <div class="fix"></div>
              <span class="formNote">กรอกชื่อหรือนามสกุลอย่างใดอย่างหนึ่ง หรือ ทั้งสองอย่าง เช่น &quot;สมชาย - แช่แต้&quot; เป็นต้น</span> </div>
            <div class="fix"></div>
            <button  type="submit" value="search" class="greyishBtn submitForm">Search</button>
          </div>
        </form>
        <div class="fix"></div>
      </div>
      <div id="unmask"></div>
    </fieldset>
  </div>
  <div class="fix"></div>
</div>
<!-- Footer -->
<div id="footer">
  <div class="wrapper"> <span>&copy; Copyright 2015. All rights reserved. MFUAlumni
    by <a href="http://www.mfu.ac.th/2012/" title="">Mae Fah Luang University</a></span> </div>
</div>
</body>
</html>
