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


<!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  -->
<script type="text/javascript" src="js/highcharts.js"></script>
<script type="text/javascript" src="js/modules/exporting.js"></script>

<!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  -->

<script type="text/javascript">
$(function () {
    $('#container').highcharts({
        chart: {
            type: 'line'
        },
        title: {
            text: 'สถิติการเข้ามาแก้ไขข้อมูลนักศึกษา'
        },
        subtitle: {
            text: 'แยกตามวัน'
        },
        xAxis: {
            categories: ['วันจันทร์', 'วันอังคาร', 'วันพุธ', 'วันพฤหัส', 'วันศุกร์', 'วันเสาร์', 'วันอาทิต']
        },
        yAxis: {
            title: {
                text: 'คน'
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        series: [{
            name: 'จำนวนนักศึกษา',
            data: [${countMon}, ${counttue}, ${countwed}, ${countthu}, ${countfri}, ${countsat}, ${countsun}]
        }]
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
<div class="wrapper">

<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
    
        <div class="fix"></div>
</div>
<div id="footer">
	<div class="wrapper">
    	<span>&copy; Copyright 2015. All rights reserved. MFUAlumni
    by <a href="http://www.mfu.ac.th/2012/" title="">Mae Fah Luang University</a></span>
    </div>
</div>
</body>
</html>
