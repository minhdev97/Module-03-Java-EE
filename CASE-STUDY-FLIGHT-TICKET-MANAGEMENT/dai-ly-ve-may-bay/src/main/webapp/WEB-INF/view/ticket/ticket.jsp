<%--
  Created by IntelliJ IDEA.
  User: Quang Minh
  Date: 25-Apr-23
  Time: 10:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <style>@import url("https://fonts.googleapis.com/css?family=Montserrat:400,600");
  body {
    margin: 0;
    padding: 0;
    font-family: "Montserrat", Helvetica, arial, sans-serif;
    letter-spacing: 0.75px;
    color: #000000;
    background-color: #f9ebd2;
    font-size: 16px;
  }

  h1, h2, h3, h4, h5, h6, p {
    margin: 0;
    padding: 0;
    font-weight: 400;
    font-size: 1em;
  }

  h1 {
    font-weight: 600;
    font-size: 2em;
  }

  h2 {
    color: #ff4500;
    font-size: 1rem;
  }

  h4, h5 {
    color: #989898;
    font-size: 0.8rem;
  }

  h6 {
    font-size: 1.6rem;
  }

  p {
    letter-spacing: 1px;
  }

  img {
    max-width: 100%;
    height: auto;
    max-height: 100%;
  }

  section, header {
    display: flex;
    background-color: white;
  }
  section > div, header > div {
    padding: 10px 10px;
  }
  @media (max-width: 500px) {
    section > div:first-child, header > div:first-child {
      padding: 10px 10px 10px 0;
    }
  }

  header > div {
    min-width: 65px;
  }

  .flight--general {
    text-align: center;
    align-items: center;
  }
  .flight--general div:first-of-type, .flight--general div:last-of-type {
    flex: 1 50%;
  }
  .flight--general div:first-child {
    padding: 10px 10px;
  }
  .flight--qrcode {
    justify-content: center;
    align-items: center;
    height: 30vh;
  }
  .flight--qrcode img {
    -o-object-fit: contain;
    object-fit: contain;
    font-family: "object-fit: contain";
    height: 100%;
  }

  .extra--meteo p:last-of-type {
    font-size: 0.8rem;
  }
  .extra--image {
    height: 100%;
    display: block;
    padding: 0;
  }
  .extra--image img {
    -o-object-fit: cover;
    object-fit: cover;
    font-family: "object-fit: cover";
    max-height: 100%;
    min-width: 100%;
  }

  header {
    background-color: #ff4500;
    color: #f9ebd2;
    justify-content: flex-end;
    align-items: center;
  }
  header h1 {
    flex: 1 90%;
  }
  header h5 {
    color: #f9ebd2;
  }
  header > div {
    flex: 1 10%;
  }
  header > div:first-of-type {
    padding-left: 0;
  }

  @media (max-width: 500px) {
    section, header {
      padding: 10px 20px;
    }

    header {
      flex-wrap: wrap;
    }

    .extra--image {
      min-height: inherit;
    }

    .flight--general {
      display: -webkit-flex;
      display: -ms-flex;
      display: flex;
      align-items: center;
    }
    .flight--general div:first-of-type {
      text-align: left;
      padding-left: 0;
    }
    .flight--general div:last-of-type {
      text-align: right;
      padding-right: 0;
    }

    .extra--meteo {
      flex-direction: column;
    }
    .extra--meteo > div {
      width: 100%;
      padding-left: 0;
    }
    .extra--image img {
      height: auto;
      max-height: -webkit-fill-available;
    }
  }
  @media (min-width: 501px) {
    section, h1, header div:first-of-type {
      padding: 10px 20px;
    }

    .flight--general {
      padding-bottom: 0;
    }

    .flight--TimeInfo {
      padding-top: 0;
    }

    .flight--qrcode {
      padding: 0 10px;
    }

    .extra--meteo {
      justify-content: space-around;
    }
    .extra--meteo > div {
      max-width: 30%;
    }
    .extra--meteo > div:last-of-type {
      padding-right: 0;
    }
  }
  @media (min-width: 1024px) {
    .flight--TimeInfo {
      padding-top: 10px;
    }

    .flight--qrcode {
      padding: 0 10px;
    }
  }
  main {
    display: grid;
    display: block\9 ;
    max-width: 500px\9 ;
    margin: 0 auto;
  }

  header {
    border-radius: 10px 10px 0 0;
  }
  @media (max-width: 500px) {
    header {
      border-radius: 0;
    }
  }

  .flight--qrcode {
    border-radius: 0 0 10px 0;
  }
  @media (max-width: 500px) {
    .flight--qrcode {
      border-radius: 0;
    }
  }
  .flight--general {
    border-radius: 0 0 0 10px;
  }

  .extra--meteo {
    border-radius: 10px;
  }
  .extra--image {
    display: flex;
  }
  @media (min-width: 501px) and (max-width: 1023px) {
    .flight--TimeInfo {
      border-radius: 0 0 0 10px;
    }
    .flight--general {
      border-radius: 0;
    }
    .flight--qrcode {
      justify-content: flex-end;
    }
  }
  @media (min-width: 501px) {
    main {
      height: 100vh;
    }

    .flight--qrcode {
      height: 100%;
      padding: 0;
    }

    .extra--image {
      min-height: 100vh;
    }
  }
  @supports (display: grid) {
    @media (min-width: 501px) {
      .flight--qrcode {
        height: initial;
      }
    }
  }
  @supports not (display: grid) {
    main {
      margin: 0 auto;
      max-width: 500px;
      grid-gap: 0 0;
      display: block;
    }

    header {
      border-radius: 0;
    }
    @media (max-width: 500px) {
      header {
        border-radius: 0;
      }
    }

    .flight--qrcode {
      border-radius: 0;
    }
    @media (max-width: 500px) {
      .flight--qrcode {
        border-radius: 0;
      }
    }
    .flight--general {
      border-radius: 0;
    }

    .extra--meteo {
      border-radius: 0;
    }
    .extra--image {
      min-height: inherit;
      display: block;
    }

    @media (min-width: 501px) and (max-width: 1023px) {
      .flight--TimeInfo {
        border-radius: 0;
      }
      .flight--general {
        border-radius: 0;
      }
      .flight--qrcode {
        justify-content: center;
      }
    }
    @media (min-width: 501px) {
      main {
        height: inherit;
      }

      .flight--qrcode {
        height: initial;
      }

      .extra--image {
        min-height: inherit;
      }
    }
  }
  .extra--meteo {
    z-index: 2;
  }
  @media (min-width: 501px) {
    .extra--meteo {
      justify-self: center;
    }
  }

  @media (max-width: 500px) {
    main {
      grid-template-columns: 1fr 1fr;
    }

    header {
      grid-column: 1/span 2;
      grid-row: 1/span 1;
    }

    .flight--general, .flight--TimeInfo, .flight--PassInfo, .flight--qrcode {
      grid-column: 1/span 2;
    }
    .flight--general {
      grid-row: 2/span 1;
    }
    .flight--TimeInfo {
      grid-row: 3/span 1;
    }
    .flight--PassInfo {
      grid-row: 4/span 1;
    }
    .flight--qrcode {
      grid-row: 5/span 1;
    }

    .extra--meteo, .extra--image {
      grid-row: 6/span 1;
    }
    .extra--meteo {
      grid-column: 1/span 1;
    }
    .extra--image {
      grid-column: 2/span 1;
    }
  }
  @media (min-width: 501px) and (max-width: 1023px) {
    main {
      grid-template-columns: 1fr repeat(3, minmax(100px, 200px)) 1fr;
      grid-template-rows: 1fr 60px repeat(3, 75px) 10vh auto 1fr;
    }

    header {
      grid-column: 2/span 3;
      grid-row: 2/span 1;
      z-index: 2;
    }

    .flight--PassInfo, .flight--qrcode {
      z-index: 2;
    }
    .flight--general {
      grid-column: 2/span 2;
      grid-row: 3/span 1;
      z-index: 3;
    }
    .flight--TimeInfo {
      grid-column: 2/span 2;
      grid-row: 5/span 1;
      z-index: 3;
    }
    .flight--PassInfo {
      grid-column: 2/span 2;
      grid-row: 4/span 1;
    }
    .flight--qrcode {
      grid-column: 4/span 1;
      grid-row: 3/span 3;
    }

    .extra--meteo {
      grid-column: 2/span 3;
      grid-row: 7/span 1;
    }
    .extra--image {
      grid-column: 1/span 7;
      grid-row: 1/span 8;
    }
  }
  @media (min-width: 1024px) {
    main {
      grid-template-columns: 1fr repeat(4, 150px) 250px 1fr;
      grid-template-rows: 1fr 60px repeat(2, 100px) 0.5fr auto 1fr;
    }

    header {
      grid-column: 2/span 5;
      grid-row: 2/span 1;
      z-index: 2;
    }

    .flight--general, .flight--TimeInfo, .flight--PassInfo, .flight--qrcode {
      z-index: 2;
    }
    .flight--general {
      grid-column: 2/span 2;
      grid-row: 3/span 2;
    }
    .flight--TimeInfo {
      grid-column: 4/span 2;
      grid-row: 3/span 1;
    }
    .flight--PassInfo {
      grid-column: 4/span 2;
      grid-row: 4/span 1;
    }
    .flight--qrcode {
      grid-column: 6/span 1;
      grid-row: 3/span 2;
    }

    .extra--meteo {
      grid-column: 2/span 5;
      grid-row: 6/span 1;
    }
    .extra--image {
      grid-column: 1/span 7;
      grid-row: 1/span 7;
      z-index: 1;
    }
  }
  </style>
</head>
<body>
<main>
  <header>
    <h1>Boarding pass</h1>
    <div>
      <h5>Flight n°</h5>
      <p> VY1812</p>
    </div>
    <div>
      <h5>Gate</h5>
      <p> D26</p>
    </div>
  </header>
  <section class="flight--general">
    <div>
      <h4>Departure</h4>
      <h2>${sessionScope.get('depart')}</h2>
    </div>
    <div>
      <h4>to</h4>
    </div>
    <div>
      <h4>Destination</h4>
      <h2>${sessionScope.get('dest')}</h2>
    </div>
  </section>
  <section class="flight--TimeInfo">
    <div>
      <h5>Class</h5>
      <p>${sessionScope.get('seat')}</p>
    </div>
    <div>
      <h5>Boarding</h5>
      <p>${sessionScope.get('flightTime')}</p>
    </div>
    <div >
      <h5>Date</h5>
      <p>${sessionScope.get('date')}</p>
    </div>
  </section>
  <section class="flight--PassInfo">
    <div>
      <h5>Passenger</h5>
      <p>${sessionScope.get('name')}</p>
    </div>
    <div>
      <h5>Seat</h5>
      <p>${sessionScope.get('position')}</p>
    </div>
  </section>
  <section class="flight--qrcode"><img src="https://i.ibb.co/dpwr4nr/TICKET.png" alt=""></section>
  <section class="extra--meteo">
    <div>
      <h5>16th</h5>
      <h6>23°C </h6>
      <p>Partly Sunny</p>
    </div>
    <div>
      <h5>17th</h5>
      <h6>24°C </h6>
      <p>Cloudy with a bit of rain</p>
    </div>
    <div>
      <h5>18th</h5>
      <h6>23°C </h6>
      <p>Mostly sunny</p>
    </div>
  </section>
  <section class="extra--image"><img src="https://images.unsplash.com/photo-1464790719320-516ecd75af6c?dpr=2&auto=format&fit=crop&w=1500&h=1001&q=80&cs=tinysrgb&crop=">          </section>
</main>
<script>
  /*! npm.im/object-fit-images */
  var objectFitImages = function () {
    "use strict";
    function t(t) {
      for (var e, r = getComputedStyle(t).fontFamily, i = {}; null !== (e = c.exec(r)); )
        i[e[1]] = e[2];
      return i
    }
    function e(e, i) {
      if (!e[n].parsingSrcset) {
        var s = t(e);
        if (s["object-fit"] = s["object-fit"] || "fill", !e[n].s) {
          if ("fill" === s["object-fit"])
            return;
          if (!e[n].skipTest && l && !s["object-position"])
            return
        }
        var c = e[n].ios7src || e.currentSrc || e.src;
        if (i)
          c = i;
        else if (e.srcset && !u && window.picturefill) {
          var o = window.picturefill._;
          e[n].parsingSrcset = !0, e[o.ns] && e[o.ns].evaled || o.fillImg(e, {reselect: !0}), e[o.ns].curSrc || (e[o.ns].supported = !1, o.fillImg(e, {reselect: !0})), delete e[n].parsingSrcset, c = e[o.ns].curSrc || c
        }
        if (e[n].s)
          e[n].s = c, i && (e[n].srcAttr = i);
        else {
          e[n] = {s: c, srcAttr: i || f.call(e, "src"), srcsetAttr: e.srcset}, e.src = n;
          try {
            e.srcset && (e.srcset = "", Object.defineProperty(e, "srcset", {value: e[n].srcsetAttr})), r(e)
          } catch (t) {
            e[n].ios7src = c
          }
        }
        e.style.backgroundImage = 'url("' + c + '")', e.style.backgroundPosition = s["object-position"] || "center", e.style.backgroundRepeat = "no-repeat", /scale-down/.test(s["object-fit"]) ? (e[n].i || (e[n].i = new Image, e[n].i.src = c), function t() {
          return e[n].i.naturalWidth ? void(e[n].i.naturalWidth > e.width || e[n].i.naturalHeight > e.height ? e.style.backgroundSize = "contain" : e.style.backgroundSize = "auto") : void setTimeout(t, 100)
        }()) : e.style.backgroundSize = s["object-fit"].replace("none", "auto").replace("fill", "100% 100%")
      }
    }
    function r(t) {
      var r = {get: function () {
          return t[n].s
        }, set: function (r) {
          return delete t[n].i, e(t, r), r
        }};
      Object.defineProperty(t, "src", r), Object.defineProperty(t, "currentSrc", {get: r.get})
    }
    function i() {
      a || (HTMLImageElement.prototype.getAttribute = function (t) {
        return!this[n] || "src" !== t && "srcset" !== t ? f.call(this, t) : this[n][t + "Attr"]
      }, HTMLImageElement.prototype.setAttribute = function (t, e) {
        !this[n] || "src" !== t && "srcset" !== t ? g.call(this, t, e) : this["src" === t ? "src" : t + "Attr"] = String(e)
      })
    }
    function s(t, r) {
      var i = !A && !t;
      if (r = r || {}, t = t || "img", a && !r.skipTest)
        return!1;
      "string" == typeof t ? t = document.querySelectorAll("img") : "length"in t || (t = [t]);
      for (var c = 0; c < t.length; c++)
        t[c][n] = t[c][n] || r, e(t[c]);
      i && (document.body.addEventListener("load", function (t) {
        "IMG" === t.target.tagName && s(t.target, {skipTest: r.skipTest})
      }, !0), A = !0, t = "img"), r.watchMQ && window.addEventListener("resize", s.bind(null, t, {skipTest: r.skipTest}))
    }
    var n = "data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==", c = /(object-fit|object-position)\s*:\s*([-\w\s%]+)/g, o = new Image, l = "object-fit"in o.style, a = "object-position"in o.style, u = "string" == typeof o.currentSrc, f = o.getAttribute, g = o.setAttribute, A = !1;
    return s.supportsObjectFit = l, s.supportsObjectPosition = a, i(), s
  }();

  $(function () {
    objectFitImages()
  });
</script>
</body>
</html>
