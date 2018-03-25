<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="d3/d3.js" charset="utf-8"></script>
</head>
<svg id="bzt" width="230" height="230" viewBox="0 0 400 400"></svg >
<script type="text/javascript">
    var svg=d3.select("#bzt");
    var width=400;
    var height=400;
	//var numset=[] ;//(1)数组初始化
	//var nameset=[] ;//全局变量方便加载完了使用
    //60位图灵奖获得者的数据集数组(2X60) "a"替换成图灵奖获得者name '1'变成图灵数
	var Sid="287144";
    var dataset=[["a",1],["a",12],["a",13],["a",41],["a",23],["a",21],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1],["a",1]];
	
    //绘制饼状图
	/*-d3.csv("data/route.csv",function(error,data){
    if(error){
        console.log(error);
    } else {  //(3)取出其中的数字，和类别名
        for(var i=0;i<data.length;i++){
            numset.push(parseFloat(data[i].Delicious));
            nameset.push(function()
			{data[i].Food
			for(var j=0;j<data[0].length;j++)
			{}
			
			
			
			
			});
        }
        var pie=d3.layout.pie(numset);// (4)numset转化数据为适合生成饼图的对象数组
        // 略，使用加载的数据画圆环图
    }
});*/
    var pie=d3.pie().value(function(d){
        return 1;
    })
    var piedata=pie(dataset);
    var outerRadius=150;
    var innerRadius=75;
    var arc=d3.arc().innerRadius(innerRadius).outerRadius(outerRadius);
    //饼状图的颜色数组 size=60
    var color=["#FFFAF8","#FFF5F1","#FFECE3","#FFE8DC","#FFDFCE","#F9DAD6","#F9E3D6","#F7E8D4","#F7EDD4","#F7F7D4",
    "#F1F7D4","#ECF7D4","#E3F7D4","#D8F7D4","#D4F7D8","#D4F7DC","#D4F7E0","#D4F7EA","#D4F7F1","#D4F5F7",

    "#D4F0F7","#D4E7F7","#D4D9F7","#D9D4F7","#E2D4F7","#EBD4F7","#F3D4F7","#F7D4F2","#F7D4E4","#F7D4D7",

    "#FFDAC4","#FFE7C4","#FFF5C4","#F6FFC4","#EDFFC4","#DFFFC4","#D0FFC4","#C4FFCE","#C4FFE7","#C4FFFA",
    "#C4F0FF","#C4DEFF","#C4D3FF","#C8C4FF","#DDC4FF","#B5A1D1","#C1A1D1","#D1A1CF","#D1A1C0","#D1A1B5",
    "#D1A1A1","#A57881","#A57879","#A58F78","#A59C78","#A5A578","#99A578","#90A578","#84A578","#78A57B"]

    var arcs=svg.selectAll("g").data(piedata).enter().append("g").attr("transform","translate("+(width/2)+","+(height/2)+")");
    arcs.append("path").attr("fill",function(d,i){
        return color[i];
    }).attr("d",function(d){
        return arc(d);
    });

    arcs.append("text").attr("transform",function(d){
        var x=arc.centroid(d)[0]*1.2;
        var y=arc.centroid(d)[1]*1.2;
        return "translate("+x+","+y+")";
    })
    .attr("text-anchor","middle").attr("fill","#272822").attr("font-size",".1em")
    .text(function(d){
        return d.data[1];
    })
    arcs.append("line")
    .attr("stroke","black")
    .attr("x1",function(d){
        return arc.centroid(d)[0]*1.35;
    })
    .attr("y1",function(d){
        return arc.centroid(d)[1]*1.35;
    })
    .attr("x2",function(d){
        return arc.centroid(d)[0]*1.5;
    })
    .attr("y2",function(d){
        return arc.centroid(d)[1]*1.5;
    })

    arcs.append("text")
    .attr("transform",function(d){
        var x=arc.centroid(d)[0]*1.6;
        var y=arc.centroid(d)[1]*1.6;
        return "translate("+x+","+y+")";
    })
    .attr("text-anchor","middle").attr("fill","#D9BC76").attr("class","turingName")
    .text(function(d){
        return d.data[0];
    });


</script>	
</html>