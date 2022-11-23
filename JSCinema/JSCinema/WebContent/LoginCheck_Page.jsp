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
	int return_msg=0;
	if(ID==null || PWD == null){
		return_msg=0;
	}else if(ID.contains(" ")){
		return_msg=1;
	}else if(PWD.length()>40||PWD.contains(" ")){
		return_msg=2;
	}else{
		     Connection con = null;
		     PreparedStatement ps = null;
		     ResultSet rs = null;
		     try {
		      Class.forName("oracle.jdbc.driver.OracleDriver");
		      String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe"; 
		      con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
		      String sql = "SELECT ID,EMAIL,PWD,NAME,MANAGER FROM CUSTOMER ORDER BY ID";
	
		      ps = con.prepareStatement(sql);
		      rs = ps.executeQuery();
		      while (rs.next()) {
		    	  if((rs.getString("ID").equals(ID)||rs.getString("EMAIL").equals(ID))&& rs.getString("PWD").equals(PWD)){
		    		  login_success=true;
		    		  session.setAttribute("UserID", ID);
		    		  session.setAttribute("UserPWD", PWD);
		    		  session.setAttribute("UserName", rs.getString("NAME"));
		    		  if(rs.getString("MANAGER").equals("Y")){
		    			  session.setAttribute("Manager", rs.getString("MANAGER"));
		    		  }
		    	  }
		     }
		 } catch (Exception e) {
		 } finally {
		  if (rs != null)  try { rs.close(); } catch (Exception e) {}
		  if (ps != null) try { ps.close(); } catch (Exception e) {}  
		  if (con != null) try { con.close(); } catch (Exception e) {}
		  if(!login_success){
			  return_msg=3;
		  }else{
			  response.sendRedirect("index.jsp");
			  return;
		  }
	
		}
	}
		%>
		<jsp:forward page="signIn.jsp">
		<jsp:param name="Err_Code" value="<%=return_msg%>"/>
		</jsp:forward>
		
		
</body>
</html>