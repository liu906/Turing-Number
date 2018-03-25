<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="d3/d3.js" charset="utf-8"></script>
</head>

<svg id="zzt" width="600" height="100" ></svg >
	<script type="text/javascript">
	//这个数组每一项代表学者每一年的最小图灵数
	var padding={top:20, right:20, bottom:20, left:20};
	var dataset=[8,8,8,8,8,8,8,8,6,6,6,6,6,6,6,6,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5];
	var width=400;
	var height=100;
	var colors=[ "#F1F7D4","#ECF7D4","#E3F7D4","#D8F7D4","#D4F7D8","#D4F7DC","#D4F7E0","#D4F7EA","#D4F7F1","#D4F5F7",

    "#D4F0F7","#D4E7F7","#D4D9F7","#D9D4F7","#E2D4F7","#EBD4F7","#F3D4F7","#F7D4F2","#F7D4E4","#F7D4D7",

    "#FFDAC4","#FFE7C4","#FFF5C4","#F6FFC4","#EDFFC4","#DFFFC4","#D0FFC4","#C4FFCE","#C4FFE7","#C4FFFA",
    "#C4F0FF","#C4DEFF","#C4D3FF","#C8C4FF","#DDC4FF","#B5A1D1","#C1A1D1","#D1A1CF","#D1A1C0","#D1A1B5",
    "#D1A1A1","#A57881","#A57879","#A58F78","#A59C78","#A5A578","#99A578","#90A578","#84A578","#78A57B"];
    //为柱状图添加坐标轴
	var xAxisWidth=500;
	var yAxisWidth=70;
	var xScale=d3.scaleBand()
	.domain(d3.range(dataset.length))
	.rangeRound([0, xAxisWidth])
	.paddingInner(.2);
    
	
	var yScale=d3.scaleLinear().domain([0,d3.max(dataset)])
	.range([0,yAxisWidth]);


	var svg=d3.select("#zzt");
	//var rectStep=23;
	//var rectWidth=20;
	var rect=svg.selectAll("rect").data(dataset).enter()
	.append("rect")
	.attr("fill",function(d,i){
		return colors[i];
	})
	.attr("x",function(d,i){
		return padding.left+xScale(i);
	})
	.attr("y",function(d){
		//return height-padding.bottom-d;
		return height;
	})
	.attr("width",xScale.bandwidth())
	.attr("height",function(d){
		return yScale(d);
	})
	.transition().ease(d3.easeBounce).duration(2000)
	.attr("y",function(d){
		return height-padding.bottom-yScale(d);
	});

	var text=svg.selectAll("text").data(dataset).enter().append("text")
	.attr("fill","#000")
	.attr("font-size","14px")
	.attr("text-anchor","middle")
	.attr("x",function(d,i){
		//return padding.left+i*rectStep;
		return padding.left+xScale(i);

	})
	.attr("y",function(d){
		//return height-padding.bottom-d;
		return height;
	})
	.attr("dx",xScale.bandwidth()/2)
	.attr("dy","1em")
	.text(function(d){
		return d;
	})
	.transition().ease(d3.easeBounce).duration(1000)
	.attr("y",function(d){
		//return height-padding.bottom-d;
		return height-padding.bottom-yScale(d);
	});

	var xAxis=d3.axisBottom().scale(xScale);
	yScale.range([yAxisWidth,0]);
	var yAxis=d3.axisLeft().scale(yScale);
	svg.append("g").attr("class","axis")
	.attr("transform","translate("+padding.left+","+(height-padding.bottom)+")")
	.call(xAxis);
	svg.append("g").attr("class","axis")
	.attr("transform","translate("+(padding.left+10)+","+10+")")
	//这里平移的纵坐标值写死了需要改 “80”
	.call(yAxis);

	</script>
</html>