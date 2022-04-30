<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.member"%>

<%	
	member m = (member)session.getAttribute("M");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>選單</title>
</head>
<style>
body {
  background-color: #E6E6FA;
}
</style>
<style>
body {
  background-color: #E6E6FA;
}
</style>
<body>
	<table width=600 align="center" border=1>
		<tr height=150>
			<td align="center"><jsp:include page="../title.jsp" />
		<tr height=400>
			<td>
			<table width=300 align="center">
				<tr>
					<td align="center"><h3>歡迎光臨 <%=m.getUsername() %></h3>
				<tr>
					<td align="center"><a href="../porder/addOrder.jsp">1)新增</a>
				<tr>
					<td align="center"><a href="../porder/queryOrder.jsp">2)查詢</a>
				<tr>
					<td align="center"><a href="../porder/updateOrder.jsp">3)修改</a>
				<tr>
					<td align="center"><a href="../porder/deleteOrder.jsp">4)刪除</a>
			
			</table>				
		<tr height=50>
			<td align="center"><jsp:include page="../end.jsp" />
	
	</table>
</body>
</html>