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

	<!--상세보기 테이블 start-->
	<table class="table table-bordered">
		<thead>
			<tr bgcolor="blue" align="center">
				<td colspan="6" style="color: white">학기별 수강 내역</td>
			</tr>
			<tr>
				<th>년도</th>
				<th>학기</th>
				<th>교과목명</th>
				<th>교과구분</th>
				<th>담당교수</th>
				<th>학점</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="classinfo" items="${certainclass}" varStatus="status">
				<tr>
					<td><c:out value="${classinfo.year}"></c:out></td>
					<td><c:out value="${classinfo.semester}"></c:out></td>
					<td><c:out value="${classinfo.name}"></c:out></td>
					<td><c:out value="${classinfo.classfication}"></c:out></td>
					<td><c:out value="${classinfo.prof}"></c:out></td>
					<td><c:out value="${classinfo.amount}"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<!--상세보기 테이블 end-->


	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>