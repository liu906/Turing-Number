<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>person</title>
  <link rel="stylesheet" href="css/roll.css">
   <link rel="stylesheet" href="css/person_style.css">
   <link href="font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet prefetch" href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/6035/grid.css">
<link rel="stylesheet prefetch" href="http://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet prefetch" href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/6035/icomoon-scrtpxls.css">
    <script src="//d3js.org/d3.v3.min.js"></script>
    <script src="//cdn.rawgit.com/newrelic-forks/d3-plugins-sankey/master/sankey.js"></script>
    <script src="//cdn.rawgit.com/misoproject/d3.chart/master/d3.chart.min.js"></script>
    <script src="//cdn.rawgit.com/q-m/d3.chart.sankey/master/d3.chart.sankey.min.js"></script>
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
  background:url(img/timg.jpg);
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

 .black_overlay{ 
            display: none; 
            position: absolute; 
            top: 0%; 
            left: 0%; 
            width: 100%; 
            height: 100%; 
            background-color: black; 
            z-index:1001; 
            -moz-opacity: 0.8; 
            opacity:.80; 
            filter: alpha(opacity=88); 
        } 
        .white_content { 
            display: none; 
            position: absolute; 
            top: 25%; 
            left: 25%; 
            width: 55%; 
            height: 55%; 
            padding: 20px; 
            border: 10px solid #D9BC76; 
            background-color: white; 
            z-index:1002; 
            overflow: auto; 
        } 
    </style>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body>

  <div class="Lnav" style=" background-color:#120E0D; height:40px; width:100%">
   <form role="form" method="get" id="searchform3">
                
                <table>
                    <td width="20%" style="text-align:center"><img src="img/lg.jpg" style="width:40px; height:40px"></td>
                  
                       <td  style="text-align:center"> <div class="form-group col-lg-6" style="width:400px">
                            <input name="search3" class="form-control" type="text" placeholder="search">
                        </div>
                        </td>
                     <td width="100%">   <div class="form-group col-lg-2" >
                            <button type="submit" class="btn btn-primary" style="color:#000000;">search</button>
                        </div> 
                         </td>
                        <td ><span class="fa fa-university fa-2x"   id="loginBtn" name="loginBtn"   style="color:#D9BC76; " onClick="window.open('index.do')"></span></td>
                        <td > <span class="fa fa-user-circle-o fa-2x"  id="signupBtn" name="signupBtn" onClick="window.open('signup.do')" style="color:#D9BC76;" ></span> </td>
                       <td > <span class="fa fa-user-plus fa-2x"  id="homeBtn" name="signupBtn" onClick="window.open('login.do')" style="color:#D9BC76;" ></span> </td>
                         </table>   
            </form>
            </div>
   <div class="background">
<table >
<th style="width:550px">
<div >
<ul class="-center"  >
  <li onClick="window.open('http://amturing.acm.org/award_winners/berners-lee_8087960.cfm')">

    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2016.jpg"></image>
        </svg>
      </div>
      <div class="b" >
        
         <h3> Sir Tim Berners-Lee (2016) turingnumber:${ny16990}</h3>
        
      </div>
    </div>
  </li>
    <li onClick="window.open('http://amturing.acm.org/award_winners/diffie_8371646.cfm')">

    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2015_1.jpg"></image>
        </svg>
      </div>
      <div class="b" >
        
         <h3> Whitfield Diffie (2015)</h3>
        
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/hellman_4055781.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2015_2.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
          Martin Hellman (2015)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/stonebraker_1172121.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2014.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
          Michael Stonebraker (2014)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/lamport_1205376.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2013.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
          Leslie Lamport (2013)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/goldwasser_8627889.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2012_1.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
         Shafi Goldwasser (2012)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/micali_9954407.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2012_2.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
           Silvio Micali (2012)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/pearl_2658896.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2011.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Judea Pearl (2011)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/valiant_2612174.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2010.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Leslie Gabriel Valiant (2010)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/thacker_1336106.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2009.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
          Charles P. Thacker (2009)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/liskov_1108679.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2008.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
          Barbara Liskov (2008)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/clarke_1167964.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2007_1.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
          Edmund Melson Clarke (2007)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/emerson_1671460.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2007_2.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
         E.Allen Emerson (2007)
        </h3>
      </div>
    </div>
  </li>
   <li onClick="window.open('http://amturing.acm.org/award_winners/sifakis_1701095.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2007_3.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
         Joseph Sifakis (2007)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/allen_1012327.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2006.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
         Frances Elizabeth Allen (2006)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/naur_1024454.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2005.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Peter Naur (2005)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/cerf_1083211.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2004_1.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Vinton Gray Cerf (2004)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/kahn_4598637.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2004_2.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Robert Elliot Kahn (2004)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/kay_3972189.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2003.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Alan Kay (2003)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/adleman_7308544.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2002_1.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
       Leonard Max Adleman (2002)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/rivest_1403005.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2002_2.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Ronald Linn Rivest (2002)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/shamir_2327856.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2002_3.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Adi Shamir (2002)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/dahl_6917600.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2001_1.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
         Ole-Johan Dahl (2001)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/nygaard_5916220.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2001_2.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Kristen   Nygaard (2001)
        </h3>
      </div>
    </div>
  </li>
  <li onClick="window.open('http://amturing.acm.org/award_winners/yao_1611524.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/2000.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Andrew Chi-Chih  Yao (2000)
        </h3>
      </div>
    </div>
  </li>
    <li onClick="window.open('http://amturing.acm.org/award_winners/brooks_1002187.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1999.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Frederick  Brooks (1999)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/gray_3649936.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1998.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        James Nicholas  Gray(1998)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/engelbart_5078811.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1997.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Douglas  Engelbart (1997)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/pnueli_4725172.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1996.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
         Amir  Pnueli (1996)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/blum_4659082.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1995.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
       Manuel  Blum (1995)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/feigenbaum_4167235.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1994_1.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
         Edward A  Feigenbaum (1994)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/reddy_9634208.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1994_2.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
     Dabbala Rajagopal  Reddy (1994)
        </h3>
      </div>
    </div>
  </li>  

  </ul>
  <script src="js/index.js"></script>
  </div>
  </th >
  <th>
  <div class="container">

 <div class="container">
  <div class="grid_4">
<section class="box widget locations" style="background-color:#120E0D; height:445px" >
      <div class="avatar">
        <img src="img/1993_1.jpg"  />
      </div>
      <div class="details">
        <h2 style="color:#D9BC76">${scholar.sname}</h2>
        <p>Prinsengracht 281</p>
        <a href="JavaScript:void(0)" class="btn btn-primary btn-block btn-large" style="color:#120E0D"  onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">Experiences</a>
      </div>
    </section>
  </div>

 
  <div class="grid_8">
    
    <div class="inner_container" style="width:750px">
      <div class="col_1of3" >
       <!-- <section class="box widget video">
          <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/6035/scrtpxls_video.png" alt="" />
        </section>-->
        <section class="box widget weather">
          <header class="header" style="height:95px">
            <div class="temp">${scholar.tbetweenness} </div>
            <span class="icon-partlycloudy"></span>
          </header>
          <article>
            <h2>Turing betweenness</h2>
          </article>
        </section>    
        <section class="box widget weather" >
          <header class="header" style="height:95px">
            <div class="temp">${scholar.tnumberMin} </div>
            <span class="icon-partlycloudy"></span>
          </header>
          <article>
            <h2>Turing Number</h2>
          </article>
        </section>
      </div>
     
      <div class="col_2of3" style="width:260px;height:260px"> 
        <article class="box post" style="width:0.1px; height:1px" >
         <table>
      <td width="100%"> 
      <div  style="background-color:#120E0D; text-align:center">
       <iframe src="d3_chart/bzt.jsp" width="260px" height="260px"> </iframe>
          </div>
          </td>
      <td >  
      <div class="details" style="width:100px; height:260px; line-height:30px">
          <h2> THE TURING NUMBER WITH ALL A.M. TURING AWARD WINNERS </h2>
          </div>
          </td>
      </table>
        </article>
    </div> 

      </div>
      <section class="box post" style="background-color:#D9BC76"  >
          <iframe src="d3_chart/zzt.jsp" width="650px" height="120px">
        </iframe>
         <div class="details" style="background-color:#120E0D; color:#D9BC76; height:30px; font-size:12px; text-align:center">THE CHANGE OF TURING NUMBER BY YEAR</div>
        </section>
        </div></div>
      <div class="col_2of3" style="height:310px">
      <!--   -->
        <section class="box post" style="background-color:#D9BC76; height:310px" > 
        <iframe src="d3_chart/ljt.jsp" width="600px" height="270px" style="background-color:#D9BC76">
        </iframe>
         <div class="details" style="background-color:#120E0D; color:#D9BC76; height:40px;font-size:12px; text-align:center">THE NODES LINK TO A.M. TURING AWARD WINNERS</div>
        </section>
      </div>
      <div class="col_1of3">
        <section class="box widget find"  style="background-color:#120E0D" >
         <img src="img/dt.jpg"> 
          <input type="text" name="find" placeholder="Input turing award winners" />
        <!--   <label for="favorite" class="checkbox">
           <input type="checkbox" id="favorite" name="favorite" />
            Add to favorites
          </label>-->
          <a href="tulingshu/views/baidu-map-polyline-intensity.jsp" class="btn btn-primary btn-large btn-block" style="color:#120E0D">VIEW ON MAPS</a>
         
        </section>
      </div>
</div>
  </th>
  <th style="width:550px">
  <div >
  <ul class="-center" >
    <li onClick="window.open('http://amturing.acm.org/award_winners/hartmanis_1059260.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1993_1.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
       Juris Hartmanis (1993)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/stearns_1081900.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1993_2.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Richard Edwin Stearns (1993)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/lampson_1142421.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1992.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
            Butler W  Lampson (1992)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/milner_1569367.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1991.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
    ArthurJohn RobinGorell  Milner (1991)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/corbato_1009471.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1990.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        ernando J  Corbato (1990)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/kahan_1023746.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1989.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
       William Morton Kahan (1989)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/sutherland_3467412.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1988.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
       Ivan Sutherland (1988)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/cocke_2083115.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1987.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        John  Cocke (1987)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/hopcroft_1053917.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1986_1.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        John E Hopcroft (1986)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/tarjan_1092048.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1986_2.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Robert Endre Tarjan (1986)
        </h3>
      </div>
    </div>
  </li>  
  <li onClick="window.open('http://amturing.acm.org/award_winners/karp_3256708.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1985.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
      Richard Manning Karp (1985)
        </h3>
      </div>
    </div>
  </li>  
  <li  onClick="window.open('http://amturing.acm.org/award_winners/wirth_1025774.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1984.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Niklaus E Wirth (1984)
        </h3>
      </div>
    </div>
  </li>  
  <li  onClick="window.open('http://amturing.acm.org/award_winners/ritchie_1506389.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1983_1.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
       Dennis M.  Ritchie (1983)
        </h3>
      </div>
    </div>
  </li>  
  <li  onClick="window.open('http://amturing.acm.org/award_winners/thompson_4588371.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1983_2.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Kenneth Lane Thompson (1983)
        </h3>
      </div>
    </div>
  </li>  
  <li  onClick="window.open('http://amturing.acm.org/award_winners/cook_n991950.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1982.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
       Stephen Arthur  Cook (1982)
        </h3>
      </div>
    </div>
  </li>  
  <li  onClick="window.open('http://amturing.acm.org/award_winners/codd_1000892.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1981.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Edgar F.  Codd (1981)
        </h3>
      </div>
    </div>
  </li>  
  <li  onClick="window.open('http://amturing.acm.org/award_winners/hoare_4622167.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1980.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
      C. Antony R. Hoare (1980)
        </h3>
      </div>
    </div>
  </li> 
   <li  onClick="window.open('http://amturing.acm.org/award_winners/iverson_9147499.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1979.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
       Kenneth E.  Iverson (1979)
        </h3>
      </div>
    </div>
  </li>  
  <li  onClick="window.open('http://amturing.acm.org/award_winners/floyd_3720707.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1978.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
       Robert W  Floyd (1978)
        </h3>
      </div>
    </div>
  </li>  
  <li  onClick="window.open('http://amturing.acm.org/award_winners/backus_0703524.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1977.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
       John   Backus (1977)
        </h3>
      </div>
    </div>
  </li> 
   <li  onClick="window.open('http://amturing.acm.org/award_winners/rabin_9681074.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1976_1.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
         Michael O. Rabin (1976)
        </h3>
      </div>
    </div>
  </li>  
  <li  onClick="window.open('http://amturing.acm.org/award_winners/scott_1193622.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1976_2.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
     Dana Stewart   Scott (1976)
        </h3>
      </div>
    </div>
  </li>  
  <li  onClick="window.open('http://amturing.acm.org/award_winners/newell_3167755.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1975_1.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Allen  Newell (1975)
        </h3>
      </div>
    </div>
  </li>  
  <li  onClick="window.open('http://amturing.acm.org/award_winners/simon_1031467.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1975_2.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
         Herbert  Alexander  Simon (1975)
        </h3>
      </div>
    </div>
  </li>  
  <li  onClick="window.open('http://amturing.acm.org/award_winners/knuth_1013846.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1974.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
         Donald  Ervin Knuth (1974)
        </h3>
      </div>
    </div>
  </li>  
  <li  onClick="window.open('http://amturing.acm.org/award_winners/bachman_9385610.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1973.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
       Charles William Bachman (1973)
        </h3>
      </div>
    </div>
  </li>  
  <li  onClick="window.open('http://amturing.acm.org/award_winners/dijkstra_1053701.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1972.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
      Edsger Wybe   Dijkstra (1972)
        </h3>
      </div>
    </div>
  </li>
    <li  onClick="window.open('http://amturing.acm.org/award_winners/mccarthy_1118322.cfm')">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1971.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
       John  McCarthy (1971)
        </h3>
      </div>
    </div>
  </li>
  <li  onClick="window.open('http://amturing.acm.org/award_winners/wilkinson_0671216.cfm')" style="height:70px; width:70px">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1970.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
       James Hardy  Wilkinson (1970)
        </h3>
      </div>
    </div>
  </li>
  <li  onClick="window.open('http://amturing.acm.org/award_winners/minsky_7440781.cfm')" style="height:75px; width:75px">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1969.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
         Marvin  Minsky (1969)
        </h3>
      </div>
    </div>
  </li>
  <li  onClick="window.open('http://amturing.acm.org/award_winners/hamming_1000652.cfm')" style="height:75px; width:75px">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1968.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Richard W Hamming (1968)
        </h3>
      </div>
    </div>
  </li>
  <li  onClick="window.open('http://amturing.acm.org/award_winners/wilkes_1001395.cfm')" style="height:75px; width:75px">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1967.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
        Maurice V. Wilkes (1967)
        </h3>
      </div>
    </div>
  </li>
  <li  onClick="window.open('http://amturing.acm.org/award_winners/perlis_0132439.cfm')" style="height:75px; width:75px">
    <div class="w">
      <div class="f">
        <svg viewBox="0 0 180 180">
          <image height="100%" preserveAspectRatio="xMidYMid slice" width="100%" xlink:href="trimg/1966.jpg"></image>
        </svg>
      </div>
      <div class="b">
        <h3>
       Alan J  Perlis (1966)
        </h3>
      </div>
    </div>
  </li>
</ul>
<script src="js/index.js"></script>
</div>
</th>
</table>



  
  </div>
      <div id="light" class="white_content" style="background-image:url(img/timg.jpg)">
        
<div style="text-align:end" >
<span href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'" class="fa fa-times fa-2x"  style="color:#D9BC76"></span>
</div>
<div class="experiences" style="text-align:center">
<p style="color:#D9BC76">${scholar.experience} </p>
</div>
</div>
   <div id="fade" class="black_overlay"></div>     
</body>
</html>
