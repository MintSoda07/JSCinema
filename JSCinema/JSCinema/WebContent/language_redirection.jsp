<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String language=request.getParameter("lang");
switch(language){
case "한국어":
	language="ko";
	break;
case "English":
	language="en";
	break;
case "日本語":
	language="jp";
	break;
case "中國語":
	language="cn";
	break;
case "Русский":
	language="ru";
	break;
case "español":
	language="es";
	break;
default:
	language="ko";
	break;
}

Cookie[] cookieList=request.getCookies();
String cookieName = "lang";
String cookieValue = "";
Cookie lang = new Cookie(cookieName, language);
if(cookieList!=null){
	boolean valueFound=false;
    for(int i=0;i<cookieList.length;i++){
        if(cookieList[i].getName().equals(cookieName)){
        	valueFound=true;
            cookieName = cookieList[i].getName();
            cookieValue = cookieList[i].getValue();
            cookieList[i].setMaxAge(0);
            response.addCookie(lang);
            
        
        }
    }
    if(!valueFound){
    	
    	lang.setMaxAge(60*60); 
    	response.addCookie(lang);
    }
}
	response.sendRedirect("index.jsp");
%>
</body>
</html>