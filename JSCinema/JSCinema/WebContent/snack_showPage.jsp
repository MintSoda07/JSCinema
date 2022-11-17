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
<title>스낵</title>
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
<div class="add_page" style="margin-top: 25px; padding-top:35px; padding-bottom:35px; background-color: #121212;">
 	
    <div class="add_img"> 
    <img alt="" src="<%=default_Path+path%>" id="img_preview" style="border: 5px double white;">
    </div>   
    
    <div class="add_items" style="margin-left:30px;">
    	<div class="inputbox" style="font-size: 50px; margin-top:0px; color:white;" margin-bottom:5px;><p id="snack_title" style="margin-top:0px;"><%=name%></p></div><hr>
    	<div class="inputbox" style="font-size: 30px; margin-top:2px; color:yellow;"><p id="snack_price"></p><%=price+"\\"%></div>
    	<div class="inputbox" style="font-size: 20px; margin-top:15px; color:white;"><p id="snack_information" ><%=info%></p></div>
    </div>
   
    


</div>
 </div>
 </div>
</body>
</html>
</fmt:bundle>