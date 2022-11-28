<%@page import="java.util.ArrayList"%>
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
	String[] ColCode={"A","B","C","D","E","F"};
	
	try {
	  Class.forName("oracle.jdbc.driver.OracleDriver");
      String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe"; 
      con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
      String sql = "INSERT INTO MOVIE_SEAT(MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) VALUES(?,?,?,?,?)" ;
      String[] time={"9:50","10:30","12:25","13:05","13:45","14:15","15:00","15:40","16:20","16:50","17:35","18:55","19:25","20:10","21:00"};
      String TCode=request.getParameter("code");
      
      for(int i=0;i<15;i++){
    	  ps = con.prepareStatement(sql);
    	  ps.setString(1, request.getParameter("title"));
		  ps.setString(2, request.getParameter("date"));
		  ps.setString(5,time[i]);
    	  char code=TCode.charAt(i);
      	  if(code=='1'){
      		for(int col=0;col<6;col++){
      			ps.setString(3, ColCode[col]);
      		  	for(int row=1;row<10;row++){
      				ps.setString(4, row+"");
      		        int r = ps.executeUpdate();
      		  	}
      	 	 }
      	  }
      }
	  
		      response.sendRedirect("movieTimeSetting.jsp?img="+request.getParameter("movie"));
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