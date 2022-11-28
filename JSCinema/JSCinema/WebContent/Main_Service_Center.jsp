<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ include file="/headers/Language_header.jsp"  %>
<!DOCTYPE html>
<fmt:bundle basename="properties.JSCinema">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style/Main_Service_Center.css">
<script>
    function move_to_questions() {
		location.href="Questions.jsp";
	}
    function move_to_inquiry() {
		location.href="inquiry.jsp";
	}
    </script>
</head>
<body>
    <%@ include file="/headers/NavHeader.jsp" %>
<div id="help">
        <p id="text">JSC 고객센터</p>
        <p>무엇을 도와드릴까요?</p>
    </div>
    <input type="submit" id="submit" value="자주 하는 질문" onclick="move_to_questions()">
    <input type="submit" id="submit" value="1:1문의" onclick="move_to_inquiry()">
</body>
</html>
</fmt:bundle>