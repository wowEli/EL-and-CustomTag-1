<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="test" class="day45EL.Test" scope="session"></jsp:useBean>
    <!-- session은 EL식 개념 설명을 위해 이번만 저장 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>El식 -1</title>
</head>
<body>
<form action="EL2.jsp" method="post"><!-- 데이터를 다음 페이지에 넘겨주기위해 form 사용 -->
	<select name="sel">
	<%
		for(String v : test.getDatas() ){ // view 작업자는 data 개수를 알 수가 없으므로 데이터 길이만큼으로 진행
	%>
		<option><%=v%></option>
	<%
			
		}
	%>
	</select>
	<input type="submit" value="선택">
</form>
</body>
</html>