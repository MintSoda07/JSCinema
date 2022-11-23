<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
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
	String ID = request.getParameter("ID");
	String NAME = request.getParameter("NAME");
	String PWD = request.getParameter("PASSWORD");
	String EMAIL = request.getParameter("EMAIL");
	String TEL = request.getParameter("tell");
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe";
		con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
		String sql = "INSERT INTO CUSTOMER(RRN,ID,PWD,NAME,TEL,POINT,EMAIL,MANAGER) VALUES(SIGNUP_SEQ.NEXTVAL,?,?,?,?,'0',?,'F')";

		Blob img_blobData = con.createBlob();
		ps = con.prepareStatement(sql);
		ps.setString(1, ID);
		ps.setString(2, PWD);
		ps.setString(3, NAME);
		ps.setString(4,TEL);
		ps.setString(5,EMAIL);
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
		
</body>
</html>