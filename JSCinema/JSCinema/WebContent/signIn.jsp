<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="style/signIn_Page.css" type="text/css" >
    <script src="script/jquery-3.6.1.js"></script>
</head>
<script type="text/javascript">
	function checkLogin(){
		var userID=$('#userID').val();
		var userPW=$('#userPassword').val();

		if(userID==""){
			alert("아이디를 입력해주세요.");
			return false;
		}else if(userPW==""){
			alert("비밀번호를 입력해주세요.");
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
            <span>회원이 아니신가요?</span><a href="signUp.jsp"><span>회원가입 하러가기</span></a>
        <form action="index.jsp" class="mainForm" method="get">
            <div class="form">
                <img src="img/JSCLogo.PNG" alt=""><input id="userID" type="text" name="userId"placeholder="아이디 혹은 이메일 주소">
            </div>
            <div class="form">
                <img src="img/JSCLogo.PNG" alt=""><input id="userPassword" type="password" name="userPassword"placeholder="비밀번호">
            </div>
            <input type="button" value="로그인" id="submit" onclick="checkLogin()">
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