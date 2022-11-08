<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ include file="/headers/Language_header.jsp"  %>
<fmt:bundle basename="properties.JSCinema">
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/headers/NavHeader.jsp" %>
<script>
	function photo(event){
		var reader = new FileReader();
		
		reader.onload = function(event){
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			document.querySelector("div#image_container").appendChild(img);
		};
		
		reader.readAsDataURL(event.target.files[0]);
	}
	</script>
<form>
<p>제목 : <input type="text"></p>
<p>내용</p>
 <textarea rows="5" cols="40" name="content" placeho></textarea>
<p>이미지 <input type="file" name="image" id="image" onchange="photo(event);"></p>
<input type="submit" value="업로드">
<div id="image_container"></div>
</form>					

</body>
</html>
</fmt:bundle>