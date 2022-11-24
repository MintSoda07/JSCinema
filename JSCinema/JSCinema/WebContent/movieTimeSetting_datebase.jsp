<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date.*" %>
<%@ page import="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ include file="/headers/Language_header.jsp"  %>
<fmt:bundle basename="properties.JSCinema">
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title><fmt:message key="title"/></title>
</head>
<body>
<% 
	Connection con = null;
	PreparedStatement ps = null;   
  try {
		      Class.forName("oracle.jdbc.driver.OracleDriver");
		      String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe"; 
		      con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
		      String sql = "INSERT INTO MOVIE_TIME(MNAME,MDATE,MTIME) VALUES(?,?,?)" ;
				
		      ps = con.prepareStatement(sql);
		      ps.setString(1, request.getParameter("title"));
		      ps.setString(2, request.getParameter("input_date"));
		      ps.setString(3, request.getParameter("input_code"));
		      int r = ps.executeUpdate();
		      response.sendRedirect("movieTimeSetting.jsp");
		      if(true){
				  return;		    	  
		      }
	
			  } catch (Exception e) {	
				  throw(e);
				  //response.sendRedirect("movieTimeSetting.jsp?alert=true");
		 	  } finally {
		  	
		  	  if (ps != null) try { ps.close(); } catch (Exception e) {}  
		  	  if (con != null) try { con.close(); } catch (Exception e) {}
	
	}
		%>
</body>
</html>
</fmt:bundle>