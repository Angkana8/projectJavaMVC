<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/highcharts.js"></script>
<script type="text/javascript" src="js/modules/exporting.js"></script>

<script type="text/javascript">
$(function () {
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'นักศึกษาแต่ละสาขา'
        },
        subtitle: {
            text: 'แยกตามสาขา'
        },
        xAxis: {
            categories: [
                'IT',
                'RAW',
                
            ]
        },
        yAxis: {
            min: 0,
            title: {
                text: 'จำนวนคน (คน)'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} คน</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: 'IT',
            data: [${majorCount}]

        }, {
            name: 'RAW',
            data: [1100]

        }]
    });
});


</script>

</head>
<body>

Major Count : ${majorCount}

<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>


</body>
</html>