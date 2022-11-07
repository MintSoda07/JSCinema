<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
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