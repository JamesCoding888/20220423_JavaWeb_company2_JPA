<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>麥當勞點餐系統</title>
</head>
<style>
body {
  background-color: #E6E6FA;
}
</style>
<body>		 
	<table width=600 align="center" border=1>
		<tr height=150>
			<td align="center"><h2>McDonald's</h2><img src="picture\logo\McDonald.png">
		<tr height=400>
			<td>
				<form action="loginController" method="post">
					<table width="300" align="center">
						<tr>
							<td width=50 align="center">帳號
							<td width=250><input type="text" name="username">
						<tr>
							<td align="center" >密碼
							<td><input type="password" name="password">
						<tr>
							<td colspan=2 align=center>
							<input type="submit" value="確定">							
							
					</table>
				</form>
		<tr height=50>
			<td align="center"><jsp:include page="end.jsp" />
	
	</table>
	
</body>
</html>