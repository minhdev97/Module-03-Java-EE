<%--
  Created by IntelliJ IDEA.
  User: Quang Minh
  Date: 24-Apr-23
  Time: 11:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ĐẠI LÝ VÉ MÁY BAY</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<style>
    *, *:before, *:after {
        box-sizing: border-box;
    }
    html {
        font-size: 16px;
    }
    .plane {
        margin: 20px auto;
        max-width: 300px;
    }
    .cockpit {
        height: 250px;
        position: relative;
        overflow: hidden;
        text-align: center;
        border-bottom: 5px solid #d8d8d8;
    }
    .cockpit:before {
        content: "";
        display: block;
        position: absolute;
        top: 0;
        left: 0;
        height: 500px;
        width: 100%;
        border-radius: 50%;
        border-right: 5px solid #d8d8d8;
        border-left: 5px solid #d8d8d8;
    }
    .cockpit h1 {
        width: 60%;
        margin: 100px auto 35px auto;
    }
    .exit {
        position: relative;
        height: 50px;
    }
    .exit:before, .exit:after {
        content: "EXIT";
        font-size: 14px;
        line-height: 18px;
        padding: 0px 2px;
        font-family: "Arial Narrow", Arial, sans-serif;
        display: block;
        position: absolute;
        background: green;
        color: white;
        top: 50%;
        transform: translate(0, -50%);
    }
    .exit:before {
        left: 0;
    }
    .exit:after {
        right: 0;
    }
    .fuselage {
        border-right: 5px solid #d8d8d8;
        border-left: 5px solid #d8d8d8;
    }
    ol {
        list-style: none;
        padding: 0;
        margin: 0;
    }
    .seats {
        display: flex;
        flex-direction: row;
        flex-wrap: nowrap;
        justify-content: flex-start;
    }
    .seat {
        display: flex;
        flex: 0 0 14.28571428571429%;
        padding: 5px;
        position: relative;
    }
    .seat:nth-child(3) {
        margin-right: 14.28571428571429%;
    }
    .seat input[type=checkbox] {
        position: absolute;
        opacity: 0;
    }
    .seat input[type=checkbox]:checked + label {
        background: #bada55;
        -webkit-animation-name: rubberBand;
        animation-name: rubberBand;
        animation-duration: 300ms;
        animation-fill-mode: both;
    }
    .seat input[type=checkbox]:disabled + label {
        background: #dddddd;
        text-indent: -9999px;
        overflow: hidden;
    }
    .seat input[type=checkbox]:disabled + label:after {
        content: "X";
        text-indent: 0;
        position: absolute;
        top: 4px;
        left: 50%;
        transform: translate(-50%, 0%);
    }
    .seat input[type=checkbox]:disabled + label:hover {
        box-shadow: none;
        cursor: not-allowed;
    }
    .seat label {
        display: block;
        position: relative;
        width: 100%;
        text-align: center;
        font-size: 14px;
        font-weight: bold;
        line-height: 1.5rem;
        padding: 4px 0;
        background: #F42536;
        border-radius: 5px;
        animation-duration: 300ms;
        animation-fill-mode: both;
    }
    .seat label:before {
        content: "";
        position: absolute;
        width: 75%;
        height: 75%;
        top: 1px;
        left: 50%;
        transform: translate(-50%, 0%);
        background: rgba(255, 255, 255, 0.4);
        border-radius: 3px;
    }
    .seat label:hover {
        cursor: pointer;
        box-shadow: 0 0 0px 2px #5C6AFF;
    }
    @-webkit-keyframes rubberBand {
        0% {
            -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1);
        }
        30% {
            -webkit-transform: scale3d(1.25, 0.75, 1);
            transform: scale3d(1.25, 0.75, 1);
        }
        40% {
            -webkit-transform: scale3d(0.75, 1.25, 1);
            transform: scale3d(0.75, 1.25, 1);
        }
        50% {
            -webkit-transform: scale3d(1.15, 0.85, 1);
            transform: scale3d(1.15, 0.85, 1);
        }
        65% {
            -webkit-transform: scale3d(0.95, 1.05, 1);
            transform: scale3d(0.95, 1.05, 1);
        }
        75% {
            -webkit-transform: scale3d(1.05, 0.95, 1);
            transform: scale3d(1.05, 0.95, 1);
        }
        100% {
            -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1);
        }
    }
    @keyframes rubberBand {
        0% {
            -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1);
        }
        30% {
            -webkit-transform: scale3d(1.25, 0.75, 1);
            transform: scale3d(1.25, 0.75, 1);
        }
        40% {
            -webkit-transform: scale3d(0.75, 1.25, 1);
            transform: scale3d(0.75, 1.25, 1);
        }
        50% {
            -webkit-transform: scale3d(1.15, 0.85, 1);
            transform: scale3d(1.15, 0.85, 1);
        }
        65% {
            -webkit-transform: scale3d(0.95, 1.05, 1);
            transform: scale3d(0.95, 1.05, 1);
        }
        75% {
            -webkit-transform: scale3d(1.05, 0.95, 1);
            transform: scale3d(1.05, 0.95, 1);
        }
        100% {
            -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1);
        }
    }
    .rubberBand {
        -webkit-animation-name: rubberBand;
        animation-name: rubberBand;
    }
body{
    background-image: url("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fcloud%2520background%2F&psig=AOvVaw2DJ_EYqppGDfm0usoHbR8L&ust=1682477183089000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCMjsiImCxP4CFQAAAAAdAAAAABAE");
}

    .btn-12{
        position: relative;
        right: 20px;
        bottom: 20px;
        border:none;
        box-shadow: none;
        width: 130px;
        height: 40px;
        line-height: 42px;
        -webkit-perspective: 230px;
        perspective: 230px;
    }
    .btn-12 span {
        background: rgb(0,172,238);
        background: linear-gradient(0deg, rgba(0,172,238,1) 0%, rgba(2,126,251,1) 100%);
        display: block;
        position: absolute;
        width: 130px;
        height: 40px;
        box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
        7px 7px 20px 0px rgba(0,0,0,.1),
        4px 4px 5px 0px rgba(0,0,0,.1);
        border-radius: 5px;
        margin:0;
        text-align: center;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        -webkit-transition: all .3s;
        transition: all .3s;
    }
    .btn-12 span:nth-child(1) {
        box-shadow:
                -7px -7px 20px 0px #fff9,
                -4px -4px 5px 0px #fff9,
                7px 7px 20px 0px #0002,
                4px 4px 5px 0px #0001;
        -webkit-transform: rotateX(90deg);
        -moz-transform: rotateX(90deg);
        transform: rotateX(90deg);
        -webkit-transform-origin: 50% 50% -20px;
        -moz-transform-origin: 50% 50% -20px;
        transform-origin: 50% 50% -20px;
    }
    .btn-12 span:nth-child(2) {
        -webkit-transform: rotateX(0deg);
        -moz-transform: rotateX(0deg);
        transform: rotateX(0deg);
        -webkit-transform-origin: 50% 50% -20px;
        -moz-transform-origin: 50% 50% -20px;
        transform-origin: 50% 50% -20px;
    }
    .btn-12:hover span:nth-child(1) {
        box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
        7px 7px 20px 0px rgba(0,0,0,.1),
        4px 4px 5px 0px rgba(0,0,0,.1);
        -webkit-transform: rotateX(0deg);
        -moz-transform: rotateX(0deg);
        transform: rotateX(0deg);
    }
    .btn-12:hover span:nth-child(2) {
        box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
        7px 7px 20px 0px rgba(0,0,0,.1),
        4px 4px 5px 0px rgba(0,0,0,.1);
        color: transparent;
        -webkit-transform: rotateX(-90deg);
        -moz-transform: rotateX(-90deg);
        transform: rotateX(-90deg);
    }
</style>
<body>
<main>
    <div class="cloud cloud--1"></div>
    <div class="cloud  cloud--2"></div>
    <div class="cloud cloud--3"></div>
    <section class="plane">
        <div class="plane__cabin js-cabin">
            <div class="plane__window plane__window--1"></div>
            <div class="plane__window plane__window--2"></div>
            <div class="plane__window plane__window--3"></div>
            <div class="plane__window plane__window--4"></div>
            <div class="plane__window-curve js-cabin"></div>
            <div class="plane__nose"></div>
        </div>
        <div class="plane__wing plane__wing--right js-wing"></div>
        <div class="plane__wing plane__wing--left js-wing"></div>
        <div class="plane__vert-stabilizer"></div>
        <div class="plane__hori-stabilizer plane__hori-stabilizer--right js-wing-r"></div>
        <div class="plane__hori-stabilizer plane__hori-stabilizer--left js-wing-l"></div>
    </section>
    <div class="cloud  cloud--4"></div>
    <div class="cloud cloud--5"></div>
    <div class="cloud cloud--6"></div>
</main>
<div style="display: inline">
    <form action="logout" method="get">
        <button class="custom-btn btn-12" style="float: right"><span>Click!</span><span>Đăng xuất</span></button>
    </form>
    <form action="updatePw" method="post">
        <button class="custom-btn btn-12" style="float: right"><span>Click!</span><span>Đổi mật khẩu</span></button>
    </form>
    <form action="error" method="get">
        <button class="custom-btn btn-12" style="float: right"><span>Click!</span><span>Sửa thông tin</span></button>
    </form>
</div>
<div>
<form action="customerInfos" method="post" id="book-ticket">
    <fieldset style="align-content: center">
        <legend>&nbsp;&nbsp;&nbsp;&nbsp;Đặt vé máy bay</legend>
        <label for="airline">&nbsp;&nbsp;&nbsp;&nbsp;Hãng máy bay:</label>
        <select name="airline" id="airline">
            <option name="airline" value="Vietjet">Vietjet</option>
            <option name="airline" value="Bamboo">Bamboo</option>
            <option name="airline" value="Vietnam Airline">Vietnam Airline</option>
        </select>
        <label for="depart">&nbsp;&nbsp;&nbsp;&nbsp;Điểm xuất phát:</label>
        <select name="depart" id="depart" onchange="updateLocation()">
            <option name="depart" value="Hà Nội">Hà Nội</option>
            <option name="depart" value="Sài Gòn">Sài Gòn</option>
            <option name="depart" value="Đà Nẵng">Đà Nẵng</option>
            <option name="depart" value="Nha Trang">Nha Trang</option>
        </select>

        <label for="dest">&nbsp;&nbsp;&nbsp;&nbsp;Đích đến:</label>
        <select name="dest" id="dest" onchange="updateLocation()">
            <option name="dest" value="Sài Gòn">Sài Gòn</option>
            <option name="dest" value="Hà Nội">Hà Nội</option>
            <option name="dest" value="Đà Nẵng">Đà Nẵng</option>
            <option name="dest" value="Nha Trang">Nha Trang</option>
        </select>
        <br><br>
        <label>&nbsp;&nbsp;&nbsp;&nbsp;Ngày đi:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <input type="date" name="date" id="date">

        <label for="seat">&nbsp;&nbsp;&nbsp;&nbsp;Hạng ghế:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <select name="seat" id="seat" onchange="updatePrice();">
            <option name="seat" id="pt" value="Phổ thông">Phổ thông</option>
            <option name="seat" id="tg" value="Thương gia">Thương gia</option>
        </select>
        <label for="price">&nbsp;&nbsp;&nbsp;&nbsp;Giá vé:</label>
        <p style="display: inline-block" id="price">
            1.000.000 ₫
        </p>
        <input style="display: inline-block" type="hidden" id="hiddenPrice" name="price" value="1000000">
        <label for="flightTime">&nbsp;&nbsp;&nbsp;&nbsp;Giờ bay:</label>
        <select name="flightTime" id="flightTime">
            <option value="07:15">07:15</option>
            <option value="09:00">09:00</option>
            <option value="10:30">10:30</option>
            <option value="11:45">13:45</option>
            <option value="13:15">14:30</option>
            <option value="15:00">16:25</option>
            <option value="17:10">20:15</option>
        </select>

        <div class="plane">
            <div class="cockpit">
                <h1>PHÒNG ĐIỀU KHIỂN</h1>
            </div>
            <div class="exit exit--front fuselage">

            </div>
            <ol class="cabin fuselage">
                <li class="row row--1">
                    <ol class="seats" type="A">
                        <li class="seat">
                            <input value="1A" name="position" type="checkbox" id="1A" />
                            <label for="1A">1A</label>
                        </li>
                        <li class="seat">
                            <input value="1B" name="position" type="checkbox" id="1B" />
                            <label for="1B">1B</label>
                        </li>
                        <li class="seat">
                            <input value="1C" name="position" type="checkbox" id="1C" />
                            <label for="1C">1C</label>
                        </li>
                        <li class="seat">
                            <input value="1D" name="position" type="checkbox" disabled id="1D" />
                            <label for="1D">Occupied</label>
                        </li>
                        <li class="seat">
                            <input value="1E" name="position" type="checkbox" id="1E" />
                            <label for="1E">1E</label>
                        </li>
                        <li class="seat">
                            <input value="1F" name="position" type="checkbox" id="1F" />
                            <label for="1F">1F</label>
                        </li>
                    </ol>
                </li>
                <li class="row row--2">
                    <ol class="seats" type="A">
                        <li class="seat">
                            <input value="2A" name="position" type="checkbox" id="2A" />
                            <label for="2A">2A</label>
                        </li>
                        <li class="seat">
                            <input value="2B" name="position" type="checkbox" id="2B" />
                            <label for="2B">2B</label>
                        </li>
                        <li class="seat">
                            <input value="2C" name="position" type="checkbox" id="2C" />
                            <label for="2C">2C</label>
                        </li>
                        <li class="seat">
                            <input value="2D" name="position"  type="checkbox" id="2D" />
                            <label for="2D">2D</label>
                        </li>
                        <li class="seat">
                            <input value="2E" name="position" type="checkbox" id="2E" />
                            <label for="2E">2E</label>
                        </li>
                        <li class="seat">
                            <input value="2F" name="position" type="checkbox" id="2F" />
                            <label for="2F">2F</label>
                        </li>
                    </ol>
                </li>
                <li class="row row--3">
                    <ol class="seats" type="A">
                        <li class="seat">
                            <input value="3A" name="position" type="checkbox" id="3A" />
                            <label for="3A">3A</label>
                        </li>
                        <li class="seat">
                            <input value="3B" name="position" type="checkbox" id="3B" />
                            <label for="3B">3B</label>
                        </li>
                        <li class="seat">
                            <input value="3C" name="position" type="checkbox" id="3C" />
                            <label for="3C">3C</label>
                        </li>
                        <li class="seat">
                            <input value="3D" name="position" type="checkbox" id="3D" />
                            <label for="3D">3D</label>
                        </li>
                        <li class="seat">
                            <input value="3E" name="position" type="checkbox" id="3E" />
                            <label for="3E">3E</label>
                        </li>
                        <li class="seat">
                            <input value="3F" name="position" type="checkbox" id="3F" />
                            <label for="3F">3F</label>
                        </li>
                    </ol>
                </li>
                <li class="row row--4">
                    <ol class="seats" type="A">
                        <li class="seat">
                            <input value="4A" name="position" type="checkbox" id="4A" />
                            <label for="4A">4A</label>
                        </li>
                        <li class="seat">
                            <input value="4B" name="position" type="checkbox" id="4B" />
                            <label for="4B">4B</label>
                        </li>
                        <li class="seat">
                            <input value="4C" name="position" type="checkbox" id="4C" />
                            <label for="4C">4C</label>
                        </li>
                        <li class="seat">
                            <input value="4D" name="position" type="checkbox" id="4D" />
                            <label for="4D">4D</label>
                        </li>
                        <li class="seat">
                            <input value="4E" name="position" type="checkbox" id="4E" />
                            <label for="4E">4E</label>
                        </li>
                        <li class="seat">
                            <input value="4F" name="position" type="checkbox" id="4F" />
                            <label for="4F">4F</label>
                        </li>
                    </ol>
                </li>
                <li class="row row--5">
                    <ol class="seats" type="A">
                        <li class="seat">
                            <input value="5A" name="position" type="checkbox" id="5A" />
                            <label for="5A">5A</label>
                        </li>
                        <li class="seat">
                            <input value="5B" name="position" type="checkbox" id="5B" />
                            <label for="5B">5B</label>
                        </li>
                        <li class="seat">
                            <input value="5C" name="position" type="checkbox" id="5C" />
                            <label for="5C">5C</label>
                        </li>
                        <li class="seat">
                            <input value="5D" name="position" type="checkbox" id="5D" />
                            <label for="5D">5D</label>
                        </li>
                        <li class="seat">
                            <input value="5E" name="position"  type="checkbox" id="5E" />
                            <label for="5E">5E</label>
                        </li>
                        <li class="seat">
                            <input value="5F" name="position" type="checkbox" id="5F" />
                            <label for="5F">5F</label>
                        </li>
                    </ol>
                </li>
            </ol>
            <div class="exit exit--back fuselage">

            </div>
        </div>
        <button style="float: right" class="btn btn-outline-success">Tiến hành đặt vé</button>
    </fieldset>
</form>
</div>
<img width="100%" src="https://i.ibb.co/6Xs7zxK/partner.jpg" alt="">
<hr width="100%" align="center">
<img width="100%" src="https://i.ibb.co/4Sqv5Cw/payment-partner.jpg" alt="">
<hr width="100%" align="center">
</body>
<script>
    function updatePrice() {
        let economySeat = document.getElementById("pt").value;
        let luxurySeat = document.getElementById("tg").value;
        let seat = document.getElementById("seat").value;
        let price;
        const VND = new Intl.NumberFormat('vi-VN', {
            style: 'currency',
            currency: 'VND',
        });
        if (seat === "Thương gia") {
            price = 3000000;
        } else {
            price = 1000000;
        }
        document.getElementById("price").innerHTML = VND.format(price);
        document.getElementById("hiddenPrice").value = price;
    }
    function updateLocation() {
        
    }
</script>
</html>
