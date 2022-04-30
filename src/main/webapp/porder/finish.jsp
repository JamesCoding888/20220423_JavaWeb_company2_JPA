<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.porder"
    import="dao.porderDao"
    %>
    
<%
/*
1.讀取 p訂單
2.新增到資料庫--->add(p);
3.顯示訂單報表
4.列印按鈕
*/
//out.println(session.getAttribute("P"));

porder p=(porder)session.getAttribute("P");

//new porderDao().add(p);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<SCRIPT LANGUAGE="JavaScript">

<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
function varitext(text){
text=document
print(text)
}
//  End -->
</script>

</head>
<body>
	<table width=600 align=center border=1>
		<tr height=150>
			<td align=center><jsp:include page="../title.jsp"/>
		<tr height=400>
			<td>
			<table width=300 align=center>
					<tr>
						<td colspan=2 align=center>
						<h3>訂單完成</h3>
					<tr>
						<td colspan=2 align=center>
						<hr>
					<tr>
						<td width=150 align=left>桌號
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
						<td colspan=2 align=center>
						<hr>
					<tr>
						<td colspan=3 align=center>
						<a href="addOrder.jsp">重填</a>
						<a href="finish.jsp">確定</a>
				
				<DIV ALIGN="CENTER">
					<FORM>
						<INPUT NAME="print" TYPE="button" VALUE="列印此頁"
							ONCLICK="varitext()">
					</FORM>
				</DIV>
				
				</table>
		<tr height=50>
			<td align=center><jsp:include page="../end.jsp"/>
	
	</table>

</body>
</html>