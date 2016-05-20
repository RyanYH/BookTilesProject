<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=EUC-KR>
<title>Insert title here</title>
</head>
<body>
	<!-- <div id="extra"> -->
			<div class="container">
				
				<div class="row no-collapse-1">
					<c:forEach var="vo" items="${list }" varStatus="status">
					  <c:if test="${status.index<3 }">
						<section class="4u"> <a href="#" class="image featured"><img
							src="${vo.poster }" width=100 height=400></a>
						<div class="box">
							<p style="font-size:8pt">${vo.review }</p>
							<a href="#" class="button">상세보기</a>
						</div>
						</section>
					  </c:if>
					</c:forEach>
				</div>
				<div class="row no-collapse-1">
					<c:forEach var="vo" items="${list }" varStatus="status">
					  <c:if test="${status.index>=3 && status.index<6 }">
						<section class="4u"> <a href="#" class="image featured"><img
							src="${vo.poster }" width=100 height=400></a>
						<div class="box">
							<p style="font-size:8pt">${vo.review }</p>
							<a href="#" class="button">상세보기</a>
						</div>
						</section>
					  </c:if>
					</c:forEach>
				</div>
		</div>

		<!-- Main -->
		<div id="main">
			<div class="container">
				<div class="row">

					<!-- Content -->
					<div class="6u">
						<section>
						<ul class="style">
							<li class="fa fa-wrench">
								<h3>교보서적</h3> <span>교보문고 특별이벤트</span>
							</li>
							<li class="fa fa-leaf">
								<h3>영풍문고</h3> <span>영풍문고 특별이벤트</span>
							</li>
						</ul>
						</section>
					</div>
					<div class="6u">
					  <section>
						<ul class="style">
							<li class="fa fa-cogs">
								<h3>알라딘</h3> <span>알라딘 특별이벤트</span>
							</li>
							<li class="fa fa-road">
								<h3>yes24</h3> <span>yes24 배송이벤트</span>
							</li>
						</ul>
					  </section>
					</div>
				</div>
			</div>
		</div>
		<div id="footer" class="wrapper style2">
		<div class="container">
			<section>
				<header class="major">
					<!-- 시각화 -->
					<div id="bar" style="height: 400px"></div>
				</header>
			</section>
		</div>
	</div>
</body>
</html>