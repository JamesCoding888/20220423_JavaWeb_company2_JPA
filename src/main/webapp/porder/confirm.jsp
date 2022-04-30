<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.porder"%>


<%
	request.setCharacterEncoding("UTF-8");
	String Desk = request.getParameter("desk");
	int A=Integer.parseInt(request.getParameter("A"));
 	int B=Integer.parseInt(request.getParameter("B"));
 	int C=Integer.parseInt(request.getParameter("C"));
 	int D=Integer.parseInt(request.getParameter("D"));
 	int E=Integer.parseInt(request.getParameter("E"));
 	int F=Integer.parseInt(request.getParameter("F"));
 	porder p=new porder(Desk, A, B, C, D, E, F);
 	session.setAttribute("P", p);


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>餐點細目</title>
</head>
<style>
body {
  background-color: #E6E6FA;
}
</style>
<body>
	<table width=600 align="center" border=1>
		<tr height=150>
			<td align=center><jsp:include page="../title.jsp"/>
		<tr height=400>
			<td>
				<table width=400 align="center">
					<tr>
						<td colspan=2 align="center">
						<h3>餐點細目</h3>
					<tr>
						<td colspan=2 align="center">
						<hr>
					<tr>
						<td width=150 align="left">桌號
						<td><%=p.getDesk() %>
						
					<tr>
						<td width=150 align=left>起司牛肉堡
						<td><%=p.getA() %>
					<tr>
						<td width=150 align=left>火烤牛肉堡
						<td><%=p.getB() %>
					<tr>
						<td width=150 align=left>紐澳良烤雞堡
						<td><%=p.getC() %>
					<tr>
						<td width=150 align=left>美國牛肉生菜堡
						<td><%=p.getD() %>
					<tr>
						<td width=150 align=left>豬肉堡
						<td><%=p.getE() %>
					<tr>
						<td width=150 align=left>6盎司牛肉堡
						<td><%=p.getF() %>
					<tr>
						<td width=150 align=left>總共費用											
						<td><%=p.getSum() %>
					<tr>
						<td width=150 align=center>
						<td>
					<tr>
						<td colspan=2 align=center>
						<hr>
					<tr>
						<td colspan=3 align=center>
						<a href="addOrder.jsp">重填</a>
						<a href="../addOrderController">確定</a>
				
				</table>
		<tr height=50>
			<td align=center><jsp:include page="../end.jsp"/>
	
	</table>

</body>
</html>