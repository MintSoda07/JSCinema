<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/signUp_Page.css">
    <title>Document</title>
</head>
<body>
    <div class="signup">
        <div class="banner">
        	<img src="img/JSCLogo.PNG" alt="">
        	<span>JSCinema</span>
    	</div>
        <form>
            <label>이름</label>
            <input type="text" name="user_name">
            <label>이메일</label>
            <input type="email" name="user_email">
            <label>비밀번호</label>
            <input type="password" name="user_password">
            <label>비밀번호 확인</label>
            <input type="password" name="user_password_check">
            <input type="submit">
        </form>
    </div>
    
</body>
</html>