<%@page import="java.text.NumberFormat.Style"%>
<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table.jsp</title>
<style type="text/css">

/* css 주석 */

table {
/* 	폰트 가운데로 */
	font-family: monospace;
	font-size: 2em;
/* 	박스사이 간격 없애기 */
	border-collapse: collapse;   
}
</style>
<script type="text/javascript">
// window.onload 와 같음
window.addEventListener('load', function(){
	let table = document.querySelector('table');	// DOM 검색
	let cnt = 0;
	for (let i = 0; i < 20; i++) {
		for (let j = 0; j < 40; j++){
			let td = table.rows[i].cells[j];
			if (td.innerHTML == 'A'){
				setInterval(function(){
					if (td.style.visibility == 'hidden')
						td.style.visibility = 'visible';
					else
						td.style.visibility = 'hidden';
				},Math.random()*1000)				
			}
		}
	}
});
</script>
<script type="text/javascript">


</script>
</head>
<body>
<h1>Table Tag 연습</h1>
<hr>
<table>
	<tbody>
	<%-- JSP 주석 --%>
	<%
		for (var i = 0; i < 20; i++){
	%>
	<tr>
		<%
			for (var j = 0; j < 40; j++) {
				var a = new Alpha();
		%>
		<td style="color: <%=a.getFg() %>; background: <%=a.getBg() %>;"><%=a.getCh() %></td>
		<%
			}
		%>
	</tr>
	<%
		}
	%>
	</tbody>
</table>
</body>
</html>