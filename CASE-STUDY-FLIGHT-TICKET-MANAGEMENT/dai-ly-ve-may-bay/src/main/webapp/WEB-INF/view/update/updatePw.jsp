<%--
  Created by IntelliJ IDEA.
  User: Quang Minh
  Date: 26-Apr-23
  Time: 4:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CẬP NHẬT MẬT KHẨU</title>
    <script src="https://code.jquery.com/jquery-3.6.4.js"
            integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
    <style>
        html,body{
            min-height:100%
        }
        body {
            background: #f6f6f6 url(https://goo.gl/1yhE3P) top center no-repeat;
            background-size:cover;
            font-family: "Open Sans", sans-serif;
            font-size: 14px;
            margin:0
        }
        #box {
            width: 400px;
            margin: 10% auto;
            text-align: center;
            background:rgba(255,255,255,0.6);
            padding:20px 50px;
            box-sizing:border-box;
            box-shadow:0 3px 12px rgba(0,0,0,0.2);
            border-radius:2%
        }
        h1 {
            margin-bottom: 1.5em;
            font-size: 30px;
            color: #484548;
            font-weight: 100;
        }
        h1 span, small {
            display:block;
            font-size: 14px;
            color: #989598;
        }
        small{ font-style: italic;
            font-size: 11px;}
        form p { position: relative; }

        .password {
            width: 90%;
            padding: 15px 12px;
            margin-bottom: 5px;
            border: 1px solid #e5e5e5;
            border-bottom: 2px solid #ddd;
            background: rgba(255,255,255,0.2) !important;
            color: #555;
        }
        .password + .unmask {
            position: absolute;
            right: 5%;
            top: 10px;
            width: 25px;
            height: 25px;
            background: transparent;
            border-radius: 50%;
            cursor:pointer;
            border: none;
            font-family:'fontawesome';
            font-size:14px;
            line-height:24px;
            -webkit-appearance:none;
            outline:none
        }
        .password + .unmask:before {
            content: "\f06e";
            position:absolute;
            top:0; left:0;
            width: 25px;
            height: 25px;
            background: rgba(205,205,205,0.2);
            z-index:1;
            color:#aaa;
            border:2px solid;
            border-radius: 50%;
        }
        .password[type="text"] + .unmask:before {
            content:"\f070";
            background: rgba(105,205,255,0.2);
            color:#06a
        }
        #valid{
            font-size:12px;
            color:#daa;
            height:15px
        }
        #strong{
            height:20px;
            font-size:12px;
            color:#daa;
            text-transform:capitalize;
            background:rgba(205,205,205,0.1);
            border-radius:5px;
            overflow:hidden
        }

        #strong span{
            display:block;
            box-shadow:0 0 0 #fff inset;
            height:100%;
            transition:all 0.8s
        }
        #strong .weak{
            box-shadow:5em 0 0 #daa inset;
        }
        #strong .medium{
            color:#da6;
            box-shadow:10em 0 0 #da6 inset
        }
        #strong .strong{
            color:#595;
            box-shadow:50em 0 0 #ada inset
        }
        /*CSS HERE*/
        html,
        body {
            background-color: #85b9dd;
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
        }

        * {
            position: relative;
        }

        .frame {
            width: 500px;
            height: auto;
            margin: 15% auto 0;
            position: absolute;
            width: 100%;
        }

        svg {
            max-width: 100%;
            height: auto;
            display: block;
        }

        /**
         * Paper Plane
         */
        /*Paper Plane: Container*/
        .plane-container {
            width: 200px;
            margin: 0px auto;
            z-index: 3;
        }
        /*Paper Plane: Image*/
        .plane {
            width: 100%;
            height: 60px;
        }

        /*Paper Plane: Animation*/
        .plane-container {
            -webkit-animation: paper-plane-scoping 2s alternate infinite;
            -moz-animation: paper-plane-scoping 2s alternate infinite;
            animation: paper-plane-scoping 2s alternate infinite;

            -webkit-animation-timing-function: linear;
            -moz-animation-timing-function: linear;
            animation-timing-function: linear;
        }

        @-webkit-keyframes paper-plane-scoping {
            0% {
                -webkit-transform: translateY(0px);
                -moz-transform: translateY(0px);
                transform: translateY(0px);
            }
            100% {
                -webkit-transform: translateY(100px);
                -moz-transform: translateY(100px);
                transform: translateY(100px);
            }
        }

        .plane {
            -webkit-animation-timing-function: ease-in-out;
            -moz-animation-timing-function: ease-in-out;
            animation-timing-function: ease-in-out;

            -webkit-animation: paper-plane-soaring 4s forwards infinite;
            -moz-animation: paper-plane-soaring 4s forwards infinite;
            animation: paper-plane-soaring 4s forwards infinite;
        }
        @-webkit-keyframes paper-plane-soaring {
            0% {
                -webkit-transform: rotate(0deg);
                -moz-transform: rotate(0deg);
                transform: rotate(0deg);
            }
            40% {
                -webkit-transform: rotate(15deg);
                -moz-transform: rotate(15deg);
                transform: rotate(15deg);
            }
            50% {
                -webkit-transform: rotate(15deg);
                -moz-transform: rotate(15deg);
                transform: rotate(15deg);
            }
            60% {
                -webkit-transform: rotate(-10deg);
                -moz-transform: rotate(-10deg);
                transform: rotate(-10deg);
            }
            70% {
                -webkit-transform: rotate(-10deg);
                -moz-transform: rotate(-10deg);
                transform: rotate(-10deg);
            }
            100% {
                -webkit-transform: rotate(0deg);
                -moz-transform: rotate(0deg);
                transform: rotate(0deg);
            }
        }

        /**
         * Clouds
         */
        .clouds {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            overflow: hidden;
            transform: translateZ(0);
        }

        .cloud {
            position: absolute;
            top: 20%;
            width: 300px;
            right: 0;
            opacity: 1;
        }

        .cloud.front {
            z-index: 9;
        }

        .cloud.distant {
            z-index: 1;
        }

        .cloud.background {
            z-index: 1;
        }

        /*Cloud Sizing*/
        .cloud.smaller {
            margin-right: 400px;
            width: 100px;
            margin-top: 50px;
        }

        .cloud.small {
            margin-right: 200px;
            width: 150px;
        }

        .cloud.big {
            width: 500px;
            margin-top: 50px;
            margin-right: 150px;
        }

        .cloud.massive {
            width: 600px;
            margin-top: 20px;
            margin-right: 0px;
        }


        /*Cloud: Animation*/
        .cloud {
            -webkit-animation-name: cloud-movement;
            -webkit-animation-timing-function: linear;
            -webkit-animation-direction: forwards;
            -webkit-animation-iteration-count: infinite;
            -webkit-animation-duration: 8s;

            -moz-animation-name: cloud-movement;
            -moz-animation-timing-function: linear;
            -moz-animation-direction: forwards;
            -moz-animation-iteration-count: infinite;
            -moz-animation-duration: 8s;

            animation-name: cloud-movement;
            animation-timing-function: linear;
            animation-direction: forwards;
            animation-iteration-count: infinite;
            animation-duration: 8s;
        }

        .slow {
            -webkit-animation-duration: 9.2s;
            -moz-animation-duration: 9.2s;
            animation-duration: 9.2s;
        }

        .slower {
            -webkit-animation-duration: 11.2s;
            -moz-animation-duration: 11.2s;
            animation-duration: 11.2s;
        }

        .slowest {
            -webkit-animation-duration: 13.5s;
            -moz-animation-duration: 13.5s;
            animation-duration: 13.5s;
        }

        .super-slow {
            -webkit-animation-duration: 20.5s;
            -moz-animation-duration: 20.5s;
            animation-duration: 20.5s;
        }

        @-webkit-keyframes cloud-movement {
            0% {
                opacity: 0.1;
                -webkit-transform: translateX(300px);
                -moz-transform: translateX(300px);
                transform: translateX(300px);
            }
            10% {

                opacity: 0.7;
            }
            90% {
                opacity: 0;
            }
            100% {
                opacity: 0;
                -webkit-transform: translateX(-1000px);
                -moz-transform: translateX(-1000px);
                transform: translateX(-1000px);
            }
        }

        #the-form {
            text-align: center;
            width: 50%;
            position: relative;
            top: 200px;
            left: 400px;
        }
    </style>
</head>
<body>
<div class="frame">
    <div class="plane-container">
        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
             width="1131.53px" height="379.304px" viewBox="0 0 1131.53 379.304" enable-background="new 0 0 1131.53 379.304"
             xml:space="preserve" class="plane">
<%--<polygon fill="#D8D8D8" points="72.008,0 274.113,140.173 274.113,301.804 390.796,221.102 601.682,367.302 1131.53,0.223  "/>--%>
            <%--                <polygon fill="#C4C4C3" points="1131.53,0.223 274.113,140.173 274.113,301.804 390.796,221.102   "/>--%>
</svg></a>

    </div>
</div>
<div class="clouds">

    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="762px"
         height="331px" viewBox="0 0 762 331" enable-background="new 0 0 762 331" xml:space="preserve" class="cloud big front slowest">
<path fill="#FFFFFF" d="M715.394,228h-16.595c0.79-5.219,1.201-10.562,1.201-16c0-58.542-47.458-106-106-106
c-8.198,0-16.178,0.932-23.841,2.693C548.279,45.434,488.199,0,417.5,0c-84.827,0-154.374,65.401-160.98,148.529
C245.15,143.684,232.639,141,219.5,141c-49.667,0-90.381,38.315-94.204,87H46.607C20.866,228,0,251.058,0,279.5
S20.866,331,46.607,331h668.787C741.133,331,762,307.942,762,279.5S741.133,228,715.394,228z"/>
</svg>
    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="762px"
         height="331px" viewBox="0 0 762 331" enable-background="new 0 0 762 331" xml:space="preserve" class="cloud distant smaller">
<path fill="#FFFFFF" d="M715.394,228h-16.595c0.79-5.219,1.201-10.562,1.201-16c0-58.542-47.458-106-106-106
c-8.198,0-16.178,0.932-23.841,2.693C548.279,45.434,488.199,0,417.5,0c-84.827,0-154.374,65.401-160.98,148.529
C245.15,143.684,232.639,141,219.5,141c-49.667,0-90.381,38.315-94.204,87H46.607C20.866,228,0,251.058,0,279.5
S20.866,331,46.607,331h668.787C741.133,331,762,307.942,762,279.5S741.133,228,715.394,228z"/>
</svg>

    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="762px"
         height="331px" viewBox="0 0 762 331" enable-background="new 0 0 762 331" xml:space="preserve" class="cloud small slow">
<path fill="#FFFFFF" d="M715.394,228h-16.595c0.79-5.219,1.201-10.562,1.201-16c0-58.542-47.458-106-106-106
c-8.198,0-16.178,0.932-23.841,2.693C548.279,45.434,488.199,0,417.5,0c-84.827,0-154.374,65.401-160.98,148.529
C245.15,143.684,232.639,141,219.5,141c-49.667,0-90.381,38.315-94.204,87H46.607C20.866,228,0,251.058,0,279.5
S20.866,331,46.607,331h668.787C741.133,331,762,307.942,762,279.5S741.133,228,715.394,228z"/>
</svg>

    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="762px"
         height="331px" viewBox="0 0 762 331" enable-background="new 0 0 762 331" xml:space="preserve" class="cloud distant super-slow massive">
<path fill="#FFFFFF" d="M715.394,228h-16.595c0.79-5.219,1.201-10.562,1.201-16c0-58.542-47.458-106-106-106
c-8.198,0-16.178,0.932-23.841,2.693C548.279,45.434,488.199,0,417.5,0c-84.827,0-154.374,65.401-160.98,148.529
C245.15,143.684,232.639,141,219.5,141c-49.667,0-90.381,38.315-94.204,87H46.607C20.866,228,0,251.058,0,279.5
S20.866,331,46.607,331h668.787C741.133,331,762,307.942,762,279.5S741.133,228,715.394,228z"/>
</svg>

    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="762px"
         height="331px" viewBox="0 0 762 331" enable-background="new 0 0 762 331" xml:space="preserve" class="cloud slower">
<path fill="#FFFFFF" d="M715.394,228h-16.595c0.79-5.219,1.201-10.562,1.201-16c0-58.542-47.458-106-106-106
c-8.198,0-16.178,0.932-23.841,2.693C548.279,45.434,488.199,0,417.5,0c-84.827,0-154.374,65.401-160.98,148.529
C245.15,143.684,232.639,141,219.5,141c-49.667,0-90.381,38.315-94.204,87H46.607C20.866,228,0,251.058,0,279.5
S20.866,331,46.607,331h668.787C741.133,331,762,307.942,762,279.5S741.133,228,715.394,228z"/>
</svg>

</div>
<div id="box">
    <form id="myform-search" action="/updatePw" method="post" autocomplete="off">
        <h1>Change Password <span>choose a good one!</span></h1>
        <c:if test="${not empty statusPw}">
        <p class="text-center text-danger">${statusPw}</p>
        </c:if>
        <form>
<%--            <p>--%>
<%--                <input type="password" value="" placeholder="Enter Old Password" id="p" class="password" name="oldPw">--%>
<%--                <button class="unmask" type="button"></button>--%>
<%--            </p>--%>
            <p>
                <input type="password" value="" placeholder="Enter Password" id="p" class="password" name="newPw">
                <button class="unmask" type="button"></button>
            </p>
            <p>
                <input type="password" value="" placeholder="Confirm Password" id="p-c" class="password" name="confirmPw">
                <button class="unmask" type="button"></button>
            <div id="strong"><span></span></div>
            <div id="valid"></div>
            <small>Must be 6+ characters long and contain at least 1 upper case letter, 1 number, 1 special character</small>
            </p>
            <button class="custom-btn btn-16">Cập nhật mật khẩu</button>
        </form>
</div>
<script>
    $('.unmask').on('click', function(){
        if($(this).prev('input').attr('type') == 'password')
            $(this).prev('input').prop('type', 'text');
        else
            $(this).prev('input').prop('type', 'password');
        return false;
    });
    //Begin supreme heuristics
    $('.password').on('keyup',function (){
        var p_c = $('#p-c');
        var p = $('#p');
        console.log(p.val() + p_c.val());
        if(p.val().length > 0){
            if(p.val() != p_c.val()) {
                $('#valid').html("Passwords Don't Match");
            } else {
                $('#valid').html('');
            }
            var s = 'weak'
            if(p.val().length > 5 && p.val().match(/\d+/g))
                s = 'medium';
            if(p.val().length > 6 && p.val().match(/[^\w\s]/gi))
                s = 'strong';
            $('#strong span').addClass(s).html(s);
        }
    });

</script>
</body>
</html>
