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
    	var isValidate=true;
    	var pwd=$("#pwd").val();
    	var al=$("#alert");
    	var pwd_check=$("#pwd_check").val();
    	alert(pwd+","+pwd_check);
    	var name=$("#name");
    	if(name.val().length>20){
    		$("#name").css("border","red solid 1px")
    		$("#name").focus();
    		$("#name_check").text("이름이 너무 깁니다. 20자 이내로 작성해야 합니다.");
    		isValidate=false;
    	}else{
    		$("#name").css("border","black solid 1px");
    		$("#name_check").text("");
    	}
    	
    	var id=$("#ID");
    	if(id.val().length>20){
    		$("#ID").css("border","red solid 1px")
    		$("#ID").focus();
    		$("#ID_check").text("아이디가 너무 깁니다. 20자 이내로 작성해야 합니다.");
    		isValidate=false;
    	}else{
    		$("#ID").css("border","black solid 1px");
    		$("#ID_check").text("");
    	}
    	if(pwd===pwd_check){
    		$("#pwd_check").css("border","black solid 1px");
    		al.text("");
    	}else{
    		$("#pwd_check").css("border","red solid 1px");
    		al.text("비밀번호가 다릅니다. 다시 입력해 주세요.");
    		isValidate=false;
    	}
    }
    </script>
   
</head>
<body>

        <div class="banner" style="cursor:pointer;" onclick="goto_index();">
        	<img id="logoImg" src="img/JSCLogo.PNG" alt="">
        	<span id="title">JSCinema</span>
    	</div>
    	<div id="back">
    	
    	<div class="inputBox">
    	<div class="signup">
    	<h2>회원 가입</h2>
    	<hr>
        <form action="index.jsp" id="foorm">
            <label><fmt:message key="name"/></label> 
            <input type="text" id="name" name="NAME" required="required" placeholder="<fmt:message key="name.input"/>">
            <p id="name_check" style="color:red; font-weight: bold;"></p>
            <label>ID</label>
            <input type="text" id="ID" name="ID" required="required" placeholder="<fmt:message key="loginPage.alert.id"/>">
            <p id="ID_check" style="color:red; font-weight: bold;"></p>
            <label><fmt:message key="email"/></label>
            <input type="email" name="EMAIL" required="required" placeholder="<fmt:message key="email.input"/>">
            <p id="email_check" style="color:red; font-weight: bold;"></p>
            <label>전화번호</label>
            <input type="text" name="tell" required="required" placeholder="010-1234-5678">
            <p id="tell_check" style="color:red; font-weight: bold;"></p>
            <label><fmt:message key="pwd"/></label>
            <input type="password" name="PASSWORD" required="required" id="pwd" placeholder="<fmt:message key="pwd.input"/>">
            <p id="pwd_alert" style="color:red; font-weight: bold;"></p>
            <label><fmt:message key="signup.pwdcheck"/></label>
            <input type="password" name="PASSWORD_CHECK" required="required" id="pwd_check" placeholder="<fmt:message key="pwdcheck.input"/>">

            <br><p id="alert" style="color:red; font-weight: bold;"></p><br><hr><br>
            <input type="button" value="<fmt:message key="signup"/>" onclick="validation_check();">
        </form>
    </div>
    </div></div>
</body>
</html>
</fmt:bundle>