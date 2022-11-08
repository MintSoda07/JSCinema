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
	Connection con = null;
	PreparedStatement ps = null;   
	
	String title=request.getParameter("title");
	String price=request.getParameter("price");
	String info=request.getParameter("infomation");
	String img=request.getParameter("file");
	byte[] IMG_byteData = img.getBytes("UTF-8");

	if(title==null||price==null||info==null||img==null){
		request.setAttribute("ERR", new String("1"));
		pageContext.forward("/Upload_ErrorPages/UploadFailed.jsp");
	}else if(!img.endsWith("jpg")&&!img.endsWith("png")){
		request.setAttribute("ERR", new String("2"));
		pageContext.forward("/Upload_ErrorPages/UploadFailed.jsp");
	}else{   
		     try {
		      Class.forName("oracle.jdbc.driver.OracleDriver");
		      String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe"; 
		      con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
		      String sql = "INSERT INTO SNACK(NAME,PRICE,INFO,IMG,TOTAL_SALES) VALUES(?,?,?,?,?)" ;
				
		      Blob img_blobData = con.createBlob();
		      ps = con.prepareStatement(sql);
		      ps.setString(1, title);
		      ps.setInt(2, Integer.parseInt(price));
		      ps.setString(3, info);
		      ps.setBlob(4, img_blobData); 
		      ps.setInt(5, 0); 
		      int r = ps.executeUpdate();
		      pageContext.forward("index.jsp");
			  } catch (Exception e) {
				   throw e;
		 	  } finally {
		  	
		  	  if (ps != null) try { ps.close(); } catch (Exception e) {}  
		  	  if (con != null) try { con.close(); } catch (Exception e) {}
		  }
	
	}
		%>
		
</body>
</html>