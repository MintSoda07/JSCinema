<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="java.util.Date.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ include file="/headers/Language_header.jsp"  %>
<!DOCTYPE html>
<fmt:bundle basename="properties.JSCinema">
<html>
<head>
<meta charset="EUC-KR">
<title><fmt:message key="title"/></title>
<link rel="stylesheet" href="style/Addition_page.css">
    <script src="script/jquery-3.6.1.js"></script>
</head>
<body style="background-color:  black;">
<div style="display: hidden;"id="txt"></div>
<%@ include file="/headers/NavHeader.jsp"  %>
<div class="content">
<div class="content_container">
<%
String name="err";
String info="err";
String path="";
java.sql.Date sql_date=null;


Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;
String default_Path="http://localhost:3000/JSCinema/upload/";
try {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe"; 
 con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
 String sql = "SELECT NAME,INFOMATION,OPEN_DATE,IMG_PATH FROM MOVIE WHERE IMG_PATH=\'"+request.getParameter("img")+"\'";

 ps = con.prepareStatement(sql);
 rs = ps.executeQuery();
 while(rs.next()){
	 name=rs.getString("NAME");
	 sql_date=rs.getDate("OPEN_DATE");
	 info=rs.getString("INFOMATION");
	 path=rs.getString("IMG_PATH");
 }
} catch (Exception e) {
	out.print(request.getParameter("img"));
	out.print(sql_date.toString());
} finally {
}
if (rs != null)  try { rs.close(); } catch (Exception e) {}
if (ps != null) try { ps.close(); } catch (Exception e) {}  
if (con != null) try { con.close(); } catch (Exception e) {}
%>
<div class="add_page" style="margin-top: 25px; padding-top:35px; padding-bottom:35px; background-color: #121212;">
 	
    <div class="add_img"> 
    <img alt="" src="<%=default_Path+path%>" id="img_preview" style="border: 5px double white;"><button id="ticket">예매하기</button>
    </div>   
    
    <div class="add_items" style="margin-left:30px;">
    	<div class="inputbox" style="font-size: 50px; margin-top:0px; color:white;" margin-bottom:0px;><p id="snack_title" style="margin-top:0px;"><%=name%></p></div>
    	<div class="inputbox" style="font-size: 30px; margin-top:0px; color:yellow;"><p id="snack_price"><%= (sql_date.toString()+"일 업로드") %></p></div>
    	<hr>
    	<div class="inputbox" style="font-size: 20px; margin-top:15px; color:white;"><p id="snack_information" ><%=info%></p></div>
    	
    </div>
   
    


</div>
 </div>
 </div>
</body>
</html>
</fmt:bundle>