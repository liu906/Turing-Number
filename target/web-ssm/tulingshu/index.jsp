<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>TuringNumber</title>
<link href="public/css/index_style.css" rel="stylesheet" type="text/css">
<link rel="icon" href="search.html" type="image/x-ico" /> 
 <link href="tulingshu/assets/css/bootstrap-responsive.css" rel="stylesheet">
 <!-- <link rel="stylesheet" type="text/css" href="public/css/home.css"> -->
  <link href="public/css/bootstrap.min.css" rel="stylesheet" media="screen">
  <script src="public/js/jquery.min.js" ></script> 
<script>
function on(x){
	x.src="public/css/homeimg/search_on.png";
	}
function out(x) {
	x.src="public/css/homeimg/search.png";
}
</script>
  <title>Turing Number</title>
</head>
<body>

<!-----HEADER STAR----->


<div class="header" id="demo">
	<div class="top_logo"> </div>  
     
	   <div class="snav">
	  <form method="get" id="searchform" >
      <div class="search">
      <table>
      <tr>
       <td>  <div style="width:500px; text-align:center; vertical-align:middle">
      <input type="text" name="search" placeholder="search" style="width:400px; opacity:0.2;">
	    </div></td>
        <td><div>
    <input class="se" href="#" type="image" onMouseMove="on(this)" onMouseOut="out(this)" src="public/css/homeimg/search.png" style="width:90px; border:0px" >
        </div></td>
        </tr>
        </table>
        </div>
     </form>
     </div>
    
     <div class="topcn" style="font:20px/18px 'microsoft yahei'; color:#0FF;text-align:center;">
 
	</div>
    
    <div class="nav" >
        <a class="gv" href="#">图灵档案</a>
        <a class="gv" href="#">关于我们</a>
        <a class="gv" href="#">更多链接</a>
   </div>
    
  <div class="canvaszz"> </div>
  <canvas id="canvas"></canvas> 
</div>


<!-----HEADER END----->

<!--用来解决视频右键菜单，用于视频上面的遮罩层 START-->
<div class="videozz"></div>
<!--用来解决视频右键菜单，用于视频上面的遮罩层 END-->

<!--音乐 START-->
	<audio controls autoplay class="audio" loop="true">
        <source src="public/css/Music.mp3" type="audio/mp3"> </source>
        <source src="public/css/Music.ogg" type="audio/ogg"> </source>
        <source src="public/css/Music.aac" type="audio/mp4"> </source>
    </audio>
<!--音乐 END-->


<script>
//宇宙特效
"use strict";
var canvas = document.getElementById('canvas'),
  ctx = canvas.getContext('2d'),
  w = canvas.width = window.innerWidth,
  h = canvas.height = window.innerHeight,

  hue = 217,
  stars = [],
  count = 0,
  maxStars = 1300;//星星数量

var canvas2 = document.createElement('canvas'),
  ctx2 = canvas2.getContext('2d');
canvas2.width = 100;
canvas2.height = 100;
var half = canvas2.width / 2,
  gradient2 = ctx2.createRadialGradient(half, half, 0, half, half, half);
gradient2.addColorStop(0.025, '#CCC');
gradient2.addColorStop(0.1, 'hsl(' + hue + ', 61%, 33%)');
gradient2.addColorStop(0.25, 'hsl(' + hue + ', 64%, 6%)');
gradient2.addColorStop(1, 'transparent');

ctx2.fillStyle = gradient2;
ctx2.beginPath();
ctx2.arc(half, half, half, 0, Math.PI * 2);
ctx2.fill();

// End cache

function random(min, max) {
  if (arguments.length < 2) {
    max = min;
    min = 0;
  }

  if (min > max) {
    var hold = max;
    max = min;
    min = hold;
  }

  return Math.floor(Math.random() * (max - min + 1)) + min;
}

function maxOrbit(x, y) {
  var max = Math.max(x, y),
    diameter = Math.round(Math.sqrt(max * max + max * max));
  return diameter / 2;
  //星星移动范围，值越大范围越小，
}

var Star = function() {

  this.orbitRadius = random(maxOrbit(w, h));
  this.radius = random(60, this.orbitRadius) / 8; 
  //星星大小
  this.orbitX = w / 2;
  this.orbitY = h / 2;
  this.timePassed = random(0, maxStars);
  this.speed = random(this.orbitRadius) / 50000; 
  //星星移动速度

    this.alpha = random(2, 10) / 10;
  count++;
  stars[count] = this;
}

Star.prototype.draw = function() {
  var x = Math.sin(this.timePassed) * this.orbitRadius + this.orbitX,
    y = Math.cos(this.timePassed) * this.orbitRadius + this.orbitY,
    twinkle = random(10);

  if (twinkle === 1 && this.alpha > 0) {
    this.alpha -= 0.05;
  } else if (twinkle === 2 && this.alpha < 1) {
    this.alpha += 0.05;
  }

  ctx.globalAlpha = this.alpha;
  ctx.drawImage(canvas2, x - this.radius / 2, y - this.radius / 2, this.radius, this.radius);
  this.timePassed += this.speed;
}

for (var i = 0; i < maxStars; i++) {
  new Star();
}

function animation() {
  ctx.globalCompositeOperation = 'source-over';
  ctx.globalAlpha = 0.5; //尾巴
  ctx.fillStyle = 'hsla(' + hue + ', 64%, 6%, 2)';
  ctx.fillRect(0, 0, w, h)

  ctx.globalCompositeOperation = 'lighter';
  for (var i = 1, l = stars.length; i < l; i++) {
    stars[i].draw();
  };

  window.requestAnimationFrame(animation);
}

animation();
</script>

</body>
</html>