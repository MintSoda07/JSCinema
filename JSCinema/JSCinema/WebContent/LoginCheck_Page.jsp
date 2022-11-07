<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ include file="/headers/Language_header.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	boolean login_success=false;
	String ID=request.getParameter("ID");
	String PWD=request.getParameter("PWD");
	String return_msg="";
	if(ID==null || PWD == null){
		return_msg="로그인 정보가 정상적으로 전달되지 않았습니다.";
	}else if(ID.length()>20||ID.contains(" ")){
		return_msg="아이디는 길이가 20 이하여야 하고, 공백을 포함할 수 없습니다.";
	}else if(PWD.length()>20||PWD.contains(" ")){
		return_msg="아이디는 길이가 20 이하여야 하고, 공백을 포함할 수 없습니다.";
	}else{
		     Connection con = null;
		     PreparedStatement ps = null;
		     ResultSet rs = null;
		     try {
		      Class.forName("oracle.jdbc.driver.OracleDriver");
		      String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe"; 
		      con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
		      String sql = "SELECT * FROM CUSTOMER ORDER BY ID";
	
		      ps = con.prepareStatement(sql);
		      rs = ps.executeQuery();
			  /* rs.next();
		      while (rs.next()) {
		    	  if(rs.getString("ID")==ID && rs.getString("PWD")==PWD){
		    		  out.println("<h1>"+rs.getString("ID") + ", 그리고 , "+ rs.getString("PWD")+"<h1>");
		    		  login_success=true;
		    	  }
		     } */
		 } catch (Exception e) {
			 out.println("<h1>에러가 발생했습니다</h1>");
		     out.println(e.getClass().getName());
		     out.println(e.getMessage());
		 } finally {
		  if (rs != null)  try { rs.close(); } catch (Exception e) {}
		  if (ps != null) try { ps.close(); } catch (Exception e) {}  
		  if (con != null) try { con.close(); } catch (Exception e) {}
		  if(!login_success){
			  return_msg="아이디와 비밀번호가 일치하지 않습니다.";
		  }else{
			  pageContext.forward("index.jsp");
		  }
	
		}
	}
		%>
		<h1><%=return_msg %></h1>
</body>
</html>