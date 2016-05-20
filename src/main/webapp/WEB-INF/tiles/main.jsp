<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Ryan Book Center</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.dropotron.min.js"></script>
	<script src="js/skel.min.js"></script>
	<script src="js/skel-layers.min.js"></script>
	<script src="js/init.js"></script>
	<noscript>
		<link rel="stylesheet" href="css/skel.css" />
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="css/style-wide.css" />
	</noscript>
<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/highcharts-3d.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script type="text/javascript">
		$(function () {
		    $('#bar').highcharts({
		    	
		        chart: {
		            type: 'column',
		            options3d: {
		                enabled: true,
		                alpha: 15,
		                beta: 15,
		                viewDistance: 25,
		                depth: 40
		            }
		        },
		
		        title: {
		            text: '서적별 가격 현황'
		        },
		
		        xAxis: {
		            categories: <%=request.getAttribute("title")%>
		        },
		
		        yAxis: {
		            allowDecimals: false,
		            min: 0,
		            title: {
		                text: '가격'
		            }
		        },
		
		        tooltip: {
		            headerFormat: '<b>{point.key}</b><br>',
		            pointFormat: '<span style="color:{series.color}">\u25CF</span> {series.name}: {point.y} / {point.stackTotal}'
		        },
		
		        plotOptions: {
		            column: {
		                stacking: 'normal',
		                depth: 40
		            }
		        },
		
		        series: 
		        	<%=request.getAttribute("json")%>
		       
		    });
		});
	</script>
	<style type="text/css">
	#bar {
	    height: 400px; 
	    min-width: 310px; 
	    max-width: 800px;
	    margin: 0 auto;
	}
	</style>
</head>
<body>
	<!-- Wrapper -->
	<div class="wrapper style1">
		<!-- Header 영역-->
		<tiles:insertAttribute name="header"/>	
		<!-- Body 영역 -->
		<tiles:insertAttribute name="body"/>
	</div>
		<!-- Footer 영역-->
		<tiles:insertAttribute name="footer"/>
</body>
</html>