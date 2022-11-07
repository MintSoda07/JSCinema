<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ include file="/headers/Language_header.jsp" %>

<% response.setContentType("text/html"); %>
<fmt:bundle basename="properties.JSCinema">
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/signup_Page.css">
    <title><fmt:message key="signup"/></title>
</head>
<body>

        <div class="banner">
        	<img id="logoImg" src="img/JSCLogo.PNG" alt="">
        	<span id="title">JSCinema</span>
    	</div>
    	<div id="back">
    	</div>
    	<div class="inputBox">
    	<div class="signup">
        <form>
            <label><fmt:message key="name"/></label>
            <input type="text" name="user_name" required="required" placeholder="">
            <label><fmt:message key="email"/></label>
            <input type="email" name="user_email" required="required">
            <label><fmt:message key="pwd"/></label>
            <input type="password" name="user_password" required="required">
            <label><fmt:message key="pwdcheck.input"/></label>
            <input type="password" name="user_password_check" required="required">
            <input type="submit" value="<fmt:message key="signup"/>">
        </form>
    </div>
    </div>
</body>
</html>
</fmt:bundle>