<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
</head>
<body>
    <header> <!-- 1100 사이즈부터 최소화 -->
        <div></div>
        <!--<img src="img/JSCLogo.PNG" id="Logo" alt="이미지를 불러올 수 없습니다."> 보류-->
        <div id="Banner">JSCinema</div>
        <form action="login.jsp" id="LoginOption">
        <input type="submit" id="SignIn" value="로그인"><br>
        <input type="submit" id="SignUp" value="회원가입">
        </form>
            
    </header>
    
    <nav id="NavigationVar">
        <span id="Movies" class="NavButton">영화</span>
        <span id="Tickets" class="NavButton">예매</span>
        <span id="Snacks" class="NavButton">스낵</span>
        <span id="Events" class="NavButton">이벤트</span>
        <span id="Supports" class="NavButton">고객지원</span>
    </nav>
    <section class="contents">
        <!-- 아래의 내용은 스크립트 불러오기 실패 시 표시될 내용임 (예시)-->
        <%
        for(int count=0;count<6;count++){
        	out.println("<div class=\"movieChart\" id=\"Chart1\">" + System.lineSeparator()+"<img src=\"img/Maverick.jpg\" alt=\"\" class=\"movieImg\">"+ System.lineSeparator()+"<p class=\"movieName\" >탑건: 매버릭</p>" + System.lineSeparator()+"<p class=\"movieDescription\">올 여름, 매버릭과 함깨하는 짜릿한 공중 액션 영화!</p>" + System.lineSeparator()+"<span class=\"movieRate\">평점 4.3 - 리뷰 240개</span>" + System.lineSeparator()+"</div>" );
        }
        %>
    </section>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <p>dss</p>
</body>
</html>