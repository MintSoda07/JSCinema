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
 <link rel="stylesheet" href="style/service_center.css">
</head>
<body> 
 <%@ include file="/headers/NavHeader.jsp" %>
<h1>고객센터</h1>

    <div id="search">
        <input type="text" placeholder="검색">
        <button>검색</button>
    </div>

    <h2>예매 오류가 발생했습니다</h2>
    <div id="questions">
        <h3>Q. 예매 도중 오류가 발생했습니다</h3>
        <div id ="answer">
        </div>
        <h3>A. 해결 방법을 제시해드렸습니다</h3>
        <div id ="answer">
        </div>
    </div>

</body>
</html>
</fmt:bundle>