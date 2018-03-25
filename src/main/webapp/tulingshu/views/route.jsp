<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>d3.chart.sankey (product demo)</title>
    <script src="//d3js.org/d3.v3.min.js"></script>
    <script src="//cdn.rawgit.com/newrelic-forks/d3-plugins-sankey/master/sankey.js"></script>
    <script src="//cdn.rawgit.com/misoproject/d3.chart/master/d3.chart.min.js"></script>
    <script src="//cdn.rawgit.com/q-m/d3.chart.sankey/master/d3.chart.sankey.min.js"></script>
    <style>
      body {
        padding: 10px;
        min-width: 600px;
        max-width: 1200px;
        margin: auto;
      }
      #chart {
        height: 500px;
        font: 13px sans-serif;
      }
      .node rect {
        fill-opacity: .9;
        shape-rendering: crispEdges;
        stroke-width: 0;
      }
      .node text {
        text-shadow: 0 1px 0 #fff;
      }
      .link {
        fill: none;
        stroke: #000;
        stroke-opacity: .2;
      }
    </style>
  </head>
  <body>
    <div id="chart"></div>

    <script>
      var colors = {
            'wangwei':         '#edbd00',
            'liubin':          '#367d85',
            'chenzhikui':      '#97ba4c',
            'Feng Xia':        '#f5662b',
            'kalifa':           '#3f3e47',
            'fallback':         '#9f9fa3'
          };
      d3.json("route.json", function(error, json) {
        var chart = d3.select("#chart").append("svg").chart("Sankey.Path");
        chart
          .name(label)
          .colorNodes(function(name, node) {
            return color(node, 1) || colors.fallback;
          })
          .colorLinks(function(link) {
            return color(link.source, 4) || color(link.target, 1) || colors.fallback;
          })
          .nodeWidth(15)
          .nodePadding(10)
          .spread(true)
          .iterations(0)
          .draw(json);
        function label(node) {
          return node.name.replace(/\s*\(.*?\)$/, '');
        }
        function color(node, depth) {
          var id = node.id.replace(/(_score)?(_\d+)?$/, '');
          if (colors[id]) {
            return colors[id];
          } else if (depth > 0 && node.targetLinks && node.targetLinks.length == 1) {
            return color(node.targetLinks[0].source, depth-1);
          } else {
            return null;
          }
        }
      });
    </script>
  </body>
</html>