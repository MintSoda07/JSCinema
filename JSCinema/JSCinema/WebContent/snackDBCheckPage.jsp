<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
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
	String realFolder = "C:\\Users\\USER\\Documents\\GitHub\\JSCinema\\JSCinema\\JSCinema\\WebContent\\upload";

	String saveFolder = "fileSave"; // out폴더에 fileSave 폴더 생성
	String encType = "utf-8";
	int maxSize = 5*1024*1024; // 최대 업로드 5mb
	ServletContext context = request.getServletContext();
	MultipartRequest multi = null;
	
	multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	String title=multi.getParameter("title");
	String price=multi.getParameter("price");
	String info=multi.getParameter("infomation"); // 값 DB로 넘기기 
	   
    Enumeration files = multi.getFileNames();
    String name = (String) files.nextElement();
    
    String file_name = multi.getFilesystemName(name);
	int numPrice =  Integer.valueOf(price).intValue();
	
	String file_path="C:\\Users\\USER\\Documents\\GitHub\\JSCinema\\JSCinema\\JSCinema\\WebContent\\upload";
	DiskFileUpload upload = new DiskFileUpload();
	List items = upload.parseRequest(request);
	Iterator params = items.iterator();
	FileItem fileItem=null;
	while(params.hasNext()){
		fileItem  =(FileItem)params.next();
		file_name=fileItem.getName();
		if(!fileItem.isFormField()){
			fileName=fileItem.getName();
			fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
			File file= new File(file_path+"/"+fileName);
			try{
				fileItem.write(file);
			}catch(Exception e){
				
			}
			
		}
		
	}
	
		     try {
		      Class.forName("oracle.jdbc.driver.OracleDriver");
		      String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe"; 
		      con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
		      String sql = "INSERT INTO SNACK(NAME,PRICE,INFO,IMG_PATH,TOTAL_SALES) VALUES(?,?,?,?,?)" ;
				
		      Blob img_blobData = con.createBlob();
		      ps = con.prepareStatement(sql);
		      ps.setString(1, title);
		      ps.setInt(2, numPrice);
		      ps.setString(3, info);
		      ps.setString(4, file_name);
		      ps.setInt(5, 0); 
		      int r = ps.executeUpdate();
		      response.sendRedirect("SnackList_Page.jsp");
			  return;
			  } catch (Exception e) {
				  out.print(e.getClass().getName());
				  out.print(title+","+numPrice+","+info+","+file_name);
		 	  } finally {
		  	
		  	  if (ps != null) try { ps.close(); } catch (Exception e) {}  
		  	  if (con != null) try { con.close(); } catch (Exception e) {}
	
	}
		%>
		
</body>
</html>