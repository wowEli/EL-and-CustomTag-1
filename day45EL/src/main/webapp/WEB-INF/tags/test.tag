<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="border" %> <!-- 커스텀 태그에 속성만들기 -->
<%@ attribute name="bgcolor" %>

<jsp:useBean id="test" class="day45EL.Test"/>


<h1><jsp:doBody/></h1>
<table border="${border}" bgcolor="${bgcolor}"> <!-- 속성 값이 외부에서 들어와야됨 -->
	<%
		for(String v: test.getDatas()){
	%>
	<tr>
		<td><%=v%></td>
	</tr>
	
	<%
		}
	%>
</table>