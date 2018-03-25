<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html >
<head>
  <meta charset="UTF-8">
  <title>Flat UI Kit - Dribbble Rebound</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='https://s3-us-west-2.amazonaws.com/s.cdpn.io/6035/grid.css'>
<link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Montserrat'>
<link rel='stylesheet prefetch' href='https://s3-us-west-2.amazonaws.com/s.cdpn.io/6035/icomoon-scrtpxls.css'>

      <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      *, *:before, *:after {
  box-sizing: border-box;
}

img {
  max-width: 100%;
  height: auto;
  vertical-align: sub;
}

body {
  font-family: 'Montserrat', sans-serif;
  background:url(../public/img/timg.jpg);
  background-size:cover;
  padding-top: 0px;
}

.btn {
  display: inline-block;
  padding: 6px 14px;
  background: #f2f2f2;
  border-radius: 3px;
  color: #7a7a7a;
  font-size: 0.8125em;
  transition: background .3s ease, color .3s ease;
  text-decoration: none;
}
.btn:hover {
  background: #e5e5e5;
  color: #929797;
}
.btn.btn-primary {
  background: #D9BC76;
  color: rgba(255, 255, 255, 0.9);
}
.btn.btn-primary:hover, .btn.btn-primary.active {
  background: #5C4F2D;
}
.btn.btn-large {
  padding: 12px 28px;
}
.btn.btn-caps {
  text-transform: uppercase;
}
.btn.btn-block {
  display: block;
  width: 100%;
  text-align: center;
}

input[type="text"] {
  width: 100%;
  border: 1px solid #cfcfcf;
  background: #ebebeb;
  height: 28px;
  font-size: 0.75em;
  padding: 5px;
  outline: none;
  border-radius: 3px;
  margin-bottom: 7px;
  transition: background .3s ease;
}

input[type="text"]:focus {
  background: #f0f0f0;
}

.checkbox {
  color: #ccc;
  text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.4);
  font-size: 0.6875em;
  margin-bottom: 7px;
  display: inline-block;
}

.box {
  background: #f9f9f9;
  box-shadow: 0 0 1px rgba(0, 0, 0, 0.2), 0 2px 4px rgba(0, 0, 0, 0.1);
  border-radius: 5px;
  margin-bottom: 20px;
  text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.1);
}
.box h2 {
  
  color: #120E0D;
  font-size: 0.75em;
}
.box p {
  font-size: 0.75em;
  color: #7d7d7d;
}

.locations {
  padding: 30px;
  text-align: center;
}
.locations .avatar {
  border-radius: 50%;
}
.locations .avatar img {
  border-radius: 50%;
}
.locations .details {
  margin-top: 30px;
}
.locations .btn {
  margin-top: 30px;
}

.calendar {
  text-align: center;
}
.calendar .header {
  padding: 10px 0;
}
.calendar [class*="icon-"] {
  color: #dd5555;
  position: relative;
  top: 2px;
  margin: 0 5px;
  display: inline-block;
  cursor: pointer;
}
.calendar .days {
  background: #dd5555;
  padding: 20px;
  border-radius: 0 0 5px 5px;
}
.calendar .days ul {
  margin: 0;
  padding: 0;
}
.calendar .days li {
  display: inline-block;
  color: #fff;
  padding: 5px 0;
  width: 30px;
  height: 30px;
  text-align: center;
  cursor: pointer;
}
@media (max-width: 767px) {
  .calendar .days li {
    width: 20px;
    height: 20px;
  }
}
.calendar .days li.next, .calendar .days li.previous {
  color: rgba(0, 0, 0, 0.2);
}

.nav a {
  text-decoration: none;
  color: #cccccc;
  text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.5);
  font-size: 0.75em;
}
.nav a:hover {
  color: #5C4F2D;
}
.nav [class*="icon-"] {
  font-size: 2em;
  margin-bottom: 5px;
  display: inline-block;
}
.nav ul {
  margin: 0 0 0 0;
  padding: 0;
  list-style: none;
  text-align: center;
  background:#D9BC76;
}
.nav li {
  display: inline-block;
 
}
.nav li a {
  display: block;
  padding: 20px 18px;
  color:#120E0D;
}

.weather .header {
  border-radius: 5px 5px 0 0;
  padding: 20px 0;
  background: #120E0D;
  text-align: center;
  color: #D9BC76;
  font-size: 3.125em;
}
.weather [class*="icon-"] {
  position: relative;
  top: 2px;
}
.weather article {
  text-align: center;
  padding: 5px 0;
  background: #D9BC76;
}

.video {
  position: relative;
  cursor: pointer;
}
.video:before {
  content: '';
  border: 2px solid rgba(255, 255, 255, 0.8);
  background: rgba(255, 255, 255, 0.1);
  width: 50px;
  height: 50px;
  border-radius: 50%;
  display: block;
  position: absolute;
  left: 50%;
  top: 50%;
  margin: -20px 0 0 -20px;
  transition: background .3s ease;
}
.video:after {
  content: '';
  display: block;
  position: absolute;
  left: 50%;
  top: 50%;
  margin: -5px 0 0 2px;
  border: 10px solid transparent;
  border-left: 10px solid rgba(255, 255, 255, 0.8);
}
.video:hover:before {
  background: rgba(255, 255, 255, 0.3);
}
.video img {
  border-radius: 5px;
}

.post img {
  border-radius: 5px 5px 0 0;
}
.post .details {
	background:#D9BC76;
  padding: 10px 20px;
}
.post .details p {
  line-height: 1.5em;
}

.audio {
  position: relative;
  height: 120px;
}
.audio .image {
  position: absolute;
  top: 0;
  left: 0;
}
.audio .image img {
  border-radius: 5px 0 0 5px;
}
.audio .details {
  padding: 10px 0;
  margin-left: 140px;
}
.audio .actions {
  position: absolute;
  right: 10px;
  bottom: 20px;
}
.audio .actions .btn {
  width: 25px;
  height: 25px;
  display: block;
  float: left;
  margin-left: 5px;
  padding: 5px 6px;
  color: #FFF;
}
.audio .player .bar {
  margin: 30px 0 0;
  height: 4px;
  background: #cccccc;
  width: 60%;
  border-radius: 2px;
}
.audio .player .bar .progress {
  width: 45%;
  background: #dd5555;
  border-radius: 2px;
  height: 4px;
  position: relative;
}
.audio .player .bar .progress:before {
  content: attr(data-time);
  background: #dd5555;
  display: inline;
  position: absolute;
  font-size: 0.6875em;
  color: #fff;
  padding: 4px 6px;
  border-radius: 3px;
  right: -14px;
  bottom: 9px;
}
.audio .player .bar .progress:after {
  content: '';
  border: 5px solid transparent;
  border-top: 5px solid #dd5555;
  position: absolute;
  right: -3px;
  bottom: 0px;
}

.find {
  padding: 10px;
}

    </style>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body>
<div class="container">
  <div class="grid_4" >
<section class="box widget locations" style="background-color:#120E0D" >
      <div class="avatar">
        <img src="../public/img/1993_1.jpg"  />
      </div>
      <div class="details">
        <h2 style="color:#D9BC76"><c:forEach var="scholar" items="${scholarList}">
            ${scholar.sname} &nbsp;&nbsp;</c:forEach></h2>
        <p><c:forEach var="scholar" items="${scholarList}">
            ${scholar.institution} &nbsp;&nbsp;</c:forEach></p>
        <a href="#" class="btn btn-primary btn-block btn-large" style="color:#120E0D">experence</a>
      </div>
    </section>
    <section class="box post"  style="background-color:#120E0D" >
      <!--<header class="header">
        <h2>Saturday</h2>
        <p><span class="icon-arrow-left"></span>January<span class="icon-arrow-right"></span></p>
      </header>
      <article class="days">
        <ul>
          <li class="previous">30</li>
          <li class="previous">31</li>
          <li>1</li>
          <li>2</li>
          <li>3</li>
          <li>4</li>
          <li>5</li>
          <li>6</li>
          <li>7</li>
          <li>8</li>
          <li>9</li>
          <li>10</li>
          <li>11</li>
          <li>12</li>
          <li>13</li>
          <li>14</li>
          <li>15</li>
          <li>16</li>
          <li>17</li>
          <li>18</li>
          <li>19</li>
          <li>20</li>
          <li>21</li>
          <li>22</li>
          <li>23</li>
          <li>24</li>
          <li>25</li>
          <li>26</li>
          <li>27</li>
          <li>28</li>
          <li>29</li>
          <li>30</li>
          <li>31</li>
          <li class="next">1</li>
          <li class="next">2</li>
        </ul>
      </article> -->
      <iframe src="../public/svg/2.svg" width="300px" height="300px"></iframe>
      <div class="details">
            <h2 style="text-align:center">THE TURING NUMBERS </h2>
          <h2 style="width:300PX" >  WITH ALL A.M. TURING AWARD WINNERS</h2>
          </div>
    </section>
  </div>
  <div class="grid_8">
    <nav class="box nav">
      <ul>
        <li>
          <a href="#">
            <span class="icon-home"></span><br />
            <span class="title">Home</span>
          </a>
        </li>
        <li>
          <a href="">
            <span class="icon-images"></span><br />
            <span class="title">Gallery</span>
          </a>
        </li>
       <!-- <li>
          <a href="">
            <span class="icon-bubble"></span><br />
            <span class="title">Message</span>            
          </a>
        </li>
        <li>
          <a href="">
            <span class="icon-music"></span><br />
            <span class="title">Music</span> 
          </a>
        </li>-->
        <li>
          <a href="">
            <span class="icon-search"></span><br />
            <span class="title">Search</span>
          </a>
        </li>
        <li>
          <a href="">
            <span class="icon-cog"></span><br />
            <span class="title">Settings</span>
          </a>
        </li>
        <li>
          <a href="">
            <span class="icon-location"></span><br />
            <span class="title">Login</span>
          </a>
        </li>
      </ul>
    </nav>
    <div class="inner_container">
      <div class="col_1of3" >
       <!-- <section class="box widget video">
          <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/6035/scrtpxls_video.png" alt="" />
        </section>-->
        <section class="box widget weather">
          <header class="header">
            <div class="temp"><c:forEach var="scholar" items="${scholarList}">
                ${scholar.tbetweenness} &nbsp;&nbsp;</c:forEach> </div>
            <span class="icon-partlycloudy"></span>
          </header>
          <article>
            <h2>Turing betweenness</h2>
          </article>
        </section>    
        <br/> <br/>
        <section class="box widget weather">
          <header class="header">
            <div class="temp"><c:forEach var="scholar" items="${scholarList}">
                ${scholar.tnumberMin} &nbsp;&nbsp;</c:forEach> </div>
            <span class="icon-partlycloudy"></span>
          </header>
          <article>
            <h2>Turing Number</h2>
          </article>
        </section>
      </div>
      <div class="col_2of3">
        <article class="box post" >
          <div  style="background-color:#120E0D">
       <iframe src="../public/svg/4.svg" width="410px" height="300px"> </iframe>
          </div>
          <div class="details">
            <h2 style="text-align:center">THE INTIMACY </h2>
          <h2 style="text-align:center">  WITH ALL A.M. TURING AWARD WINNERS</h2>
         <p style="width:400px"> The smaller the Turing Number, the closer relationship they had.</p>
          </div>
        </article>
      </div>
      <div class="col_2of3">
       <section class="box post" style="background-color:#D9BC76"  >
          <!--<div class="image">
            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/6035/scrtpxls_audio.png" />
          </div>
          <div class="details">
            <h2 class="album">Geef mij maar Amsterdam</h2>
            <p class="artist">Johnny Jordaan</p>
            <div class="player">
              <div class="bar">
                <div class="progress" data-time="1:45"></div>
              </div>
              <div class="actions">
                <a href="#" class="btn"><span class="icon-arrow-left"></span></a>
                <a href="#" class="btn btn-primary"><span class="icon-pause"></span></a>
                <a href="#" class="btn"><span class="icon-arrow-right"></span></a>
              </div>
            </div>
          </div>-->
          <iframe src="../public/svg/1.svg" width="405px" height="90px">
        </iframe>
         <div class="details" style="background-color:#120E0D; color:#D9BC76; height:30px; font-size:12px; text-align:center">THE CHANGE OF TURING NUMBER BY YEAR</div>
        </section>  
        <section class="box post" style="background-color:#D9BC76" > 
        <iframe src="../public/svg/5.svg" width="405px" height="90px" style="background-color:#D9BC76">
        </iframe>
         <div class="details" style="background-color:#120E0D; color:#D9BC76; height:30px;font-size:12px; text-align:center">THE NODES LINK TO A.M. TURING AWARD WINNERS</div>
        </section>
      </div>
      <div class="col_1of3">
        <section class="box widget find"  style="background-color:#120E0D" >
         <img src="../public/img/dt.jpg">
          <input type="text" name="find" placeholder="Input turing award winners" />
        <!--   <label for="favorite" class="checkbox">
           <input type="checkbox" id="favorite" name="favorite" />
            Add to favorites
          </label>-->
          <a href="../views/baidu-map-polyline-intensity.jsp" class="btn btn-primary btn-large btn-block" style="color:#120E0D">VIEW ON MAPS</a>
         
        </section>
        
        
      </div>
    </div>
  </div>
</div>
  
  
</body>
</html>
