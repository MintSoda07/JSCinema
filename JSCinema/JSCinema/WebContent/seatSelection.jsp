'<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ include file="/headers/Language_header.jsp"  %>

<% response.setContentType("text/html"); %>
<fmt:bundle basename="properties.JSCinema">
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>좌석배치도</title>
<link rel="stylesheet" href="style/seatSelection.css?ver=3">
<script src="script/jquery-3.6.1.js"></script>
<script>
var act_btns=[];
var person=<%
int a=0,b=0,c=0;
try{
	a=Integer.parseInt(request.getParameter("child"));
}catch(Exception e){
	a=0;
}
try{
	b=Integer.parseInt(request.getParameter("student"));
}catch(Exception e){
	b=0;
}
try{
	c=Integer.parseInt(request.getParameter("normal"));
}catch(Exception e){
	c=0;
}
out.print(a+b+c);
%>;
function btn_clicked(btn_id){
	if(person>act_btns.length){
		if(act_btns.indexOf(btn_id)==-1){
			act_btns.push(btn_id);
			$('#'+btn_id).css("background-color","#c0c0c0");
			$('#'+btn_id).css("color","yellow");
		}else{
			act_btns.splice(act_btns.indexOf(btn_id),1);
			$('#'+btn_id).css("background-color","gray");
			$('#'+btn_id).css("color","white");
		}
	}else{
		if(act_btns.indexOf(btn_id)!=-1){
			act_btns.splice(act_btns.indexOf(btn_id),1);
			$('#'+btn_id).css("background-color","gray");
			$('#'+btn_id).css("color","white");
		}else{
			alert("더 이상 좌석을 선택할 수 없습니다. [최대 "+person+"명]")
		}
	}
	
} 
window.name = "SeatForm";
function doSubmit(){
	$("#seat_data").text(act_btns);
	$("#data_form").submit();
}
</script>
</head>
<body>
    <div id="seat"><h1>좌석배치도</h1></div><hr>
    <div id="screen">스크린</div>
    <table border="1">
       <%
       String[] colCode={"A","B","C","D","E","F"};
       	for(int col=0;col<6;col++){
       		out.println("<tr>");
       		for(int row=0;row<9;row++){
       			out.print("<td><button onclick=\"btn_clicked(this.id)\" id="+(colCode[col]+row)+">"+(colCode[col]+row)+"</button></td>");
       		}
       		out.println("</tr>");
       	}
       %>
        

    </table>
    <div style="display: block; text-align: right; margin-right:50px"><button id="submit_btn" onclick="doSubmit()" value="결제" name="결제" style="text-align: right; width:140px; height: 30px; background: none; color: white; font-size: 18px; cursor:pointer;">결제하기 >
    <form action="purchase_complete.jsp" style="display: hidden;" id="data_form">
    	<input type="hidden" name="date" value="<%=request.getParameter("date") %>"  id="input_date">
    	<input type="hidden" name="time" value="<%=request.getParameter("time") %>"  id="input_time">
    	<input type="hidden" name="title" value="<%=request.getParameter("title") %>" id="title">
    	<input type="hidden" name="child" value="<%=request.getParameter("child") %>"  id="child">
    	<input type="hidden" name="student" value="<%=request.getParameter("student") %>"  id="student">
    	<input type="hidden" name="normal" value="<%=request.getParameter("normal") %>"  id="normal">
    	<input type="hidden" name="seats" value=""  id="seat_data">
    </form>
</body>
</html>
</fmt:bundle>