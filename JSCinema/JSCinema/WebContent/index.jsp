<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>영화 보기 좋은 곳, JSCinema</title>
    <link rel="stylesheet" href="style/mainpage.css?ver=1" type="text/css" >
    <script src="script/mainpage_Script.js"></script>
    <script src="script/jquery-3.6.1.js"></script>
    <% String Page_Locale=request.getParameter("Lo"); %>
    <%!
    String SignIn_text="로그인";String SignUp_text="회원가입"; 
	String Movie_text="영화";String Ticket_text="예매";String Snack_text="스낵";String Event_text="이벤트";String Support_text="고객지원";
	String Img_Err="이미지를 불러올 수 없습니다.";
    public void change_Lang(String lang){
    	switch(lang){
    	case "ko":
    		SignIn_text="로그인";SignUp_text="회원가입";
    		Movie_text="영화";Ticket_text="예매";Snack_text="스낵";Event_text="이벤트";Support_text="고객지원";
    		Img_Err="이미지를 불러올 수 없습니다.";
    		break;
    	case "en":
			SignIn_text="SignIn";SignUp_text="SignUp";
			Movie_text="Movies";Ticket_text="Tickets";Snack_text="Snacks";Event_text="Events";Support_text="Supports";
			Img_Err="Failed to load image.";
			break;
    	}
    }
    %>
    <%change_Lang("en"); %>
</head>
<body>
	<fmt:setLocale value="ko"/>
    <header> <!-- 1100 사이즈부터 최소화 -->
        <div></div>
        <!--<img src="img/JSCLogo.PNG" id="Logo" alt="이미지를 불러올 수 없습니다."> 보류-->
        <div id="Banner">JSCinema</div>
        <div id="AccountForm">
        	<form action="signIn.jsp" id="LoginOption">
        		<input type="submit" id="SignIn" value=<%out.print(SignIn_text); %>><br>
        	</form>
        	<form action="signUp.jsp" id="LoginOption">
        		<input type="submit" id="SignUp" value=<%out.print(SignUp_text); %>>
        	</form>
        </div>
            
    </header>
    
    <nav id="NavigationVar">
        <span id="Movies" class="NavButton"><%out.print(Movie_text);%></span>
        <span id="Tickets" class="NavButton"><%out.print(Ticket_text);%></span>
        <span id="Snacks" class="NavButton"><%out.print(Snack_text);%></span>
        <span id="Events" class="NavButton"><%out.print(Event_text);%></span>
        <span id="Supports" class="NavButton"><%out.print(Support_text);%></span>
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
</html>