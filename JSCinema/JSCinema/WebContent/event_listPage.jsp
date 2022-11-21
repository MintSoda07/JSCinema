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
<link rel="stylesheet" href="style/event.css">
</head>
<body>
<%@ include file="/headers/NavHeader.jsp" %>
   <div>
   <div id=event>이벤트 1</div>
   </div>
   <div>
    <div id=event>이벤트 2</div>
    </div>
    <div>
    <div id=event>이벤트 3</div>
    </div>
    <div>
    <div id=event>이벤트 4</div>
    </div>
</body>
</html>
</fmt:bundle>