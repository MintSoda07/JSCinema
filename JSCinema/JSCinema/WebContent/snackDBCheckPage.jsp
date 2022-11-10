<%@page import="org.apache.commons.fileupload.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
<%!@SuppressWarnings("deprecation") 
	String fileName="";
%>
<%
	Connection con = null;
	PreparedStatement ps = null;   
	
	String title=request.getParameter("title");
	String price=request.getParameter("price");
	String info=request.getParameter("infomation"); // 값 DB로 넘기기 
	
	String file_path="C:\\Users\\USER\\AppData\\Roaming\\JSC\\Snacks";
	DiskFileUpload upload = new DiskFileUpload();
	List items = upload.parseRequest(request);
	Iterator params = items.iterator();
	while(params.hasNext()){
		FileItem fileItem  =(FileItem)params.next();
		if(!fileItem.isFormField()){
			fileName=fileItem.getName();
			fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
			File file= new File(file_path+"/"+fileName);
			fileItem.write(file);
		}
		
	}

	if(title==null||price==null||info==null){
		request.setAttribute("ERR", new String("1"));
		pageContext.forward("/Upload_ErrorPages/UploadFailed.jsp");
	}else{   
		     try {
		      Class.forName("oracle.jdbc.driver.OracleDriver");
		      String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe"; 
		      con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
		      String sql = "INSERT INTO SNACK(NAME,PRICE,INFO,IMG_PATH,TOTAL_SALES) VALUES(?,?,?,?,?)" ;
				
		      Blob img_blobData = con.createBlob();
		      ps = con.prepareStatement(sql);
		      ps.setString(1, title);
		      ps.setInt(2, Integer.parseInt(price));
		      ps.setString(3, info);
		      ps.setString(4, fileName);
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