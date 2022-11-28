<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/mainpage.css?ver=1" type="text/css" >
    <script>
    function index_logo() {
		location.href="index.jsp";
	}
    function move_to_movie() {
		location.href="MovieList_Page.jsp";
	}
    	function move_to_snack() {
    		location.href="SnackList_Page.jsp";
		}
    </script>
</head>
<body>
<header> <!-- 1100 사이즈부터 최소화(예정) -->
        <div>
        <div id="LangChangeForm" ><form class="LangChange" action="language_redirection.jsp">
        <input type="submit" id="LangKo" value="한국어" name="lang"><input type="submit" id="LangEn" value="English" name="lang">
        </form>
        <form class="LangChange" action="language_redirection.jsp">
        <input type="submit" id="LangJa" value="日本語" name="lang"><input type="submit" id="LangCn" value="中國語" name="lang">
        </form> 
        <form class="LangChange" action="language_redirection.jsp">
        <input type="submit" id="LangEs" value="español" name="lang"><input type="submit" id="LangGe" value="Русский" name="lang">
        </form>  	
        </div>
        </div>
        <!--<img src="img/JSCLogo.PNG" id="Logo" alt="이미지를 불러올 수 없습니다."> 보류-->
        <div id="Banner" onclick="index_logo()">JSCinema</div>
        <div id="AccountForm">
        <%! boolean login=false; %>
        <% login=false;
        if(session.getAttribute("UserID")!=null){
        	login=true;
        }
        boolean IsManager=false;
        try{
        	
        	IsManager=session.getAttribute("Manager").equals("Y");
        	}catch(Exception e){
        		IsManager=false;
        	}
        %>
        	<!--  login  -->
        	<form action="signIn.jsp" id="LoginOption" <% if(login) out.print("style=\"display:none;\""); %>>
        		<input type="submit" id="SignIn" value=<fmt:message key="signin"/><% if(login) out.print("display=\"none\";"); %>> <%if(!login) out.print("<br>"); %>
        	</form>
        	<form action="signUp.jsp" id="LoginOption" <% if(login) out.print("style=\"display:none;\""); %>>
        		<input type="submit" id="SignUp" value=<fmt:message key="signup"/><% if(login) out.print("display=\"none\";"); %>>
        	</form>
        	
        	
        	<!--  not log in -->
        	<p id="userName" <% if(!login) out.print("style=\"display:none;\""); %>><% if(login){
        		if(IsManager){
        			out.print("관리자 "+session.getAttribute("UserName")+" 님");
        		}else{
        			out.print(session.getAttribute("UserName")+" 님 환영합니다.");
        		}
        	}
        		%></p>
        	<div class="forms" <% if(!login) out.print("style=\"display:none;\""); %>>
        	<form action="#" <% if(!login) out.print("style=\"display:none;\""); %>>
        		<input type="submit" id="profile" value="프로필" <% if(!login) out.print("style=\"display:none;\""); %>>
        	</form>
        	<form action="logout_redirection.jsp" <% if(!login) out.print("style=\"display:none;\""); %>>
        		<input type="submit" id="signOut" value="로그아웃" <% if(!login) out.print("style=\"display:none;\""); %>>
        	</form>
        	</div>
        </div>
    </header>
    <nav id="NavigationVar">
        <span id="Movies" class="NavButton" onclick="move_to_movie()"><fmt:message key="movie"/></span>
        <span id="Tickets" class="NavButton" onclick="move_to_movie()"><fmt:message key="ticket"/></span>
        <span id="Snacks" class="NavButton" onclick="move_to_snack()"><fmt:message key="snack"/></span>
        <span id="Events" class="NavButton"><fmt:message key="event"/></span>
        <span id="Supports" class="NavButton"><fmt:message key="support"/></span>
    </nav>
</body>
</html>