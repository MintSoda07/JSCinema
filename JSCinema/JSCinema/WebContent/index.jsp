<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<% response.setContentType("text/html"); %>
<fmt:setLocale value="ja"/>

<fmt:bundle basename="properties.JSCinema">
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><fmt:message key="title"/></title>
    <link rel="stylesheet" href="style/mainpage.css?ver=1" type="text/css" >
    <script src="script/mainpage_Script.js"></script>
    <script src="script/jquery-3.6.1.js"></script>
</head>
<body>
    <header> <!-- 1100 사이즈부터 최소화 -->
        <div>
        <form action="#" id="LangChangeForm">
        <form class="LangChange">
        <input type="submit" id="LangKo" value="한국어"><input type="submit" id="LangEn" value="English"><br>
        </form>
        <form class="LangChange">
        <input type="submit" id="LangJa" value="日本語"><input type="submit" id="LangCn" value="中國語"><br>
        </form>  	
        </form>
        </div>
        <!--<img src="img/JSCLogo.PNG" id="Logo" alt="이미지를 불러올 수 없습니다."> 보류-->
        <div id="Banner">JSCinema</div>
        <div id="AccountForm">
        	<form action="signIn.jsp" id="LoginOption">
        		<input type="submit" id="SignIn" value=<fmt:message key="signin"/>><br>
        	</form>
        	<form action="signUp.jsp" id="LoginOption">
        		<input type="submit" id="SignUp" value=<fmt:message key="signup"/>>
        	</form>
        </div>
    </header>
    <nav id="NavigationVar">
        <span id="Movies" class="NavButton"><fmt:message key="movie"/></span>
        <span id="Tickets" class="NavButton"><fmt:message key="ticket"/></span>
        <span id="Snacks" class="NavButton"><fmt:message key="snack"/></span>
        <span id="Events" class="NavButton"><fmt:message key="event"/></span>
        <span id="Supports" class="NavButton"><fmt:message key="support"/></span>
    </nav>
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
    <p>dss</p>
</body>
</fmt:bundle>
</html>