<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.porder"
    import="dao.porderDao"
    import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>刪除訂單</title>
</head>
<style>
body {
  background-color: #E6E6FA;
}
</style>
<body>
	<table width=900 align=center border=1>
		<tr height=150>
			<td align=center><jsp:include page="../title.jsp"/>
		<tr height=400>
			<td>
			<form action="../deleteOrderController" method="post">
				<table width=900 align=center  border=0>
					<tr>
						<td align=center>
						ID
						<input type="text" name="id" size=5>
						
						<input type="submit" value="ok">						
				
				</table>			
			</form>
			<hr>
				<table width=900 align=center border=0>
					<tr align=center>
						<td>ID<td>桌號<td>起司牛肉堡<td>火烤牛肉堡<td>紐澳良烤雞堡<td>美國牛肉生菜堡<td>豬肉堡<td>6盎司牛肉堡<td>總共費用
					<%
						
						List<porder> l = new porderDao().queryAll();
						for(porder p:l){
							out.println("<tr align=center>"+ 
										"<td>" + p.getId() +
										"<td>" + p.getDesk() +
										"<td>" + p.getA() +
										"<td>" + p.getB() +
										"<td>" + p.getC() +
										"<td>" + p.getD() +
										"<td>" + p.getE() +
										"<td>" + p.getF() +
										"<td>" + p.getSum());
						}
					%>
				<tr>
					<td colspan=6 align=center>
					<hr>
				<tr>
					<td colspan=6 align=center>					
					<a href="../member/loginSuccess.jsp">回選單頁</a>
				</table>
				
		<tr height=50>
			<td align=center><jsp:include page="../end.jsp"/>
	
	</table>
</body>
</html>