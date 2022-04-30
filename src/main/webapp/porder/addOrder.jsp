<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width=600 align=center border=1>
		<tr height=150>
			<td align=center><jsp:include page="../title.jsp"/>
		<tr height=400>
			<td>
				<form action="confirm.jsp" method="post">
				<table width=500 align="center">
					<tr>
						<td colspan=3 align="center">
						<h3>點餐</h3>
					<tr>
						<td colspan=3 align="center">
						<hr>
					<tr>
						<td colspan=3 align="center">
						桌號
						<select name="desk">
							<option value="A桌">A桌
							<option value="B桌">B桌
							<option value="C桌">C桌
							<option value="D桌">D桌									
						</select>	
					<tr>
						<td colspan=3 align="center">
						<hr>
					<tr>					
						<td valign="top">
						起司牛肉堡<br>
						<img alt="起司牛肉堡" src="..\picture\hamburger\101.png">
						<br>
						<select name="A">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
							<option value="6">6
						</select>	
					
						<td valign="top">
						火烤牛肉堡<br>
						<img alt="火烤牛肉堡" src="..\picture\hamburger\102.png">
						<br>
						<select name="B">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
							<option value="6">6
						</select>
										
						<td valign="top">
						紐澳良烤雞堡<br>
						<img alt="紐澳良烤雞堡" src="..\picture\hamburger\103.png">
						<br>
						<select name="C">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
							<option value="6">6
						</select>							
					<tr>
						<td valign="top">
						美國牛肉生菜堡<br>
						<img alt="美國牛肉生菜堡" src="..\picture\hamburger\104.png">
						<br>
						<select name="D">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
							<option value="6">6
						</select>
						
						<td valign="top">
						豬肉堡<br>
						<img alt="豬肉堡" src="..\picture\hamburger\105.png">						
						<br>
						<select name="E">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
							<option value="6">6
						</select>
						
						<td valign="top">
						6盎司牛肉堡<br>
						<img alt="6盎司牛肉堡" src="..\picture\hamburger\106.png">
						<br>
						<select name="F">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
							<option value="6">6
						</select>	
						<td colspan=3 align=center>
						<hr>
					<tr>
						<td colspan=3 align=center>
						<input type="submit" value="確定">
				</table>
				
				</form>
				
		<tr height=50>
			<td align=center><jsp:include page="../end.jsp"/>
	
	</table>

</body>
</html>