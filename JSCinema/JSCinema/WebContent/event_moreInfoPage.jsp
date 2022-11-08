<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ include file="/headers/Language_header.jsp"  %>

<fmt:bundle basename="properties.JSCinema">
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="style/eventinformation.css">
</head>
<body>
<%@ include file="/headers/NavHeader.jsp" %>
    <div id= eventadd>이벤트 1</div>
    <textarea id="information" cols="40" rows="10"placeholder="상세정보를 입력해주세요"></textarea>
    <input type="button" id="event" value="이벤트 참여하기">

</body>
</html>
</fmt:bundle>