<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib tagdir="/WEB-INF/tags" prefix="jang" %>
    <%@ taglib uri="/WEB-INF/tld/Msg.tld" prefix="jang2" %>
    <%@ taglib uri="/WEB-INF/tld/test.tld" prefix="jang3" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커스텀 태그 보기</title>
</head>
<body>

<jang:print></jang:print>

<jang:test border="5" bgcolor="#2ac1bc">jsp:body태그 란에 들어갈 내용</jang:test>

<jang:logo width="1000px">우주사진</jang:logo>

<jang2:msg/>

<jang3:Test bgcolor="#2ac1bc" border="5"></jang3:Test>

</body>
</html> 