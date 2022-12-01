<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe";
		con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
		String sql = "INSERT INTO TICKET(MOVIE_NAME,CUSTOMER_ID,CHILD,STUDENT,NORMAL,MOVIE_DATE,TIME_DATE) VALUES(?,?,?,?,?,?,?)";
		ps.setString(0, request.getParameter("title"));
		ps.setString(1, session.getAttribute("UserID").toString());
		ps.setInt(2,Integer.parseInt(request.getParameter("child")));
		ps.setInt(3,Integer.parseInt(request.getParameter("student")));
		ps.setInt(4,Integer.parseInt(request.getParameter("normal")));
		ps.setString(5,request.getParameter("date"));
		ps.setString(6,request.getParameter("seats"));
		ps = con.prepareStatement(sql);
		int r = ps.executeUpdate();
		response.sendRedirect("index.jsp");
		if(true){
			return;			
		}

	} catch (Exception e) {
		throw(e);
	} finally {
		if (ps != null)try {ps.close();} catch (Exception e) {}
		if (con != null)try {con.close();} catch (Exception e) {}
	}
%>
<input type="hidden" name="date" value="<%=request.getParameter("date") %>"  id="input_date">
    	<input type="hidden" name="time" value="<%=request.getParameter("time") %>"  id="input_time">
    	<input type="hidden" name="title" value="<%=request.getParameter("title") %>" id="title">
    	<input type="hidden" name="child" value="<%=request.getParameter("child") %>"  id="child">
    	<input type="hidden" name="student" value="<%=request.getParameter("student") %>"  id="student">
    	<input type="hidden" name="normal" value="<%=request.getParameter("normal") %>"  id="normal">
    	<input type="hidden" name="seats" value=""  id="seat_data">
</body>
</html>