<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ include file="/headers/Language_header.jsp"  %>
<!DOCTYPE html>
<html lang="ko">
<fmt:bundle basename="properties.JSCinema">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><fmt:message key="title"/></title>
    <link rel="stylesheet" href="style/mainpage.css?ver=2" type="text/css" >
    <script src="script/mainpage_Script.js"></script>
    <script src="script/jquery-3.6.1.js"></script>
    
</head>
<body>
    <%@ include file="/headers/NavHeader.jsp" %>
    <section class="contents">
        <!-- 아래의 내용은 스크립트 불러오기 실패 시 표시될 내용임 (예시)-->
        <%
        for(int count=0;count<6;count++){
        	out.println("<div class=\"movieChart\" id=\"Chart1\">" + System.lineSeparator()+"<img src=\"img/Maverick.jpg\" alt=\"\" class=\"movieImg\">"+ System.lineSeparator()+
        			"<p class=\"movieName\" >탑건: 매버릭</p>" + System.lineSeparator()+
        			"<p class=\"movieDescription\">올 여름, 매버릭과 함깨하는 짜릿한 공중 액션 영화!</p>" + System.lineSeparator()+
        			"<span class=\"movieRate\">평점 4.3 - 리뷰 240개</span>" + System.lineSeparator()+"</div>" );
        }
        %>
    </section>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <p></p>
    </fmt:bundle>
</body>
</html>