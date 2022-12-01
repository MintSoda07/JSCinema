<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@ page import="java.sql.*"%>
<%@ include file="/headers/Language_header.jsp"  %>
<!DOCTYPE html>
<html lang="ko">
<fmt:bundle basename="properties.JSCinema">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><fmt:message key="title"/></title>
    <link rel="stylesheet" href="style/mainpage.css?ver=3" type="text/css" >
    <script src="script/mainpage_Script.js"></script>
    <script src="script/jquery-3.6.1.js"></script>
</head>
<body>
    <%@ include file="/headers/NavHeader.jsp" %>
    <section class="contents">
        <!-- 아래의 내용은 스크립트 불러오기 실패 시 표시될 내용임 (예시)-->
        <%
        String moveURL="move_to_info(this.id)";
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String default_Path="http://localhost:3000/JSCinema/upload/";
        try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe"; 
         con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
         String sql = "SELECT NAME,INFOMATION,OPEN_DATE,SIMPLE_INFO,IMG_PATH FROM MOVIE ORDER BY TICKET_SOLD DESC";

         ps = con.prepareStatement(sql);
         rs = ps.executeQuery();int count=0;
        while(rs.next()){
        	String title=rs.getString("NAME"); 
        	String infomation=rs.getString("INFOMATION");
        	String simple_info=rs.getString("SIMPLE_INFO");
        	java.sql.Date sql_date=rs.getDate("OPEN_DATE");
        	String realPath=rs.getString("IMG_PATH");
        	
        	if(count<6){
        	out.println("<div class=\"movieChart\" id=\""+realPath+"\" id=\"Chart1\" onclick=\""+moveURL+"\">" + System.lineSeparator()+"<img src=\"" + default_Path.trim()+realPath.trim()+ "\" alt=\"IMG_NOT_FOUND\" class=\"movieImg\"/>"+ System.lineSeparator()+
        			"<p class=\"movieName\" style=\"font-size:30px;\">"+title+"</p>" + System.lineSeparator()+
        			"<p class=\"movieDescription\">"+simple_info+"</p>" + System.lineSeparator()+
        			"<span class=\"movieRate\">평점 4.3 - 리뷰 240개</span>" + System.lineSeparator()+
        			"<div class=\"first_one\"></div>"); //
        	if(count==0){
        		out.println("<div class=\"first_one\">예매율 1위</div></div>");
        	}else{
    			out.println("</div>");
        	}
        	count++;
        }
        }
        } catch (Exception e) {
        } finally {

        if (rs != null)  try { rs.close(); } catch (Exception e) {}
        if (ps != null) try { ps.close(); } catch (Exception e) {}  
        if (con != null) try { con.close(); } catch (Exception e) {}
        }

        %>
    </section>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <p></p>
    </fmt:bundle>
</body>
</html>