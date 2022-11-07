<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="javax.servlet.jsp.jstl.core.Config" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<!DOCTYPE html>
	<%!
	String language;
%>
<% response.setContentType("text/html"); %>
<fmt:setLocale value="ko" scope="session"/>
<%
Cookie[] cookieList=request.getCookies();
String cookieName = "lang";
String cookieValue = "";

if(cookieList!=null){
	boolean valueFound=false;
    for(int i=0;i<cookieList.length;i++){
        if(cookieList[i].getName().equals(cookieName)){
        	valueFound=true;
            cookieName = cookieList[i].getName();
            cookieValue = cookieList[i].getValue();
        }
    }
}
	try{
		language=cookieValue;
		switch(language){
		case("ko"):
			Config.set( session, Config.FMT_LOCALE, new java.util.Locale("ko","KR") );
			break;
		case("en"):
			Config.set( session, Config.FMT_LOCALE, new java.util.Locale("en","US") );
			break;
		case("jp"):
			Config.set( session, Config.FMT_LOCALE, new java.util.Locale("ja","JP") );
			break;
		case("cn"):
			Config.set( session, Config.FMT_LOCALE, new java.util.Locale("cn","CN") );
			break;
		case("ru"):
			Config.set( session, Config.FMT_LOCALE, new java.util.Locale("ru","RU") );
			break;
		case("es"):
			Config.set( session, Config.FMT_LOCALE, new java.util.Locale("es","ES") );
			break;
		}
	}catch(Exception e){
		language="ko";
	}finally{
		
	}
%>


<html>
<head>
<meta charset="UTF-8">
</head>
<body>

</body>
</html>