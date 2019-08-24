<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>Mae Fah Luang University Alumni</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jspdf.js"></script>
<script type="text/javascript" src="js/jspdf.plugin.standard_fonts_metrics.js"></script> 
<script type="text/javascript" src="js/jspdf.plugin.split_text_to_size.js"></script>               
<script type="text/javascript" src="js/jspdf.plugin.from_html.js"></script>

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
   <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>


</body>
</html>