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
							<a href="#" class="button">�󼼺���</a>
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
							<a href="#" class="button">�󼼺���</a>
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
								<h3>��������</h3> <span>�������� Ư���̺�Ʈ</span>
							</li>
							<li class="fa fa-leaf">
								<h3>��ǳ����</h3> <span>��ǳ���� Ư���̺�Ʈ</span>
							</li>
						</ul>
						</section>
					</div>
					<div class="6u">
					  <section>
						<ul class="style">
							<li class="fa fa-cogs">
								<h3>�˶��</h3> <span>�˶�� Ư���̺�Ʈ</span>
							</li>
							<li class="fa fa-road">
								<h3>yes24</h3> <span>yes24 ����̺�Ʈ</span>
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
					<!-- �ð�ȭ -->
					<div id="bar" style="height: 400px"></div>
				</header>
			</section>
		</div>
	</div>
</body>
</html>