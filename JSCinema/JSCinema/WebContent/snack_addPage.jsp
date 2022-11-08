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
<title>스낵 추가</title>
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
<form action="snackDBCheckPage.jsp">
<div class="content_container">

<h1>새로운 스낵 추가 중</h1>
<div class="add_page">
 	
    <div class="add_img"> 
    <img alt="" src="" id="img_preview">
    <div id="file_input"><input type="file" id="file" name="file" value="스낵 이미지 업로드" onchange="photo(event);" required="required" ></div>
    </div>   
    
    <div class="add_items" style="margin-left:30px;">
    
    <div class="inputbox"><input name="title" type="text" id="title" placeholder="스낵의 이름을 입력해주세요." required="required"></div>
    <div class="inputbox"><input name="price" type="text" id="price" placeholder="스낵의 가격을 입력해주세요." required="required"></div>
    <div class="inputbox"><textarea name="infomation" id="information" cols="140" rows="14" placeholder="스낵 상세정보를 입력해주세요." required="required" ></textarea></div>

    <div style="text-align:right;"><input type="submit" id="submit" value="확인"></div>
    </div>
   
    


</div>
 </div>
 </form>
</body>
</html>
</fmt:bundle>