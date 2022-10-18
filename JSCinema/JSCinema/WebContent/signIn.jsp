<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<% response.setContentType("text/html"); %>
<fmt:setLocale value="ja"/>
<fmt:bundle basename="properties.JSCinema">

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><fmt:message key="title"/></title>
    <link rel="stylesheet" href="style/signIn_Page.css" type="text/css" >
    <script src="script/jquery-3.6.1.js"></script>
</head>
<script type="text/javascript">
	function checkLogin(){
		var userID=$('#userID').val();
		var userPW=$('#userPassword').val();
		if(userID==""){
			alert("<fmt:message key="loginPage.alert.id"/>");
			return false;
		}else if(userPW==""){
			alert("<fmt:message key="loginPage.alert.pwd"/>");
			return false;
		}else{
			$('.mainForm').submit("index.jsp");
		}
	}
</script>
<body>
	<div class="banner">
        <img src="img/JSCLogo.PNG" alt="">
        <span>JSCinema</span>
    </div>
    <div class="func">
        <div class="blank"></div>
        <div class="container">
            <span><fmt:message key="loginPage.ask"/></span><a href="signUp.jsp"><span><fmt:message key="signup"/></span></a>
        <form action="index.jsp" class="mainForm" method="get">
            <div class="form">
                <img src="img/JSCLogo.PNG" alt=""><input id="userID" type="text" name="userId"placeholder=<fmt:message key="email"/>>
            </div>
            <div class="form">
                <img src="img/JSCLogo.PNG" alt=""><input id="userPassword" type="password" name="userPassword"placeholder=<fmt:message key="pwd"/>>
            </div>
            <input type="button" value=<fmt:message key="signin"/> id="submit" onclick="checkLogin()">
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
</fmt:bundle>
</html>