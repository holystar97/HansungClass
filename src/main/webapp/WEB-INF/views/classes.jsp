<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--수강신청서 폼-->
<link rel="stylesheet" href="css/bootstrap.css">
<link href="css/tabel1.css" rel="stylesheet" />

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,400,600,700,800,900&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Unna:400,700&display=swap"
	rel="stylesheet" />

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css" />
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css" />
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />


<!--수강신청 조회 테이블-->

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css" />
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="${contextPath}/resources/css/tabel1.css" rel="stylesheet" />

<!--수강신청서 폼-->
<link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.css">

</head>
<body>
	<h2>학기별 이수 학점 조회</h2>
	<p>학기별로 이수한 학점을 조회을 하는 페이지입니다.</p>
	<!--조회 테이블 start-->
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>년도</th>
				<th>학기</th>
				<th>취득학점</th>
				<th>상세보기</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="year" value="0" />
			<c:set var="semester" value="0" />
			<c:set var="amount" value="0" />
			<c:set var="total" value="0" />
			<c:forEach var="classinfo" items="${classes}" varStatus="status">
				<tr>
					<c:if test="${classinfo.year < 2021}">
						<c:set var="total" value="${total + classinfo.amount}" />
					</c:if>
					<c:if test="${status.first}">
						<c:set var="year" value="${classinfo.year}" />
						<c:set var="semester" value="${classinfo.semester}" />
					</c:if>
					<c:if
						test="${(classinfo.semester != semester || classinfo.year != year) && year < 2021}">
						<td><c:out value="${year}"></c:out></td>
						<td><c:out value="${semester}"></c:out></td>
						<td><c:out value="${amount}"></c:out></td>
						<td><a
							href="${pageContext.request.contextPath}/certainclass?year=${year}&semester=${semester}">자세히</a></td>
						<c:set var="year" value="${classinfo.year}" />
						<c:set var="semester" value="${classinfo.semester}" />
						<c:set var="amount" value="0" />
					</c:if>
					<c:set var="amount" value="${amount + classinfo.amount}" />
				</tr>
				<c:if test="${status.last && classinfo.year < 2021}">
					<tr>
						<td><c:out value="${classinfo.year}"></c:out></td>
						<td><c:out value="${classinfo.semester}"></c:out></td>
						<td><c:out value="${amount}"></c:out></td>
						<td><a
							href="${pageContext.request.contextPath}/certainclass?year=${year}&semester=${semester}">자세히</a>
						</td>
					</tr>
				</c:if>

			</c:forEach>
			<tr style="background-color: rgb(161, 146, 161)">
				<td>총계</td>
				<td></td>
				<td><c:out value="${total}"></c:out></td>
				<td></td>
			</tr>
		</tbody>
	</table>


	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>