<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ include file="/headers/Language_header.jsp"  %>
<!DOCTYPE html>
<fmt:bundle basename="properties.JSCinema">
<html>
<head>
<meta charset="EUC-KR">
<title>영화 추가</title>
<link rel="stylesheet" href="style/Addition_page.css">
    <script src="script/jquery-3.6.1.js"></script>
<script>
	function photo(event){
		var reader = new FileReader();
		
		reader.onload = function(event){
			var img = document.querySelector("#img_preview");
			img.setAttribute("src", event.target.result);
		};
		reader.readAsDataURL(event.target.files[0]);
	}
	</script>
</head>
<body>
<%@ include file="/headers/NavHeader.jsp"  %>
<form action="movieDBCheckPage.jsp" method="post" enctype="multipart/form-data">
<div class="content_container">

<h1><fmt:message key="title"/></h1>
<div class="add_page">
 	
    <div class="add_img"> 
    <img alt="" src="" id="img_preview">
    <div id="file_input"><input type="file" id="file" name="file" value="영화 이미지 업로드" onchange="photo(event);" required="required" ></div>
    </div>   
    
    <div class="add_items" style="margin-left:30px;">
    
    <div class="inputbox"><input name="title" type="text" id="title" placeholder="영화의 이름을 입력해주세요." required="required"></div>
    <div class="inputbox" style="width:100%;"><input name="simple_info" type="text" id="price" placeholder="간단한 소개를 입력해주세요." required="required"></div>
    <div class="inputbox"><textarea name="infomation" id="information" cols="140" rows="14" placeholder="영화 상세정보를 입력해주세요." required="required" ></textarea></div>
    <div class="inputbox" style="width:50%; text-align:left;">
	<span style="color:gray; font-size:18px;">장르 분류 :</span><select style="color:REd; font-size:18px;" name="genre">
	<option value="액션" style="color:black; font-weight:bold;">액션</option>
      <option value="스릴러" style="color:black; font-weight:bold;">스릴러</option>
      <option value="호러" style="color:black; font-weight:bold;">호러</option>
      <option value="멜로" style="color:black; font-weight:bold;">멜로</option>
      <option value="코미디" style="color:black; font-weight:bold;">코미디</option>
      <option value="사극" style="color:black; font-weight:bold;">사극</option>
      <option value="판타지" style="color:black; font-weight:bold;">판타지</option>
      <option value="뮤지컬" style="color:black; font-weight:bold;">뮤지컬</option>
      </select>
    </div>
    <div style="text-align:right;">
    <input type="submit" id="submit" value="영화 정보 업로드"></div>
    </div>
   
    


</div>
 </div>
 </form>
</body>
</html>
</fmt:bundle>