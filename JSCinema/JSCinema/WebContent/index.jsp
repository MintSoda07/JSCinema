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
    <title>��ȭ ���� ���� ��, JSCinema</title>
    <link rel="stylesheet" href="style/mainpage.css?ver=1" type="text/css" >
    <script src="script/mainpage_Script.js"></script>
    <script src="script/jquery-3.6.1.js"></script>
    <% String Page_Locale=request.getParameter("Lo"); %>
    <%!
    String SignIn_text="�α���";String SignUp_text="ȸ������"; 
	String Movie_text="��ȭ";String Ticket_text="����";String Snack_text="����";String Event_text="�̺�Ʈ";String Support_text="������";
	String Img_Err="�̹����� �ҷ��� �� �����ϴ�.";
    public void change_Lang(String lang){
    	switch(lang){
    	case "ko":
    		SignIn_text="�α���";SignUp_text="ȸ������";
    		Movie_text="��ȭ";Ticket_text="����";Snack_text="����";Event_text="�̺�Ʈ";Support_text="������";
    		Img_Err="�̹����� �ҷ��� �� �����ϴ�.";
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
    <header> <!-- 1100 ��������� �ּ�ȭ -->
        <div></div>
        <!--<img src="img/JSCLogo.PNG" id="Logo" alt="�̹����� �ҷ��� �� �����ϴ�."> ����-->
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
        <!-- �Ʒ��� ������ ��ũ��Ʈ �ҷ����� ���� �� ǥ�õ� ������ (����)-->
        <%
        for(int count=0;count<6;count++){
        	out.println("<div class=\"movieChart\" id=\"Chart1\">" + System.lineSeparator()+"<img src=\"img/Maverick.jpg\" alt=\"\" class=\"movieImg\">"+ System.lineSeparator()+
        			"<p class=\"movieName\" >ž��: �Ź���</p>" + System.lineSeparator()+
        			"<p class=\"movieDescription\">�� ����, �Ź����� �Ա��ϴ� ¥���� ���� �׼� ��ȭ!</p>" + System.lineSeparator()+
        			"<span class=\"movieRate\">���� 4.3 - ���� 240��</span>" + System.lineSeparator()+"</div>" );
        }
        %>
    </section>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <p>dss</p>
</body>
</html>