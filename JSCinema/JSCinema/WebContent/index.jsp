<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>��ȭ ���� ���� ��, JSCinema</title>
    <link rel="stylesheet" href="style/mainpage.css?ver=1" type="text/css" >
    <script src="script/mainpage_Script.js"></script>
    <script src="script/jquery-3.6.1.js"></script>
</head>
<body>
    <header> <!-- 1100 ��������� �ּ�ȭ -->
        <div></div>
        <!--<img src="img/JSCLogo.PNG" id="Logo" alt="�̹����� �ҷ��� �� �����ϴ�."> ����-->
        <div id="Banner">JSCinema</div>
        <form action="login.jsp" id="LoginOption">
        <input type="submit" id="SignIn" value="�α���"><br>
        <input type="submit" id="SignUp" value="ȸ������">
        </form>
            
    </header>
    
    <nav id="NavigationVar">
        <span id="Movies" class="NavButton">��ȭ</span>
        <span id="Tickets" class="NavButton">����</span>
        <span id="Snacks" class="NavButton">����</span>
        <span id="Events" class="NavButton">�̺�Ʈ</span>
        <span id="Supports" class="NavButton">������</span>
    </nav>
    <section class="contents">
        <!-- �Ʒ��� ������ ��ũ��Ʈ �ҷ����� ���� �� ǥ�õ� ������ (����)-->
        <%
        for(int count=0;count<6;count++){
        	out.println("<div class=\"movieChart\" id=\"Chart1\">" + System.lineSeparator()+"<img src=\"img/Maverick.jpg\" alt=\"\" class=\"movieImg\">"+ System.lineSeparator()+"<p class=\"movieName\" >ž��: �Ź���</p>" + System.lineSeparator()+"<p class=\"movieDescription\">�� ����, �Ź����� �Ա��ϴ� ¥���� ���� �׼� ��ȭ!</p>" + System.lineSeparator()+"<span class=\"movieRate\">���� 4.3 - ���� 240��</span>" + System.lineSeparator()+"</div>" );
        }
        %>
    </section>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <p>dss</p>
</body>
</html>