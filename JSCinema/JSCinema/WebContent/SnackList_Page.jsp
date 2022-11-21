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

<%@ include file="/headers/Language_header.jsp"  %>
<!DOCTYPE html>
<fmt:bundle basename="properties.JSCinema">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="style/ItemList_Page.css?ver=2" type="text/css" >
<script src="script/jquery-3.6.1.js"></script>
<script>
	var is_remove_enabled=false;
	var is_edit_enabled=false;
	function move_to_info(clicked_id) {
		var url="snack_showPage.jsp?img="+clicked_id;
		if(is_remove_enabled){
			var input = confirm('삭제하시겠습니까?')
			if(input==true){
				location.href=("snack_RemoveRedirection.jsp?img="+clicked_id);	
			}else{
				return;
			}
			
		}else if(is_edit_enabled){
			var input = confirm('수정하시겠습니까?')
			if(input==true){
				location.href=("snack_editPage.jsp?img="+clicked_id);	
			}else{
				return;
			}
		}else{
			location.href=url;
		}
	}
	function add() {
	
		location.href="snack_addPage.jsp";
	}

	$(document).ready(function () 
			{
		
			    $('.movieChart_listItem').hover(function(){
			    	$(this).find('#wrapText').css('opacity','100%');
			    }, function() {
			    	$(this).find('#wrapText').css('opacity','0%');
			    });
				$("#item_remove").click(function(){
					if(!is_edit_enabled){
						if(!is_remove_enabled){
						$('.movieChart_listItem').find('#wrapText').text("아이템 삭제");
						$('.movieChart_listItem').find('#wrapText').css('color','red');
						$('.removeItem').css('display','block');
						$('#item_remove').text("삭제 취소");
						$('#item_remove').css("yellow"); is_remove_enabled=true;
					}else{
						$('.movieChart_listItem').find('#wrapText').text("자세히 보기");
						$('.movieChart_listItem').find('#wrapText').css('color','white');
						$('.removeItem').css('display','none');
						$('#item_remove').text("항목 삭제");
						$('#item_remove').css("white"); is_remove_enabled=false;
					}
					}else{
						alert("수정 중에는 삭제할 수 없습니다.");
					}
					
				});
				$("#item_edit").click(function(){
					if(!is_remove_enabled){
						if(!is_edit_enabled){
							$('.movieChart_listItem').find('#wrapText').text("정보 수정");
							$('.movieChart_listItem').find('#wrapText').css('color','teal');
							$('.removeItem').css('border','teal 1px solid');
							$('.removeItem').css('color','teal');
							$('.removeItem').css('display','block');
							$('.removeItem').text("수정하기");
							$('#item_edit').text("편집 취소");
							$('#item_edit').css("yellow"); is_edit_enabled=true;
						}else{
							$('.movieChart_listItem').find('#wrapText').text("자세히 보기");
							$('.movieChart_listItem').find('#wrapText').css('color','white');
							$('.removeItem').css('color','red');
							$('.removeItem').css('border','red 1px solid');
							$('.removeItem').css('display','none');
							$('.removeItem').text("삭제하기");
							$('#item_edit').text("스낵 관리");
							$('#item_edit').css("white"); is_edit_enabled=false;
						}
					}else{
						alert("삭제 중에는 수정할 수 없습니다.");
					}
					
				});
			});
</script>
</head>
<body>

<%@ include file="/headers/NavHeader.jsp" %>
<div style="font-size:40px; color:white; "><span style="margin-left:30px;">스낵</span><hr></div>
<div class="list_title" style="background:black;">
<%
try{
	
	if(session.getAttribute("Manager").equals("Y")){// 삭제, 관리기능 추가요망
		out.print("<div id=\"item_remove\">항목 삭제</div><div id=\"item_edit\">스낵 관리</div><div id=\"item_add\" onclick=\"add()\">항목 추가</div>");
		}
}catch(Exception e){
	
}

%>
</div>
<div class="contents_List">

<%
String moveURL="move_to_info(this.id)";
Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;
String default_Path="http://localhost:3000/JSCinema/upload/";
try {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 String url = "jdbc:oracle:thin:@192.168.142.10:1521:xe"; 
 con = DriverManager.getConnection(url, "JSC", "wpdldptmtlspak");
 String sql = "SELECT NAME,PRICE,IMG_PATH FROM SNACK ORDER BY NAME";

 ps = con.prepareStatement(sql);
 rs = ps.executeQuery();
while(rs.next()){
	String title=rs.getString("NAME"); 
	int price=rs.getInt("PRICE");
	String realPath=rs.getString("IMG_PATH");
	out.println("<div class=\"movieChart_listItem\" id=\""+realPath+"\" onclick=\""+moveURL+"\"><div id=\"wrapText\">자세히 보기</div>" + System.lineSeparator()+"<img src=\"" + default_Path.trim()+realPath.trim()+ "\" alt=\"IMG_NOT_FOUND\" class=\"movieImg\"/>"+ System.lineSeparator()+
			"<p class=\"movieName\" style=\"font-size:30px;\">"+title+"</p>" + System.lineSeparator()+
			"<p class=\"price\">"+price+"\\</p>" + System.lineSeparator()+
			"<div class=\"removeItem\">삭제하기</div>"+"</div>" ); //"<span class=\"movieRate\">평점 4.3 - 리뷰 240개</span>" + System.lineSeparator()+
}
} catch (Exception e) {
	out.print(e);
} finally {

if (rs != null)  try { rs.close(); } catch (Exception e) {}
if (ps != null) try { ps.close(); } catch (Exception e) {}  
if (con != null) try { con.close(); } catch (Exception e) {}
}
%>
</div>
</body>
</html>
</fmt:bundle>