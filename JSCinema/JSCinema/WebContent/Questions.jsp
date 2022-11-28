<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page import="java.util.Date.*" %>
<%@ include file="/headers/Language_header.jsp"  %>
<!DOCTYPE html>
<fmt:bundle basename="properties.JSCinema">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="style/Questions.css">
<script>
    function move_to_service_center() {
		location.href="service_center.jsp";
	}
</script>
</head>
<body>
<%@ include file="/headers/NavHeader.jsp" %>
<div style="font-size:40px; color:black; "><span style="margin-left:30px;">Q&A</span><hr></div>

    <div id="container">
    <div id="help">
        <div id="Questions">
            <input type="submit" id="submit" value="자주 하는 질문" onclick="move_to_service_center()">
        </div>
        <div id="Questions">
            <input type="submit" id="submit" value="자주 하는 질문" onclick="move_to_service_center()">
        </div>
        <div id="Questions">
            <input type="submit" id="submit" value="자주 하는 질문" onclick="move_to_service_center()">
        </div>
        <div id="Questions">
            <input type="submit" id="submit" value="자주 하는 질문" onclick="move_to_service_center()">
        </div>
        <div id="Questions">
            <input type="submit" id="submit" value="자주 하는 질문" onclick="move_to_service_center()">
        </div>
        <div id="Questions">
            <input type="submit" id="submit" value="자주 하는 질문" onclick="move_to_service_center()">
        </div>
        <div id="Questions">
            <input type="submit" id="submit" value="자주 하는 질문" onclick="move_to_service_center()">
        </div>
        <div id="Questions">
            <input type="submit" id="submit" value="자주 하는 질문" onclick="move_to_service_center()">
        </div>
        <div id="Questions">
            <input type="submit" id="submit" value="자주 하는 질문" onclick="move_to_service_center()">
        </div>
        <div id="Questions">
            <input type="submit" id="submit" value="자주 하는 질문" onclick="move_to_service_center()">
        </div>
    </div>
</body>
</html>
</fmt:bundle>