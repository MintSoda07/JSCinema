<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="style/watch.css">
</head>
<body>
     <h1>영화 제목</h1>
    <div id="container">
        <div id="item">년도
            <div id="year">2022</div>
            <div id="month">월</div>
            <input type="date">
            <div id="date">2022년 1월 22일</div>
        </div>
        <div id="item">상영시간
            <div><button>9:50</button><button>10:30</button><button>12:25</button><button>13:05</button><button>13:45</button>
                <button>14:15</button><button>15:00</button><button>15:40</button><button>16:20</button><button>16:50</button>
                <button>17:35</button><button>18:55</button><button>19:25</button><button>20:10</button><button>21:00</button></div>
                <div id ="time">18시 55분 </div>
        </div>
        
        <div id="item">예매 인원
            <div><div id="price"> <p>어린이 7,000원</p>
                <input type="text"><br>
                <p>청소년 10,000원</p>
                <input type="text"><br>
                <p>성인 15,000원</p>
                <input type="text"><br>
                <div id="person">총 5명 65,000원</div>
            </div>
        </div>
        </div> 
    </div>
</body>
</html>