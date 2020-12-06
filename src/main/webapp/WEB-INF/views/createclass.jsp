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

	<h2>수강 신청</h2>
	<p>듣고 싶은 과목을 수강 신청하는 페이지입니다.</p>

	<!--수강신청 폼 start-->
	<div class="container" style="padding-top: 60px">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div style="background-color: #6E6E6E" class="jumbotron"
				style="padding-top: 20px;">
				<sf:form method="post"
					action="${pageContext.request.contextPath}/docreate"
					modelAttribute="classinfo">
					<h3 style="text-align: center; color: white">수강 신청</h3>
					<div class="form-group">
						<sf:input class="form-control" type="text" path="year"
							placeholder= "년"/>
						<sf:errors path="year" class="" />
					</div>
					<div class="form-group">
						<sf:input type="text" class="form-control" placeholder="학기"
						 path="semester" value=""/>
						<sf:errors path="semester" class="" />
					</div>

					<div class="form-group">
						<sf:input type="text" class="form-control" placeholder="교과목명"
							path="name" />
						<sf:errors path="semester" class="" />
					</div>
					<div class="form-group">
						<sf:input type="text" class="form-control"
							placeholder="교과구분(전지/전선/토대/자율)" path="classfication" maxlength="20" />
						<sf:errors path="classfication" class="" />
					</div>
					<div class="form-group">
						<sf:input type="text" class="form-control" placeholder="담당교수"
							path="prof" />
						<sf:errors path="prof" class="error" />
					</div>
					<div class="form-group">
						<sf:input type="text" class="form-control" placeholder="학점"
							path="amount" />
						<sf:errors path="amount" class="error" />
					</div>
					<input type="submit" class="btn btn-primary form-control"
						value="제출"></input>
			</sf:form>
		</div>
	</div>
	</div>

	<!--수강신청 폼 end-->

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>