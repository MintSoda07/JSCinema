<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date.*" %>
<%@ page import="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ include file="/headers/Language_header.jsp"  %>
<fmt:bundle basename="properties.JSCinema">
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title><fmt:message key="title"/></title>
<link rel="stylesheet" href="style/watch.css">
<script src="script/jquery-3.6.1.js"></script>
<script>
	var today = new Date();   

	var year = today.getFullYear();
	var month = today.getMonth() + 1;
	var day = today.getDate();
	var month_days=(new Date(year, month, 0).getDate());
	function year_refresh(){
		$("#left_year").text((year-1)+"년");	$("#selected_year").text(year+"년");	$("#right_year").text((year+1)+"년");
	}
	function month_refresh(){
		if(month<=1){
			$("#left_month").text("12월");
		}else{
			$("#left_month").text((month-1)+"월");
		}
		$("#selected_month").text(month+"월");	
		if(month>=12){
			$("#right_month").text("1월");
		}else{
			$("#right_month").text((month+1)+"월");
		}
	}
	function day_refresh(){
		if(day<=1){
			$("#left_day").text(month_days+"일");
		}else{
			$("#left_day").text((day-1)+"일");
		}
		$("#selected_day").text(day+"일");	
		if(day>(month_days-1)){
			$("#right_day").text("1일");
		}else{
			$("#right_day").text((day+1)+"일");
		}
	}
	function refresh_all(){
		year_refresh();
		month_refresh();
		day_refresh();
		
		$("#date").text("선택된 날짜 : "+year+"년 "+month+"월 "+day+"일");
	}
	
	function year_click(side){
		if(side=="L"){
			year-=1;
		}else{
			year+=1;
		}
		refresh_all();
	}
	function month_click(side){
		if(side=="L"){
			if(month==1){
				month=12;	
			}else{
				month--;
			}		
		}else{
			if(month==12){
				month=1;	
			}else{
				month++;
			}
		}
		month_days=(new Date(year, month, 0).getDate());
		if(month_days<day){
			day=month_days;
		}
		
		refresh_all();
	}
	function day_click(side){
		if(side=="L"){
			if(day==1){
				day=month_days;	
			}else{
				day--;
			}	
		}else{
			if(day==month_days){
				day=1;	
			}else{
				day++;
			}
		}
		
		refresh_all();
	}
	window.onload = function(){
		if(<%=request.getParameter("alert")%>){
			alert("업로드 도중 오류가 발생했습니다.");
		}
		refresh_all()
	}
	var act_btns=[];
	for(var i=0;i<15;i++){
		act_btns.push("0");
	}
	var time_list = [];
	$(document).ready(function() {
	    $(".btn_container button").on('click', function(event) {
	    	var css_target=$(event.target);
	        if(time_list.indexOf(event.target.id)==-1){
	        	time_list.push(event.target.id);
	        	css_target.css("background-color","#c0c0c0");
	        	css_target.css("color","yellow");
	        	act_btns[event.target.id-1]="1";
	        }else{
	        	var time_val=time_list.splice(time_list.indexOf(event.target.id),1);
	        	css_target.css("background-color","#303030");
	        	css_target.css("color","white");
	        	act_btns[event.target.id-1]="0";
	        }
			refresh_str();
	        event.preventDefault();
	    });
	});
	var str="";
	function refresh_str(){
		str="";
		for(var i=0;i<15;i++){
			str=str+act_btns[i];
		}
	}
	function submit_btn_clicked(){
		monthtxt=month;
		daytxt=day;
		if(month<10){
			monthtxt="0"+month;
		}
		if(day<10){
			daytxt="0"+day;
		}
		txt=year+"-"+monthtxt+"-"+daytxt;
		$("#input_date").val(txt);
		$("#input_code").val(str);
		$("#data_form").submit();
	}
	function back_btn(){
		location.href="MovieList_Page.jsp";
	}
	
</script>
</head>
<body>
<%@ include file="/headers/NavHeader.jsp" %>
<%
String name="err";
String info="err";
String path="";
java.sql.Date sql_date=null;


Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;
String default_Path="http://localhost:3000/JSCinema/upload/";
try {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe"; 
 con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
 String sql = "SELECT NAME,INFOMATION,OPEN_DATE,IMG_PATH FROM MOVIE WHERE IMG_PATH=\'"+request.getParameter("img")+"\'";

 ps = con.prepareStatement(sql);
 rs = ps.executeQuery();
 while(rs.next()){
	 name=rs.getString("NAME");
	 sql_date=rs.getDate("OPEN_DATE");
	 info=rs.getString("INFOMATION");
	 path=rs.getString("IMG_PATH");
 }
} catch (Exception e) {
} finally {
}
if (rs != null)  try { rs.close(); } catch (Exception e) {}
if (ps != null) try { ps.close(); } catch (Exception e) {}  
if (con != null) try { con.close(); } catch (Exception e) {}
%>
    <h1 id="movie_title"><%=name %></h1>
    <div id="container">
   
        <div id="item">
         <h1 class="item_head">상영일</h1><hr>
            <div class="date_items"><span class="preview_date" id="left_year" onclick="year_click('L')"></span><span class="selected_date" id="selected_year"></span><span class="preview_date" id="right_year" onclick="year_click('R')"></span></div>
			<br><div class="date_items"><span class="preview_date" id="left_month" onclick="month_click('L')"></span><span class="selected_date" id="selected_month"></span><span class="preview_date" id="right_month" onclick="month_click('R')"></span></div>
			<br><div class="date_items"><span class="preview_date" id="left_day" onclick="day_click('L')"></span><span class="selected_date" id="selected_day"></span><span class="preview_date" id="right_day" onclick="day_click('R')"></span></div>
            <br><hr><div id="date"></div>
        </div>
        <div id="item">
        <h1 class="item_head">상영시간</h1>
            <div class="btn_container">
            <button id="1">9:50</button><button id="2">10:30</button><button id="3">12:25</button><button id="4">13:05</button><button id="5">13:45</button>
                <button id="6">14:15</button><button id="7">15:00</button><button id="8">15:40</button><button id="9">16:20</button><button id="10">16:50</button>
                <button id="11">17:35</button><button id="12">18:55</button><button id="13">19:25</button><button id="14">20:10</button><button id="15">21:00</button>
            </div>
             <!-- <div id ="time">18시 55분 </div>  -->
        </div>
        
       	
        </div> 
        <div style="justify-content: flex; display: center; margin:40px;">
        <button id="submitBtn" onclick="submit_btn_clicked()" style="margin-left:40%;">업로드</button>
        <button id="submitBtn" onclick="back_btn()" style="margin-left:40%;">완료- 목록으로</button>
        </div>
        
    <form action="movieTimeSetting_datebase.jsp" style="display: hidden;" id="data_form">
    	<input type="hidden" name="date" value="" id="input_date">
    	<input type="hidden" name="code" value="" id="input_code">
    	<input type="hidden" name="movie" value="<%=name %>" id="title">
    	<input type="hidden" name="movie" value="<%=path %>" id="IMG_PATH">
    </form>
</body>
</html>
</fmt:bundle>