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
<%
java.sql.Date sql_date=null;
String name="엣지 오브 투모로우"; //request.getParameter("name")
String mDate="1972-11-21";
String time="00:00";
String[] Date_list={};
String[] colCode={"A","B","C","D","E","F"};
String[] timeList={"9:50","10:30","12:25","13:05","13:45","14:15","15:00","15:40","16:20","16:50","17:35","18:55","19:25","20:10","21:00"};
Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;
String default_Path="http://localhost:3000/JSCinema/upload/";
try {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe"; 
 con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
 String sql = "SELECT MTIME,MDATE FROM MOVIE_SEAT WHERE MNAME=\'"+name+"\'";
 
 ps = con.prepareStatement(sql);
 rs = ps.executeQuery();
 while(rs.next()){
	 mDate=rs.getString("MDATE");
	 time=rs.getString("MTIME"); 
	 for(String str : timeList) {
		    if(str.equals(time)) {
		    }
	 } //미완성
 }
 
} catch (Exception e) {
	throw(e);
} finally {
}
if (rs != null)  try { rs.close(); } catch (Exception e) {}
if (ps != null) try { ps.close(); } catch (Exception e) {}  
if (con != null) try { con.close(); } catch (Exception e) {}
%>
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
	function doSubmit(){
		$('#data_form').submit();
	}
	
</script>
</head>
<body>
    <%@ include file="/headers/NavHeader.jsp" %>

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
            <%
            for(int i=0;i<15;i++){
            	out.print("<button id=\""+i+"\" class=\""+"UNABLE"+"\">"+timeList[i]+"</button>");
            }
            %>
            <script>
            var targetBtn=null;
            $(document).ready(function() {
        	    $(".btn_container button").on('click', function(event) {
        	    	if(targetBtn!=null){
        	    		targetBtn.css("background-color","#303030");
            	    	targetBtn.css("color","white");	
        	    	}
        	    	monthtxt=month;
        	    	targetBtn=$(event.target);
        	    	targetBtn.css("background-color","#c0c0c0");
        	    	targetBtn.css("color","yellow");
        			daytxt=day;
        			if(month<10){
        				monthtxt="0"+month;
        			}
        			if(day<10){
        				daytxt="0"+day;
        			}
        	    	txt=year+"-"+monthtxt+"-"+daytxt;
        	    	txt2=targetBtn.text();
        			$('#input_date').val(txt);
        	    	$('#input_time').val(txt2);
        	        event.preventDefault();
        	    });
        	});
            </script>
            </div>
        </div>
        <div>
        <form action="seatSelection.jsp" style="display: hidden;" id="data_form">
    	<input type="hidden" name="date" value="" id="input_date">
    	<input type="hidden" name="time" value="" id="input_time">
    	<input type="hidden" name="title" value="<%=name %>" id="title">
    	<span>어린이(12세 미만)</span><input type="number" name="child" value="0" id=child class="price">
    	<span>학생(12세 이상)</span><input type="number" name="student" value="0" id=student class="price">
    	<span>성인</span><input type="number" name="normal" value="0" id=normal class="price">
    </form>
    	<p id="price_value" style="color:yellow;font-szie:24px;"></p>
        </div>
       	
        </div>
        <div style="justify-content: flex; display: center; margin:40px;">
        </div>
        <div style="display: block; text-align: right; margin-right:50px"><button id="submit_btn" onclick="doSubmit()" value="결제" name="결제" style="text-align: right; width:140px; height: 30px; background: none; color: white; font-size: 18px;">결제하기 >
        </div>
        
    
</body>
</html>
</fmt:bundle>