<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ include file="/headers/Language_header.jsp"  %>

<% response.setContentType("text/html"); %>
<fmt:bundle basename="properties.JSCinema">
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><fmt:message key="title"/></title>
    <link rel="stylesheet" href="style/signIn_Page.css" type="text/css" >
    <script src="script/jquery-3.6.1.js"></script>
</head>

<body>
	<div class="banner">
        <img src="img/JSCLogo.PNG" alt="">
        <span>JSCinema</span>
    </div>
    <div class="func">
        <div class="blank"></div>
        <div class="container">
            <span><fmt:message key="loginPage.ask"/></span><a href="signUp.jsp"><span><fmt:message key="signup"/></span></a>
        <form action="LoginCheck_Page.jsp" class="mainForm" method="get">
            <div class="form">
                <img src="img/JSCLogo.PNG" alt=""><input id="userID" type="text" name="ID"placeholder=<fmt:message key="email"/> required="required">
            </div>
            <div class="form">
                <img src="img/JSCLogo.PNG" alt=""><input id="userPassword" type="password" name="PWD"placeholder=<fmt:message key="pwd"/> required="required">
            </div>
            <input type="submit" value=<fmt:message key="signin"/> id="submit">
            <%
            int Err_code;
            try{
            	Err_code=Integer.parseInt(request.getParameter("Err_Code"));	
            	switch(Err_code){
               	case 0:
               		out.print("<label id=\"ERR\">"+"로그인 정보가 전달되는 과정에 오류가 발생했습니다."+"</label>");
               		break;
               	case 1:
               		out.print("<label id=\"ERR\">"+"이메일 혹은 아이디 에는 공백이 포함될 수 없습니다."+"</label>");
               		break;
               	case 2:
               		out.print("<label id=\"ERR\">"+"비밀번호는 40자 이내여야 하며 공백이 포함될 수 없습니다."+"</label>");
               		break;
               	case 3:
               		out.print("<label id=\"ERR\">"+"이메일 혹은 아이디와 비밀번호가 일치하지 않습니다."+"</label>");
               		break;
               	}
            }catch(Exception e){
            	out.print("<span style=\"padding:3px;\">이메일 혹은 아이디와 비밀번호를 입력해 주세요.</span>");
            }
           	
            
            %>
        </form>
        </div>
        <div class="blank"></div>
	</div>
    <!-- 광고가 들어올 곤간-->
    <div class="AD">
        <img src="" alt="">
    </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <!-- footer가 들어올 공간-->
    
</body>
</html>
</fmt:bundle>