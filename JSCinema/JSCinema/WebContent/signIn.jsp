<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>�α���</title>
    <link rel="stylesheet" href="style/signIn_Page.css" type="text/css" >
    <script src="script/jquery-3.6.1.js"></script>
</head>
<script type="text/javascript">
	function checkLogin(){
		var userID=$('#userID').val();
		var userPW=$('#userPassword').val();

		if(userID==""){
			alert("���̵� �Է����ּ���.");
			return false;
		}else if(userPW==""){
			alert("��й�ȣ�� �Է����ּ���.");
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
            <span>ȸ���� �ƴϽŰ���?</span><a href="signUp.jsp"><span>ȸ������ �Ϸ�����</span></a>
        <form action="index.jsp" class="mainForm" method="get">
            <div class="form">
                <img src="img/JSCLogo.PNG" alt=""><input id="userID" type="text" name="userId"placeholder="���̵� Ȥ�� �̸��� �ּ�">
            </div>
            <div class="form">
                <img src="img/JSCLogo.PNG" alt=""><input id="userPassword" type="password" name="userPassword"placeholder="��й�ȣ">
            </div>
            <input type="button" value="�α���" id="submit" onclick="checkLogin()">
        </form>
        </div>
        <div class="blank"></div>
    </div>
    <!-- ���� ���� �ﰣ-->
    <div class="AD">
        <img src="" alt="">
    </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <!-- footer�� ���� ����-->
    
</body>
</html>