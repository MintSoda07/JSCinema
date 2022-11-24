<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>>
<%@page import="java.util.Date.*" %>


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
	String simple_info=multi.getParameter("simple_info");
	String genre=multi.getParameter("genre");
	String info=multi.getParameter("infomation"); // 값 DB로 넘기기 
	java.util.Date utilDate = new java.util.Date();
	java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
	
    Enumeration files = multi.getFileNames();
    String name = (String) files.nextElement();
    
    String file_name = multi.getFilesystemName(name);
	
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
		      String sql = "INSERT INTO MOVIE(NAME,INFOMATION,OPEN_DATE,SIMPLE_INFO,IMG_PATH,GENRE) VALUES(?,?,?,?,?,?)" ;
				
		      Blob img_blobData = con.createBlob();
		      ps = con.prepareStatement(sql);
		      ps.setString(1, title);
		      ps.setString(2, info);
		      ps.setDate(3, sqlDate);
		      ps.setString(4, simple_info);
		      ps.setString(5, file_name); 
		      ps.setString(6, genre);
		      int r = ps.executeUpdate();
		      response.sendRedirect("movieTimeSetting.jsp?img="+file_name);
			  return;
			  } catch (Exception e) {
				  out.print(e.getClass().getName());
				  out.print(title+","+simple_info+","+info+","+file_name);
				  
		 	  } finally {
		  	
		  	  if (ps != null) try { ps.close(); } catch (Exception e) {}  
		  	  if (con != null) try { con.close(); } catch (Exception e) {}
	
	}
		%>
		
</body>
</html>