<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=], initial-scale=1.0">
    <link rel="stylesheet" href="style/purchase_Page.css">
    <title>���� â</title>
</head>
<body>
    <div class="Personal_Info">
        <div class="Personal_Info_Container"><span>�̸�:</span><div id="inputbox"><input type="text" name="name" size="50"></div></div>
        <div class="Personal_Info_Container"><span>�ֹι�ȣ:</span><div id="inputbox"><input type="text" name="num" size="20"><input type="text" name="num" size="25"></div></div>
        <div class="Personal_Info_Container"><span>��ȭ��ȣ:</span><div id="inputbox"><input type="text" name="number" size="10">-<input type="text" name="number" size="14">-<input type="text" name="number" size="14"></div></div>
        <br>
        <div class="Personal_Info_Container"><span>ī��ȸ��:</span><div id="inputbox"><input type="text" name="cardcompany" size="50"></div></div>
        <div class="Personal_Info_Container"><span>ī���ȣ:</span><div id="inputbox"><input type="text" name="cardnum" size="8">-<input type="text" name="cardnum" size="8">-<input type="text" name="cardnum" size="8">-<input type="text" name="cardnum" size="8"></div></div>
    </div>
    <hr>
    <div class="cash" style="display: flex; justify-content: center;">
        <span>�ݾ�:</span> <span>0\</span>
    </div>
    <hr>
    <div class="Bottom_Tab">
        <div id="Agree">
            <div class="Agree_Tab_Container"><span>��� ��ü����</span><div><input type="checkbox" value="num"></div></div>
            <div class="Agree_Tab_Container"><span>�������� ���� �� �̿�</span><div><input type="checkbox" name="num1" value="num1"></div></div>
            <div class="Agree_Tab_Container"><span>���ڱ������� �̿���</span><div><input type="checkbox" name="num2" value="num2"></div></div>
            <div class="Agree_Tab_Container"><span>JSCinemaȸ�� �̿���</span><div><input type="checkbox" name="num3" value="num3"></div></div>
            </div>

            <div class="Submit_Btn_Container">
                <div class="Blank"></div>
                <button id="purchase" >����</button>
            </div>
    </div>

    
    

</body>
</html>