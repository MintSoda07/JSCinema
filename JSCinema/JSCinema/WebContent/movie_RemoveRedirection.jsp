<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="java.io.*"%>
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
 String sql = "DELETE FROM MOVIE WHERE IMG_PATH='"+request.getParameter("img")+"'";

 ps = con.prepareStatement(sql);
 rs = ps.executeQuery();
 File f = new File("C:\\Users\\USER\\Documents\\GitHub\\JSCinema\\JSCinema\\JSCinema\\WebContent\\upload\\"+request.getParameter("img")); // 파일 객체생성
 if( f.exists()) f.delete();
 while (rs.next()){
	 
}
} catch (Exception e) {
	
} finally {
if (rs != null)  try { rs.close(); } catch (Exception e) {}
if (ps != null) try { ps.close(); } catch (Exception e) {}  
if (con != null) try { con.close(); } catch (Exception e) {}
}
response.sendRedirect("MovieList_Page.jsp");
%>
	
</body>
</html>