<%--
  Created by IntelliJ IDEA.
  User: Quang Minh
  Date: 27-Apr-23
  Time: 10:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>QR payment</title>
    <style>
        body {
            background-color: #ffffff;
        }
        h1 {
            position: relative;
            text-align: center;
            color: #353535;
            font-size: 50px;
            font-family: "Cormorant Garamond", serif;
        }

        p {
            font-family: 'Lato', sans-serif;
            font-weight: 300;
            text-align: center;
            font-size: 18px;
            color: #676767;
        }
        .frame {
            width: 90%;
            margin: 40px auto;
            text-align: center;
        }
        button {
            margin: 20px;
        }
        .custom-btn {
            width: 130px;
            height: 40px;
            color: #fff;
            border-radius: 5px;
            padding: 10px 25px;
            font-family: 'Lato', sans-serif;
            font-weight: 500;
            background: transparent;
            cursor: pointer;
            transition: all 0.3s ease;
            position: relative;
            display: inline-block;
            box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
            7px 7px 20px 0px rgba(0,0,0,.1),
            4px 4px 5px 0px rgba(0,0,0,.1);
            outline: none;
        }
        /* 9 */
        .btn-9 {
            border: none;
            transition: all 0.3s ease;
            overflow: hidden;
        }
        .btn-9:after {
            position: absolute;
            content: " ";
            z-index: -1;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: #1fd1f9;
            background-image: linear-gradient(315deg, #1fd1f9 0%, #b621fe 74%);
            transition: all 0.3s ease;
        }
        .btn-9:hover {
            background: transparent;
            box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
            -4px -4px 6px 0 rgba(116, 125, 136, .2),
            inset -4px -4px 6px 0 rgba(255,255,255,.5),
            inset 4px 4px 6px 0 rgba(116, 125, 136, .3);
            color: #fff;
        }
        .btn-9:hover:after {
            -webkit-transform: scale(2) rotate(180deg);
            transform: scale(2) rotate(180deg);
            box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
            -4px -4px 6px 0 rgba(116, 125, 136, .2),
            inset -4px -4px 6px 0 rgba(255,255,255,.5),
            inset 4px 4px 6px 0 rgba(116, 125, 136, .3);
        }

    </style>
</head>
<body>
<form action="ticket" method="post">
    <h2>QUÉT MÃ QR BÊN DƯỚI ĐỂ THANH TOÁN</h2>
    <img style="margin-left: 200px" width="350px" height="350px" src="https://i.ibb.co/tsMD3dC/pay-Ment-2.png" alt="" onmouseover="alert('THANH TOÁN THÀNH CÔNG')">
    <br><br><br>
    <button class="custom-btn btn-9">IN VÉ</button>
</form>
</body>
</html>
