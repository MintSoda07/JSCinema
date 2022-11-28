<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ include file="/headers/Language_header.jsp"  %>
<!DOCTYPE html>
<fmt:bundle basename="properties.JSCinema">
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
    <link rel="stylesheet" href="style/inquiry.css">
     <script>
    function validation_check(){
    	var isValidate=true;
    	var pwd=$("#pwd").val();
    	var al=$("#alert");
    	var pwd_check=$("#pwd_check").val();
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
    		if(id.val().match(/\s/g)){
        		$("#ID").css("border","red solid 1px")
        		$("#ID").focus();
        		$("#ID_check").text("아이디에 공백이 포함될 수 없습니다.");
        		isValidate=false;
        	}else{
        		$("#ID").css("border","black solid 1px");
        		$("#ID_check").text("");
        	}
    	}
    	
    	
    	
    	var id=$("#EMAIL");
    	if(id.val().indexOf('@')==-1||id.val().length>40){
    		$("#EMAIL").css("border","red solid 1px")
    		$("#EMAIL").focus();
    		$("#email_check").text("@이 포함된 이메일을 입력해 주세요. 20자 이내로 작성해야 합니다.");
    		isValidate=false;
    	}else{
    		$("#EMAIL").css("border","black solid 1px");
    		$("#email_check").text("");
    	}
    	
    	if($("#name").val()==""||$("#ID").val()==""||$("#EMAIL").val()==""||$("#TEL").val()==""){
    		al.text("입력하지 않은 항목이 있습니다. 모든 항목에 값을 입력해주세요.");
    		isValidate=false;
    	}else{
    		if(isValidate==true){
        		$('#foorm').submit();
        	}
    	}
    }
    </script>
   
</head>
<body>
<%@ include file="/headers/NavHeader.jsp" %>
<div style="font-size:40px; color:black; "><span style="margin-left:30px;">1:1문의</span><hr></div>
<div id="container">
        <div id="help">
    <form>
        <p>이름: <input type="text" id="name" placeholder="이름을 입력해주세요"></p>
        <p>이메일: <input type="email" id="name" placeholder="이메일을 입력해주세요"></p>
        <p>휴대전화: <input type="text" id="name" placeholder="전화번호 입력해주세요"></p>
        <textarea name="title" id="title" cols="140" rows="2" placeholder="제목을 입력해주세요." required="required" ></textarea>
        <textarea name="infomation" id="information" cols="140" rows="14" placeholder="문의 내용을 입력해주세요." required="required" ></textarea>
        <input type="submit" id="submit" value="문의 내용 등록" onclick="validation_check();">
    </form>
    </div>
    </div>
</body>
</html>
</fmt:bundle>