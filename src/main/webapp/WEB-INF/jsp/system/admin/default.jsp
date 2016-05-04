<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">

<!-- jsp文件头和头部 -->
<%@ include file="top.jsp"%>
</head>
<body>

	<div class="container-fluid" id="main-container">
		

			<div id="page-content" class="clearfix">

				<div class="page-header position-relative">
					<h1>
						后台默认首页1 <small><i class="icon-double-angle-right"></i> </small>
					</h1>
				</div>
				<!--/page-header-->

				<div class="row-fluid">


					<div class="space-6">ssssss</div>
					<div class="row-fluid">
                <%--   <div class="center">--%>

                            <table border="1">
                                <div id="myDiagramDiv"  style="width:1500px; height:700px;  background-color: #ffffff;"></div>
                            </table>

                  <%-- </div>--%>
					<%--	<%
							String strXML = "";

							strXML += "<graph caption='对比表' xAxisName='月份' yAxisName='值' decimalPrecision='0' formatNumberScale='0'>";
							strXML += "<set name='1' value='462' color='AFD8F8'/>";
							strXML += "<set name='2' value='857' color='F6BD0F'/>";
							strXML += "<set name='3' value='671' color='8BBA00'/>";
							strXML += "<set name='4' value='494' color='FF8E46'/>";
							strXML += "<set name='5' value='761' color='008E8E'/>";
							strXML += "<set name='6' value='960' color='D64646'/>";
							strXML += "<set name='7' value='629' color='8E468E'/>";
							strXML += "<set name='8' value='622' color='588526'/>";
							strXML += "<set name='9' value='376' color='B3AA00'/>";
							strXML += "<set name='10' value='494' color='008ED6'/>";
							strXML += "<set name='11' value='761' color='9D080D'/>";
							strXML += "<set name='12' value='960' color='A186BE'/>";
							strXML += "</graph>";
							//Create the chart - Column 3D Chart with data from strXML variable using dataXML method
						%>


              --%>

						<!-- 柱状图 -->
					<%--	<div class="center">
							<div style="float:left;">
								<table border="0" width="50%">

									<tr>
										<td><jsp:include
												page="../../FusionChartsHTMLRenderer.jsp" flush="true">
												<jsp:param name="chartSWF" value="static/FusionCharts/Area2D.swf" />
												<jsp:param name="strURL" value="" />
												<jsp:param name="strXML" value="<%=strXML%>"/>
												<jsp:param name="chartId" value="myNext" />
												<jsp:param name="chartWidth" value="500" />
												<jsp:param name="chartHeight" value="300" />
												<jsp:param name="debugMode" value="false" />
											</jsp:include></td>

									</tr>
								</table>
							</div>
							<div style="float:right;">
								<table border="0" width="50%">
									<tr>
                                        <td><jsp:include
                                                page="../../FusionChartsHTMLRenderer.jsp" flush="true">
                                            <jsp:param name="chartSWF" value="static/FusionCharts/Column3D.swf" />
                                            <jsp:param name="strURL" value="" />
                                            <jsp:param name="strXML" value="<%=strXML%>" />
                                            <jsp:param name="chartId" value="myNext" />
                                            <jsp:param name="chartWidth" value="500" />
                                            <jsp:param name="chartHeight" value="300" />
                                            <jsp:param name="debugMode" value="false" />
                                        </jsp:include></td>
									</tr>
								</table>
							</div>
						</div>




						<div class="center">
							<div style="float:left;">
								<table border="0" width="50%">
									<tr>
										<td><jsp:include
												page="../../FusionChartsHTMLRenderer.jsp" flush="true">
												<jsp:param name="chartSWF" value="static/FusionCharts/Bar2D.swf" />
												<jsp:param name="strURL" value="" />
												<jsp:param name="strXML" value="<%=strXML%>" />
												<jsp:param name="chartId" value="myNext" />
												<jsp:param name="chartWidth" value="500" />
												<jsp:param name="chartHeight" value="300" />
												<jsp:param name="debugMode" value="false" />
											</jsp:include></td>
									</tr>
								</table>
							</div>
							<div style="float:right;">
								<table border="0" width="50%">
									<tr>
										<td><jsp:include
												page="../../FusionChartsHTMLRenderer.jsp" flush="true">
												<jsp:param name="chartSWF" value="static/FusionCharts/Column2D.swf" />
												<jsp:param name="strURL" value="" />
												<jsp:param name="strXML" value="<%=strXML%>" />
												<jsp:param name="chartId" value="myNext" />
												<jsp:param name="chartWidth" value="500" />
												<jsp:param name="chartHeight" value="300" />
												<jsp:param name="debugMode" value="false" />
											</jsp:include></td>
									</tr>
								</table>
							</div>
						</div>







						<div class="center">
							<div style="float:left;">
								<table border="0" width="50%">
									<tr>
										<td><jsp:include
												page="../../FusionChartsHTMLRenderer.jsp" flush="true">
												<jsp:param name="chartSWF"
													value="static/FusionCharts/Doughnut2D.swf" />
												<jsp:param name="strURL" value="" />
												<jsp:param name="strXML" value="<%=strXML%>" />
												<jsp:param name="chartId" value="myNext" />
												<jsp:param name="chartWidth" value="500" />
												<jsp:param name="chartHeight" value="300" />
												<jsp:param name="debugMode" value="false" />
											</jsp:include></td>
									</tr>
								</table>
							</div>
							<div style="float:right;">
								<table border="0" width="50%">
									<tr>
										<td><jsp:include
												page="../../FusionChartsHTMLRenderer.jsp" flush="true">
												<jsp:param name="chartSWF"
													value="static/FusionCharts/Doughnut3D.swf" />
												<jsp:param name="strURL" value="" />
												<jsp:param name="strXML" value="<%=strXML%>" />
												<jsp:param name="chartId" value="myNext" />
												<jsp:param name="chartWidth" value="500" />
												<jsp:param name="chartHeight" value="300" />
												<jsp:param name="debugMode" value="false" />
											</jsp:include></td>
									</tr>
								</table>
							</div>
						</div>







						<div class="center">
							<div style="float:left;">
								<table border="0" width="50%">
									<tr>
										<td><jsp:include
												page="../../FusionChartsHTMLRenderer.jsp" flush="true">
												<jsp:param name="chartSWF" value="static/FusionCharts/SSGrid.swf" />
												<jsp:param name="strURL" value="" />
												<jsp:param name="strXML" value="<%=strXML%>" />
												<jsp:param name="chartId" value="myNext" />
												<jsp:param name="chartWidth" value="500" />
												<jsp:param name="chartHeight" value="300" />
												<jsp:param name="debugMode" value="false" />
											</jsp:include></td>
									</tr>
								</table>
							</div>
							<div style="float:right;">
								<table border="0" width="50%">
									<tr>
										<td><jsp:include
												page="../../FusionChartsHTMLRenderer.jsp" flush="true">
												<jsp:param name="chartSWF" value="static/FusionCharts/Pie3D.swf" />
												<jsp:param name="strURL" value="" />
												<jsp:param name="strXML" value="<%=strXML%>" />
												<jsp:param name="chartId" value="myNext" />
												<jsp:param name="chartWidth" value="500" />
												<jsp:param name="chartHeight" value="300" />
												<jsp:param name="debugMode" value="false" />
											</jsp:include></td>
									</tr>
								</table>
							</div>
						</div>






						<div class="center">
							<div style="float:left;">
								<table border="0" width="50%">
									<tr>
										<td><jsp:include
												page="../../FusionChartsHTMLRenderer.jsp" flush="true">
												<jsp:param name="chartSWF" value="static/FusionCharts/Pie2D.swf" />
												<jsp:param name="strURL" value="" />
												<jsp:param name="strXML" value="<%=strXML%>" />
												<jsp:param name="chartId" value="myNext" />
												<jsp:param name="chartWidth" value="500" />
												<jsp:param name="chartHeight" value="300" />
												<jsp:param name="debugMode" value="false" />
											</jsp:include></td>
									</tr>
								</table>
							</div>
							<div style="float:right;">
								<table border="0" width="50%">
									<tr>
										<td><jsp:include
												page="../../FusionChartsHTMLRenderer.jsp" flush="true">
												<jsp:param name="chartSWF" value="static/FusionCharts/Line.swf" />
												<jsp:param name="strURL" value="" />
												<jsp:param name="strXML" value="<%=strXML%>" />
												<jsp:param name="chartId" value="myNext" />
												<jsp:param name="chartWidth" value="500" />
												<jsp:param name="chartHeight" value="300" />
												<jsp:param name="debugMode" value="false" />
											</jsp:include></td>
									</tr>
								</table>
							</div>
						</div>--%>

					</div>
				</div>
				<!--/row-->










		</div>
		<!-- #main-content -->
	</div>
	<!--/.fluid-container#main-container-->
	<a href="#" id="btn-scroll-up" class="btn btn-small btn-inverse"> <i
		class="icon-double-angle-up icon-only"></i>
	</a>
	<!-- basic scripts -->
	<script src="static/1.9.1/jquery.min.js"></script>
	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='static/js/jquery-1.9.1.min.js'>\x3C/script>");
	</script>

	<script src="static/js/bootstrap.min.js"></script>
	<!-- page specific plugin scripts -->

	<!--[if lt IE 9]>
		<script type="text/javascript" src="static/js/excanvas.min.js"></script>
		<![endif]-->
	<script type="text/javascript" src="static/js/jquery-ui-1.10.2.custom.min.js"></script>
	<script type="text/javascript" src="static/js/jquery.ui.touch-punch.min.js"></script>
	<script type="text/javascript" src="static/js/jquery.slimscroll.min.js"></script>
	<script type="text/javascript" src="static/js/jquery.easy-pie-chart.min.js"></script>
	<script type="text/javascript" src="static/js/jquery.sparkline.min.js"></script>

	<script type="text/javascript" src="static/js/jquery.flot.min.js"></script>
	<script type="text/javascript" src="static/js/jquery.flot.pie.min.js"></script>
	<script type="text/javascript" src="static/js/jquery.flot.resize.min.js"></script>
	<!-- ace scripts -->
	<script src="static/js/ace-elements.min.js"></script>
	<script src="static/js/ace.min.js"></script>
	<!-- inline scripts related to this page -->

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/gojs/1.6.2/go-debug.js"></script>
    <script>

    var $$ = go.GraphObject.make;  // for conciseness in defining templates

    myDiagram =
            $$(go.Diagram, "myDiagramDiv",  // must be the ID or reference to div
                    {
                        "toolManager.hoverDelay": 100,  // 100 milliseconds instead of the default 850
                        allowCopy: false,
                        layout:  // create a TreeLayout for the family tree
                                $$(go.TreeLayout,
                                        { angle: 90, nodeSpacing: 10, layerSpacing: 40, layerStyle: go.TreeLayout.LayerUniform })
                    });

    var bluegrad = '#29A329';
    var pinkgrad = '#B11B1B';

    // Set up a Part as a legend, and place it directly on the diagram
    myDiagram.add(
            $$(go.Part, "Table",
                    { position: new go.Point(300, 10), selectable: false },
                    $$(go.TextBlock, "华北机房拓扑图",
                            { row: 0, font: "700 14px Droid Serif, sans-serif" }),  // end row 0
                    $$(go.Panel, "Horizontal",
                            { row: 1, alignment: go.Spot.Left },
                            $$(go.Shape, "Rectangle",
                                    { desiredSize: new go.Size(30, 30), fill: bluegrad, margin: 5 }),
                            $$(go.TextBlock, "正常",
                                    { font: "700 13px Droid Serif, sans-serif" })
                    ),  // end row 1
                    $$(go.Panel, "Horizontal",
                            { row: 2, alignment: go.Spot.Left },
                            $$(go.Shape, "Rectangle",
                                    { desiredSize: new go.Size(30, 30), fill: pinkgrad, margin: 5 }),
                            $$(go.TextBlock, "异常",
                                    { font: "700 13px Droid Serif, sans-serif" })
                    )  // end row 2
            ));

    // get tooltip text from the object's data
    function tooltipTextConverter(person) {
        var str = "";
        str += "Born: " + person.birthYear;
        if (person.deathYear !== undefined) str += "\nDied: " + person.deathYear;
        if (person.reign !== undefined) str += "\nReign: " + person.reign;
        return str;
    }

    // define tooltips for nodes
    var tooltiptemplate =
            $$(go.Adornment, "Auto",
                    $$(go.Shape, "Rectangle",
                            { fill: "whitesmoke", stroke: "black" }),
                    $$(go.TextBlock,
                            { font: "bold 8pt Helvetica, bold Arial, sans-serif",
                                wrap: go.TextBlock.WrapFit,
                                margin: 5 },
                            new go.Binding("text", "", tooltipTextConverter))
            );

    // define Converters to be used for Bindings
    function genderBrushConverter(gender) {
        if (gender === "M") return bluegrad;
        if (gender === "F") return pinkgrad;
        return "orange";
    }

    // replace the default Node template in the nodeTemplateMap
    myDiagram.nodeTemplate =
            $$(go.Node, "Auto",
                    { deletable: false, toolTip: tooltiptemplate },
                    new go.Binding("text", "name"),
                    $$(go.Shape, "Rectangle",
                            { fill: "lightgray",
                                stroke: null, strokeWidth: 0,
                                stretch: go.GraphObject.Fill,
                                alignment: go.Spot.Center },
                            new go.Binding("fill", "gender", genderBrushConverter)),
                    $$(go.TextBlock,
                            { font: "700 12px Droid Serif, sans-serif",
                                textAlign: "center",
                                margin: 10, maxSize: new go.Size(80, NaN) },
                            new go.Binding("text", "name"))
            );

    // define the Link template
    myDiagram.linkTemplate =
            $$(go.Link,  // the whole link panel
                    { routing: go.Link.Orthogonal, corner: 5, selectable: false },
                    $$(go.Shape, { strokeWidth: 3, stroke: '#424242' }));  // the gray link shape

    // here's the family data
    var nodeDataArray = [
        { key: 0, name: "前端", gender: "M", birthYear: "1865", deathYear: "1936", reign: "1910-1936" },
        { key: 1, parent: 0, name: "前端实例", gender: "M", birthYear: "1894", deathYear: "1972", reign: "1936" },
        { key: 2, parent: 0, name: "前端服务", gender: "M", birthYear: "1895", deathYear: "1952", reign: "1936-1952" },
        { key: 3, parent: 0, name: "前端VIP", gender: "M", birthYear: "1895", deathYear: "1952", reign: "1936-1952" },
        { key: 4, parent: 2, name: "中间层", gender: "F", birthYear: "1926", reign: "1952-" },
        { key: 5, parent: 4, name: "中间层实例", gender: "M", birthYear: "1948" },
        { key: 6, parent: 4, name: "中间层服务", gender: "M", birthYear: "1982" },
        { key: 7, parent: 4, name: "中间层VIP", gender: "M", birthYear: "1984" },
        { key: 8, parent: 6, name: "ECS", gender: "F", birthYear: "1950" },
        { key: 9, parent: 6, name: "云数据库", gender: "M", birthYear: "1977" },
        { key: 10, parent: 6, name: "云盘监控", gender: "F", birthYear: "2010" },
        { key: 11, parent: 6, name: "Zookeeper", gender: "F", birthYear: "1981" },
        { key: 12, parent: 6, name: "Jimdb", gender: "M", birthYear: "1960" },
        { key: 13, parent: 6, name: "TP防护", gender: "F", birthYear: "1988" },
        { key: 14, parent: 6, name: "Web防护", gender: "F", birthYear: "1990" },
        { key: 15, parent: 6, name: "计费", gender: "M", birthYear: "1964" },
        { key: 16, parent: 6, name: "用户中心", gender: "F", birthYear: "2003" },
        { key: 17, parent: 6, name: "Jsf", gender: "M", birthYear: "2007" },
        { key: 18, parent: 6, name: "Mysql", gender: "F", birthYear: "1930", deathYear: "2002" },
        { key: 19, parent: 8, name: "ECSVIP", gender: "M", birthYear: "1961" },
        { key: 20, parent: 8, name: "ECS认证", gender: "F", birthYear: "1964" },
        { key: 21, parent: 8, name: "ECS服务", gender: "M", birthYear: "1996" },
        { key: 22, parent: 9, name: "云数据库VIP", gender: "M", birthYear: "1999" },
        { key: 49, parent: 9, name: "云数据库认证", gender: "M", birthYear: "1999" },
        { key: 23, parent: 9, name: "云数据库服务", gender: "F", birthYear: "1897", deathYear: "1965" },
        { key: 24, parent: 10, name: "云盘监控VIP", gender: "M", birthYear: "1923", deathYear: "2011" },
        { key: 25, parent: 10, name: "云盘监控服务", gender: "M", birthYear: "1950" },
        { key: 26, parent: 11, name: "ZookeeperVIP", gender: "F", birthYear: "1975" },
        { key: 27, parent: 11, name: "Zookeeper服务", gender: "M", birthYear: "1978" },
        { key: 28, parent: 12, name: "JimdbVIP", gender: "M", birthYear: "1980" },
        { key: 29, parent: 12, name: "Jimdb服务", gender: "M", birthYear: "1982" },
        { key: 30, parent: 13, name: "TP防护VIP", gender: "M", birthYear: "1953" },
        { key: 31, parent: 13, name: "TP防护服务", gender: "F", birthYear: "1973" },
        { key: 32, parent: 14, name: "Web防护VIP", gender: "M", birthYear: "1977" },
        { key: 33, parent: 14, name: "Web防护服务", gender: "F", birthYear: "1981" },
        { key: 34, parent: 15, name: "计费VIP", gender: "M", birthYear: "1985" },
        { key: 35, parent: 15, name: "计费服务", gender: "M", birthYear: "1955" },
        { key: 36, parent: 16, name: "用户中心VIP", gender: "M", birthYear: "1982" },
        { key: 37, parent: 16, name: "用户中心服务", gender: "F", birthYear: "1984" },
        { key: 38, parent: 17, name: "JsfVIP", gender: "F", birthYear: "1986" },
        { key: 39, parent: 17, name: "Jsf服务", gender: "F", birthYear: "2005" },
        { key: 40, parent: 18, name: "MysqlVIP", gender: "M", birthYear: "1964" },
        { key: 41, parent: 18, name: "Mysql服务", gender: "F", birthYear: "1996" },
        { key: 44, parent: 21, name: "计算", gender: "M", birthYear: "1924", deathYear: "1998" },
        { key: 45, parent: 21, name: "网络", gender: "M", birthYear: "1953" },
        { key: 46, parent: 21, name: "镜像", gender: "M", birthYear: "1991" },
        { key: 47, parent: 21, name: "监控", gender: "M", birthYear: "1962" },
        { key: 48, parent: 21, name: "云盘", gender: "M", birthYear: "2002" }

    ];

    var nodeDataArray1 = [
        { key: 0, name: "前端", gender: "M", birthYear: "1865", deathYear: "1936", reign: "1910-1936" },
        { key: 1, parent: 0, name: "前端实例", gender: "M", birthYear: "1894", deathYear: "1972", reign: "1936" },
        { key: 2, parent: 0, name: "前端服务", gender: "M", birthYear: "1895", deathYear: "1952", reign: "1936-1952" },
        { key: 3, parent: 0, name: "前端VIP", gender: "M", birthYear: "1895", deathYear: "1952", reign: "1936-1952" },
        { key: 4, parent: 2, name: "中间层", gender: "F", birthYear: "1926", reign: "1952-" },
        { key: 5, parent: 4, name: "中间层实例", gender: "M", birthYear: "1948" },
        { key: 6, parent: 4, name: "中间层服务", gender: "M", birthYear: "1982" },
        { key: 7, parent: 4, name: "中间层VIP", gender: "M", birthYear: "1984" },
        { key: 8, parent: 6, name: "ECS", gender: "F", birthYear: "1950" },
        { key: 9, parent: 6, name: "云数据库", gender: "M", birthYear: "1977" },
        { key: 10, parent: 6, name: "云盘监控", gender: "F", birthYear: "2010" },
        { key: 11, parent: 6, name: "Zookeeper", gender: "F", birthYear: "1981" },
        { key: 12, parent: 6, name: "Jimdb", gender: "M", birthYear: "1960" },
        { key: 13, parent: 6, name: "TP防护", gender: "F", birthYear: "1988" },
        { key: 14, parent: 6, name: "Web防护", gender: "F", birthYear: "1990" },
        { key: 15, parent: 6, name: "计费", gender: "M", birthYear: "1964" },
        { key: 16, parent: 6, name: "用户中心", gender: "F", birthYear: "2003" },
        { key: 17, parent: 6, name: "Jsf", gender: "M", birthYear: "2007" },
        { key: 18, parent: 6, name: "Mysql", gender: "F", birthYear: "1930", deathYear: "2002" },
        { key: 19, parent: 8, name: "ECSVIP", gender: "M", birthYear: "1961" },
        { key: 20, parent: 8, name: "ECS认证", gender: "F", birthYear: "1964" },
        { key: 21, parent: 8, name: "ECS服务", gender: "M", birthYear: "1996" },
        { key: 22, parent: 9, name: "云数据库VIP", gender: "M", birthYear: "1999" },
        { key: 49, parent: 9, name: "云数据库认证", gender: "M", birthYear: "1999" },
        { key: 23, parent: 9, name: "云数据库服务", gender: "F", birthYear: "1897", deathYear: "1965" },
        { key: 24, parent: 10, name: "云盘监控VIP", gender: "M", birthYear: "1923", deathYear: "2011" },
        { key: 25, parent: 10, name: "云盘监控服务", gender: "M", birthYear: "1950" },
        { key: 26, parent: 11, name: "ZookeeperVIP", gender: "F", birthYear: "1975" },
        { key: 27, parent: 11, name: "Zookeeper服务", gender: "M", birthYear: "1978" },
        { key: 28, parent: 12, name: "JimdbVIP", gender: "M", birthYear: "1980" },
        { key: 29, parent: 12, name: "Jimdb服务", gender: "M", birthYear: "1982" },
        { key: 30, parent: 13, name: "TP防护VIP", gender: "M", birthYear: "1953" },
        { key: 31, parent: 13, name: "TP防护服务", gender: "F", birthYear: "1973" },
        { key: 32, parent: 14, name: "Web防护VIP", gender: "M", birthYear: "1977" },
        { key: 33, parent: 14, name: "Web防护服务", gender: "F", birthYear: "1981" },
        { key: 34, parent: 15, name: "计费VIP", gender: "M", birthYear: "1985" },
        { key: 35, parent: 15, name: "计费服务", gender: "M", birthYear: "1955" },
        { key: 36, parent: 16, name: "用户中心VIP", gender: "M", birthYear: "1982" },
        { key: 37, parent: 16, name: "用户中心服务", gender: "F", birthYear: "1984" },
        { key: 38, parent: 17, name: "JsfVIP", gender: "F", birthYear: "1986" },
        { key: 39, parent: 17, name: "Jsf服务", gender: "F", birthYear: "2005" },
        { key: 40, parent: 18, name: "MysqlVIP", gender: "M", birthYear: "1964" },
        { key: 41, parent: 18, name: "Mysql服务", gender: "F", birthYear: "1996" },
        { key: 44, parent: 21, name: "计算", gender: "M", birthYear: "1924", deathYear: "1998" },
        { key: 45, parent: 21, name: "网络", gender: "M", birthYear: "1953" },
        { key: 46, parent: 21, name: "镜像", gender: "M", birthYear: "1991" },
        { key: 47, parent: 21, name: "监控", gender: "M", birthYear: "1962" },
        { key: 48, parent: 21, name: "云盘", gender: "M", birthYear: "2002" }

    ];


    // create the model for the family tree
    myDiagram.model = new go.TreeModel(nodeDataArray);

   /* document.getElementById('zoomToFit').addEventListener('click', function() {
        myDiagram.zoomToFit();
    });

    document.getElementById('centerRoot').addEventListener('click', function() {
        myDiagram.scale = 1;
        myDiagram.scrollToRect(myDiagram.findNodeForKey(0).actualBounds);
    });*/


    </script>


	<script type="text/javascript">

		$(top.hangge());
	
		$(function() {
			/*$('.dialogs,.comments').slimScroll({
				height : '300px'
			});*/

			$('#tasks').sortable();
			$('#tasks').disableSelection();
			$('#tasks input:checkbox').removeAttr('checked').on('click',
					function() {
						if (this.checked)
							$(this).closest('li').addClass('selected');
						else
							$(this).closest('li').removeClass('selected');
					});
			var oldie = $.browser.msie && $.browser.version < 9;
			$('.easy-pie-chart.percentage')
					.each(
							function() {
								var $box = $(this).closest('.infobox');
								var barColor = $(this).data('color')
										|| (!$box.hasClass('infobox-dark') ? $box
												.css('color')
												: 'rgba(255,255,255,0.95)');
								var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)'
										: '#E2E2E2';
								var size = parseInt($(this).data('size')) || 50;
								$(this).easyPieChart({
									barColor : barColor,
									trackColor : trackColor,
									scaleColor : false,
									lineCap : 'butt',
									lineWidth : parseInt(size / 10),
									animate : oldie ? false : 1000,
									size : size
								});
							})
			$('.sparkline').each(
					function() {
						var $box = $(this).closest('.infobox');
						var barColor = !$box.hasClass('infobox-dark') ? $box
								.css('color') : '#FFF';
						$(this).sparkline('html', {
							tagValuesAttribute : 'data-values',
							type : 'bar',
							barColor : barColor,
							chartRangeMin : $(this).data('min') || 0
						});
					});

			var data = [ {
				label : "social networks",
				data : 38.7,
				color : "#68BC31"
			}, {
				label : "search engines",
				data : 24.5,
				color : "#2091CF"
			}, {
				label : "ad campaings",
				data : 8.2,
				color : "#AF4E96"
			}, {
				label : "direct traffic",
				data : 18.6,
				color : "#DA5430"
			}, {
				label : "other",
				data : 10,
				color : "#FEE074"
			} ];
			var placeholder = $('#piechart-placeholder').css({
				'width' : '90%',
				'min-height' : '150px'
			});
			/*$.plot(placeholder, data, {

				series : {
					pie : {
						show : true,
						tilt : 0.8,
						highlight : {
							opacity : 0.25
						},
						stroke : {
							color : '#fff',
							width : 2
						},
						startAngle : 2

					}
				},
				legend : {
					show : true,
					position : "ne",
					labelBoxBorderColor : null,
					margin : [ -30, 15 ]
				},
				grid : {
					hoverable : true,
					clickable : true
				},
				tooltip : true, //activate tooltip
				tooltipOpts : {
					content : "%s : %y.1",
					shifts : {
						x : -30,
						y : -50
					}
				}

			});*/

			var $tooltip = $(
					"<div class='tooltip top in' style='display:none;'><div class='tooltip-inner'></div></div>")
					.appendTo('body');
			placeholder.data('tooltip', $tooltip);
			var previousPoint = null;
			placeholder.on('plothover', function(event, pos, item) {
				if (item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : "
								+ item.series['percent'] + '%';
						$(this).data('tooltip').show().children(0).text(tip);
					}
					$(this).data('tooltip').css({
						top : pos.pageY + 10,
						left : pos.pageX + 10
					});
				} else {
					$(this).data('tooltip').hide();
					previousPoint = null;
				}

			});
			var d1 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.5) {
				d1.push([ i, Math.sin(i) ]);
			}
			var d2 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.5) {
				d2.push([ i, Math.cos(i) ]);
			}
			var d3 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.2) {
				d3.push([ i, Math.tan(i) ]);
			}

			var sales_charts = $('#sales-charts').css({
				'width' : '100%',
				'height' : '220px'
			});
			/*$.plot("#sales-charts", [ {
				label : "Domains",
				data : d1
			}, {
				label : "Hosting",
				data : d2
			}, {
				label : "Services",
				data : d3
			} ], {
				hoverable : true,
				shadowSize : 0,
				series : {
					lines : {
						show : true
					},
					points : {
						show : true
					}
				},
				xaxis : {
					tickLength : 0
				},
				yaxis : {
					ticks : 10,
					min : -2,
					max : 2,
					tickDecimals : 3
				},
				grid : {
					backgroundColor : {
						colors : [ "#fff", "#fff" ]
					},
					borderWidth : 1,
					borderColor : '#555'
				}
			});*/
			$('[data-rel="tooltip"]').tooltip();
		})
	</script>

</body>
</html>
