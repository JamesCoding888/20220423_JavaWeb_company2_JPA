<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.porder"
    import="dao.porderDao"
    import="java.util.List"%>

<%
/*
1.request-->start,end-->不是"",null-->querySum
2.queryAll
*/
String start = request.getParameter("start");
String end = request.getParameter("end");
List<porder> l = null;
if(start != "" && start != null && end != "" && end != null)
{
	int s = Integer.parseInt(start);
	int e = Integer.parseInt(end);
	 
	
	l = new porderDao().querySum(s,e);
}
else
{
	l=new porderDao().queryAll();
}


%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查詢訂單</title>
</head>
<style>
body {
  background-color: #E6E6FA;
}
</style>
<body>
	<table width=600 align=center border=1>
		<tr height=150>
			<td align=center><jsp:include page="../title.jsp"/>
		<tr height=400>
			<td>
				<form action="queryOrder.jsp" method="post">
					<table width=500 align="center">
						<tr>
							<td colspan=3 align="center">
							金額:
							<input type="text" name="start" size=5>
							到:
							<input type="text" name="end" size=5>
							<input type="submit" value="確定">
						
					</table>				
				</form>
				<hr>
					<table width=500 align=center border=0>
						<tr align=center>							
							<td>ID<td>桌號<td>起司牛肉堡<td>火烤牛肉堡<td>紐澳良烤雞堡<td>美國牛肉生菜堡<td>豬肉堡<td>6盎司牛肉堡<td>總共費用
						<%						
							for(porder p : l){
								out.println("<tr align=center>" +
										"<td>" + p.getId()+
										"<td>" + p.getDesk()+
										"<td>" + p.getA()+
										"<td>" + p.getB()+
										"<td>" + p.getC()+
										"<td>" + p.getD()+
										"<td>" + p.getE()+
										"<td>" + p.getF()+
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