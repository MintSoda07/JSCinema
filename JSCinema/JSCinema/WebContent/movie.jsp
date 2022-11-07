<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="style/movie.css">
</head>
<body>
 <div id="movie"></div>
    <label for="movierating">영화 평점</label>
    <textarea id="movierating" cols="40" rows="10"placeholder=""></textarea>
    <label for="information">영화 상세정보</label>
    <textarea id="information" cols="40" rows="10"placeholder=""></textarea>
    <input type="button" id="write" value="(예매자 전용) 평점 작성하기">
    <div></div>
    <input type="button" id="ticket" value="예매하기">

</body>
</html>