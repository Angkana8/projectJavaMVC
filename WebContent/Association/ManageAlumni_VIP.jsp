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
	    <li class="dash"><a href="indexAssociation.do" title=""><span>กลับสู่หน้าหลัก</span></a></li>
	    <li class="dash"><a href="allVIP.do" title=""><span>ดูผู้แทนรุ่นทั้งหมด</span></a></li>
	   
      </ul>
</div>
	<!-- Content -->
    <div class="content" id="container">
      <div class="title">
        <h5>จัดการผู้แทนรุ่น</h5>
      </div>
      <!-- Statistics -->
      <!-- Form begins -->
      
        <!-- Input text fields -->
        <form action="Select_VIP.do" target="_blank">
        <fieldset>
         
          <div class="widget">
            <div class="head">
              <h5 class="iCoverflow">ค้นหาจากปีการศึกษาที่เข้าเรียน/ระดับการศึกษา/คณะ/สาขาวิชา/ปีการศึกษา</h5><br>
             
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
            
            <button  type="submit" value="ค้นหา" class="greyishBtn submitForm">Search</button>
            <div class="fix"></div>
          </div>
        </fieldset>
        </form>
        
        
        
        
        
        
        
      
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
