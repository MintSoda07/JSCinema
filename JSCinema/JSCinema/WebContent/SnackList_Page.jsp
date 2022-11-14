<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileOutputStream"%>
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
<title>Insert title here</title>
<!--  CSS 추가바람! -->
</head>
<body>
<div> 검색 창 들어올 공간</div>
<%@ include file="/headers/NavHeader.jsp" %>
<div>
<%
Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;
String default_Path="http://localhost:3000/JSCinema/upload/";
try {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe"; 
 con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
 String sql = "SELECT NAME,PRICE,IMG_PATH FROM SNACK ORDER BY NAME";

 ps = con.prepareStatement(sql);
 rs = ps.executeQuery();
for(int count=0;count<4 && rs.next();count++){
	String title=rs.getString("NAME");
	int price=rs.getInt("PRICE");
	String realPath=rs.getString("IMG_PATH");
	out.println("<div class=\"movieChart\" id=\"Chart1\">" + System.lineSeparator()+"<img src=\"" + default_Path.trim()+realPath.trim()+ "\" alt=\"IMG_NOT_FOUND\" class=\"movieImg\"/>"+ System.lineSeparator()+
			"<p class=\"movieName\" >"+title+"</p>" + System.lineSeparator()+
			"<p class=\"movieDescription\">"+price+"</p>");
/* 			"<span class=\"movieRate\">평점 4.3 - 리뷰 240개</span>" + System.lineSeparator()+"</div>" ); */
}
} catch (Exception e) {
	out.print(e);
} finally {

}
if (rs != null)  try { rs.close(); } catch (Exception e) {}
if (ps != null) try { ps.close(); } catch (Exception e) {}  
if (con != null) try { con.close(); } catch (Exception e) {}
%>
</div>
	
</body>
</html>
</fmt:bundle>