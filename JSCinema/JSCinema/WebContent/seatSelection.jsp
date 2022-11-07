<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<link rel="stylesheet" href="style/seatSelection.css">
</head>
<body>
    <div id="seat">좌석배치도</div>
    <div id="screen">스크린</div>
    <table border="1">
       <tr>
        <td><button>A1</button></td><td><button>A2</button></td><td><button>A3</button></td><td><button>A4</button></td><td><button>A5</button></td><td><button>A6</button></td><td><button>A7</button></td><td><button>A8</button></td><td><button>A9</button></td>
       </tr>
       <tr>
        <td><button>B1</button></td><td><button>B2</button></td><td><button>B3</button></td><td><button>B4</button></td><td><button>B5</button></td><td><button>B6</button></td><td><button>B7</button></td><td><button>B8</button></td><td><button>B9</button></td>
       </tr>
       <tr>
        <td><button>C1</button></td><td><button>C2</button></td><td><button>C3</button></td><td><button>C4</button></td><td><button>C5</button></td><td><button>C6</button></td><td><button>C7</button></td><td><button>C8</button></td><td><button>C9</button></td>
       </tr>
       <tr>
        <td><button>D1</button></td><td><button>D2</button></td><td><button>D3</button></td><td><button>D4</button></td><td><button>D5</button></td><td><button>D6</button></td><td><button>D7</button></td><td><button>D8</button></td><td><button>D9</button></td>
       </tr>
       <tr>
        <td><button>E1</button></td><td><button>E2</button></td><td><button>E3</button></td><td><button>E4</button></td><td><button>E5</button></td><td><button>E6</button></td><td><button>E7</button></td><td><button>E8</button></td><td><button>E9</button></td>
       </tr>
       <tr>
        <td><button>F1</button></td><td><button>F2</button></td><td><button>F3</button></td><td><button>F4</button></td><td><button>F5</button></td><td><button>F6</button></td><td><button>F7</button></td><td><button>F8</button></td><td><button>F9</button></td>
       </tr>

    </table>
    
</body>
</html>
</fmt:bundle>