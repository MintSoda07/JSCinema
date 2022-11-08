<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="style/addmovie.css">
</head>
<body>
 <%@ include file="/headers/NavHeader.jsp" %>
  <h1>새로운 스낵 추가 중</h1>
    <div> 
    <img alt="" src="">
    <input type="file" id="file" value="스낵 이미지 업로드">
    </div>    
   
    <input type="text" id="title" placeholder="이름을 입력하세요">
    <input type="text" id="price" placeholder="가격을 입력하세요">
    <textarea id="information" cols="40" rows="10"placeholder="상세정보를 입력해주세요"></textarea>

    <input type="button" id="submit"value="확인">


</body>
</html>