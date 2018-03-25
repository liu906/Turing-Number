<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>search</title>
        <script src="js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <link href="tulingshu/public/css/bootstrap.min.css" rel="stylesheet">
        <!--你自己的样式文件 -->
        <link href="tulingshu/public/css/search.css" rel="stylesheet">
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <!-- 以下两个插件用于在IE8以及以下版本浏览器支持HTML5元素和媒体查询，如果不需要用可以移除 -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style>
		.lists
		{
			background-image:url(tulingshu/public/image/timg.jpg);
			}
			.personal{
	box-shadow: 2px 2px 5px 5px #D9BC76;
}
		</style>
    </head>
  <!-- <body   background="../public/image/timg.jpg">-->
   <body style=" background-image:url(tulingshu/public/image/timg.jpg);overflow-x:hidden;">
          <script src="tulingshu/public/js/list.js"></script>
        <div class="container Lnav" style=" background-color:#120E0D">
            <form role="form" method="get" id="searchform2">
                <div class="row">
                    <div class="col-lg-1 col-lg-offset-2"><img src="tulingshu/public/image/lg.jpg" style="width:50px" onClick="window.open('index.do')"></div>
                    <div class="col-lg-8">
                        <div class="form-group col-lg-6">
                            <input class="form-control" name="search2" id="search2" type="text" placeholder="search2">
                        </div>
                        <div class="form-group col-lg-2">
                            <button href="search.do" type="submit" class="btn btn-primary">search</button>
                        </div>        
                    </div>
                    <div class="col-lg-1">
                        <span class="fa fa-user-circle-o fa-4x" type="button" id="loginBtn" name="loginBtn" onClick="window.open('login.do')" ></span>
                        <span class="fa fa-user-plus fa-4x" type="button" id="signupBtn" name="signinBtn" onClick="window.open('signup.do')" ></span>
                    </div>
                    </div><!--logo -->
                </div> <!--class=row -->
            </form>
        </div>

        <div class="resultInfo row" style="background-color:#D9BC76">
            <div class="col-lg-9 col-lg-offset-3">
                <strong style="color:#120E0D">search result for<span>name</span></strong>
                <span class="resultAndTime">
                    <span class="result"> 54</span>result,<span class="ms"> 0.001</span>ms.
                </span>
            </div>
        </div>
        <div style="height:20px"></div>
        <div id="user">
         <ul class="list" style="list-style:none">  </ul>   
  <div style="text-align:center">
  <ul class="pagination" style="list-style:none;"> </ul>
  </div>
</div>

         <!-- 如果要使用Bootstrap的js插件，必须先调入jQuery -->
        <script src="http://libs.baidu.com/jquery/1.9.0/jquery.min.js"></script>
        <!-- 包括所有bootstrap的js插件或者可以根据需要使用的js插件调用　-->

        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
        <script>
        $(function(){
            $(".btn").click(function(){
              $("#mymodal").modal("toggle");
          });
        });
        </script>
        <script>
var options = {
 valueNames: [ 'sname', 'institution', 'tnumberMin', 'experience','coordinate','tbetweenness','sid',{ attr: 'href', name: 'link' }
 ],
  page: 5 ,
 pagination: true ,
  item: '<li><div style="height:20px"></div><div class="row"><div class="col-lg-6 col-lg-offset-3 personal "><div class="col-lg-2" style=" width:20%"><img src="tulingshu/public/image/moren.jpg" style="width:115px"></div><div class="col-lg-9"><div class="row"><h3><a class="sname link" name="sname" id="sname" ></a></h3></div><div class="row"><strong>Institution: </strong><strong class="institution" ></strong></div><div class="row"><strong>Turing Number: </strong><strong class="tnumberMin"></strong></div><div class="row"><small>Experience: </small><small class="experience"></small></div></div></div></div></li>'
};

var values=${schlarja};
var userList = new List('user', options, values);
		</script>
          <script src="tulingshu/public/js/list.pagination.min.js"></script>
    </body>
</html>