<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="width" %>


<img alt="로고사진" src="/apple.jpg" width="${width}">
<h1><jsp:doBody/></h1><!-- 사용자가 태그바디에 입력한 내용이 <h1>태그 안에 들어감 -->

