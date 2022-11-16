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
<div class="content">
<div class="content_container">
<%
String name="err";
int price=0;
String info="err";
String path="";
out.print("");

Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;
String default_Path="http://localhost:3000/JSCinema/upload/";
try {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe"; 
 con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
 String sql = "SELECT NAME,PRICE,INFO,IMG_PATH FROM SNACK WHERE IMG_PATH=\'"+request.getAttribute("img")+"\'";

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
<h1>스낵</h1>
<div class="add_page">
 	
    <div class="add_img"> 
    <img alt="" src="<%=default_Path+path%>" id="img_preview">
    </div>   
    
    <div class="add_items" style="margin-left:30px;">
    
    <div class="inputbox"><p id="title"><%=name%></p></div>
    <div class="inputbox"><p id="price"></p><%=price%></div>
    <div class="inputbox"><p id="information"><%=info%></p></textarea></div>
    </div>
   
    


</div>
 </div>
 </form>
</body>
</html>
</fmt:bundle>