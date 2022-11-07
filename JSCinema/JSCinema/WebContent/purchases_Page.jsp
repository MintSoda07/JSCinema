<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=], initial-scale=1.0">
    <link rel="stylesheet" href="style/purchase_Page.css">
    <title>결제 창</title>
</head>
<body>
    <div class="Personal_Info">
        <div class="Personal_Info_Container"><span>이름:</span><div id="inputbox"><input type="text" name="name" size="50"></div></div>
        <div class="Personal_Info_Container"><span>주민번호:</span><div id="inputbox"><input type="text" name="num" size="20"><input type="text" name="num" size="25"></div></div>
        <div class="Personal_Info_Container"><span>전화번호:</span><div id="inputbox"><input type="text" name="number" size="10">-<input type="text" name="number" size="14">-<input type="text" name="number" size="14"></div></div>
        <br>
        <div class="Personal_Info_Container"><span>카드회사:</span><div id="inputbox"><input type="text" name="cardcompany" size="50"></div></div>
        <div class="Personal_Info_Container"><span>카드번호:</span><div id="inputbox"><input type="text" name="cardnum" size="8">-<input type="text" name="cardnum" size="8">-<input type="text" name="cardnum" size="8">-<input type="text" name="cardnum" size="8"></div></div>
    </div>
    <hr>
    <div class="cash" style="display: flex; justify-content: center;">
        <span>금액:</span> <span>0\</span>
    </div>
    <hr>
    <div class="Bottom_Tab">
        <div id="Agree">
            <div class="Agree_Tab_Container"><span>약관 전체동의</span><div><input type="checkbox" value="num"></div></div>
            <div class="Agree_Tab_Container"><span>개인정보 수집 및 이용</span><div><input type="checkbox" name="num1" value="num1"></div></div>
            <div class="Agree_Tab_Container"><span>전자금융서비스 이용약관</span><div><input type="checkbox" name="num2" value="num2"></div></div>
            <div class="Agree_Tab_Container"><span>JSCinema회원 이용약관</span><div><input type="checkbox" name="num3" value="num3"></div></div>
            </div>

            <div class="Submit_Btn_Container">
                <div class="Blank"></div>
                <button id="purchase" >결제</button>
            </div>
    </div>

    
    

</body>
</html>