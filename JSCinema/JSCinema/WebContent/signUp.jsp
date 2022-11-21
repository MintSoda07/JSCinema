<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

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
     <script src="script/jquery-3.6.1.js"></script>
    <script>
    function goto_index() {
    	var ans= confirm('이 페이지를 벗어나면 입력하신 정보가 사라집니다. 이동하시겠습니까?');
    	if(ans==true){
    		location.href="index.jsp";	
    	}
	}
    
    function validation_check(){
    }
    </script>
   
</head>
<body>

        <div class="banner" style="cursor:pointer;" onclick="goto_index();">
        	<img id="logoImg" src="img/JSCLogo.PNG" alt="">
        	<span id="title">JSCinema</span>
    	</div>
    	<div id="back">
    	</div>
    	<div class="inputBox">
    	<div class="signup">
        <form>
            <label><fmt:message key="name"/></label>
            <input type="text" name="NAME" required="required" placeholder="<fmt:message key="name.input"/>">
            <label>ID</label>
            <input type="text" name="ID" required="required" placeholder="<fmt:message key="loginPage.alert.id"/>">
            <label><fmt:message key="email"/></label>
            <input type="email" name="EMAIL" required="required" placeholder="<fmt:message key="email.input"/>">
            <label>전화번호</label>
            <input type="text" name="tell" required="required" placeholder="010-1234-5678">
            <label><fmt:message key="pwd"/></label>
            <input type="password" name="PASSWORD" required="required" id="pwd" placeholder="<fmt:message key="pwd.input"/>">
            <label><fmt:message key="signup.pwdcheck"/></label>
            <input type="password" name="PASSWORD_CHECK" required="required" id="pwd_check" placeholder="<fmt:message key="pwdcheck.input"/>">

            
            <input type="button" value="<fmt:message key="signup"/>" onclick="validation_check();">
        </form>
    </div>
    </div>
</body>
</html>
</fmt:bundle>