<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ include file="/headers/Language_header.jsp"  %>
<!DOCTYPE html>
<fmt:bundle basename="properties.JSCinema">
<html>
<head>
<meta charset="EUC-KR"> <!--  아직 정상적으로 동작하지 않음. snackDBCheckPage_Modified 수정 필요. -->
<title><fmt:message key="title"/></title>
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
<%
String name="err";
int price=0;
String info="err";
String path="";


Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;
String default_Path="http://localhost:3000/JSCinema/upload/";
try {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe"; 
 con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
 String sql = "SELECT NAME,PRICE,INFO,IMG_PATH FROM SNACK WHERE IMG_PATH=\'"+request.getParameter("img")+"\'";

 ps = con.prepareStatement(sql);
 rs = ps.executeQuery();
 while(rs.next()){
	 name=rs.getString("NAME");
	 price=rs.getInt("PRICE");
	 info=rs.getString("INFO");
	 path=rs.getString("IMG_PATH");
 }
} catch (Exception e) {
	out.print(e);
} finally {
}
if (rs != null)  try { rs.close(); } catch (Exception e) {}
if (ps != null) try { ps.close(); } catch (Exception e) {}  
if (con != null) try { con.close(); } catch (Exception e) {}
%>
<form action="snackDBCheckPage_Modified.jsp" method="post" enctype="multipart/form-data">
<div class="content_container">

<h1>새로운 스낵 추가 중</h1>
<div class="add_page">
 	
    <div class="add_img"> 
    <img alt="" src="<%=default_Path+request.getParameter("img") %>" id="img_preview">
    <div id="file_input"><input type="file" id="file" name="file" value="스낵 이미지 업로드" onchange="photo(event);" required="required" ></div>
    </div>   
    
    <div class="add_items" style="margin-left:30px;">
    <input type="hidden" name="original_path" value="<%=request.getParameter("img")%>"/>
    <div class="inputbox"><input name="title" type="text" id="title" value="<%=name%>" required="required"></div>
    <div class="inputbox"><input name="price" type="number" id="price" value="<%=price %>" required="required"></div>
    <div class="inputbox"><textarea name="infomation" id="information" cols="140" rows="14" required="required" ><%=info%></textarea></div>
    <div style="text-align:right;">
    <input type="submit" id="submit" value="업데이트"></div>
    </div>
   
    


</div>
 </div>
 </form>
</body>
</html>
</fmt:bundle>