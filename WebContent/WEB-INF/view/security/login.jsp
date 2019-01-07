<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<c:url value="/j_spring_security_logout" var="logoutUrl" />

<spring:url value="/resources/util/css/bootstrap.min.css" var="bootcss"></spring:url>
<spring:url value="/resources/util/js/bootstrap.min.js" var="bootjs"></spring:url>
<spring:url value="/resources/util/jquery-3.3.1.min.js" var="jq"></spring:url>

<spring:url value="/resources/" var="resources"></spring:url>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>Login Page 2 | Creative - Bootstrap 3 Responsive Admin
	Template</title>

<link rel="stylesheet" href="${bootcss}" />

<script type="text/javascript" src="${jq }"></script>
<script type="text/javascript" src="${bootjs }"></script>

</head>

<body>

	<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
	width: 360px;
	padding: 30% 0 0;
	margin: auto;
}

.form {
	position: relative;
	z-index: 1;
	background: #FFFFFF;
	max-width: 360px;
	margin: 0 auto 100px;
	padding: 45px;
	text-align: center;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0
		rgba(0, 0, 0, 0.24);
}

.form input {
	font-family: "Roboto", sans-serif;
	outline: 0;
	background: #f2f2f2;
	width: 100%;
	border: 0;
	margin: 0 0 15px;
	padding: 15px;
	box-sizing: border-box;
	font-size: 14px;
}

.form button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #4CAF50;
	width: 100%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
}

.form button:hover, .form button:active, .form button:focus {
	background: #43A047;
}

.form .message {
	margin: 15px 0 0;
	color: #b3b3b3;
	font-size: 12px;
}

.form .message a {
	color: #4CAF50;
	text-decoration: none;
}

.form .register-form {
	display: none;
}

.container {
	position: relative;
	z-index: 1;
	max-width: 300px;
	margin: 0 auto;
}

.container:before, .container:after {
	content: "";
	display: block;
	clear: both;
}

.container .info {
	margin: 50px auto;
	text-align: center;
}

.container .info h1 {
	margin: 0 0 15px;
	padding: 0;
	font-size: 36px;
	font-weight: 300;
	color: #1a1a1a;
}

.container .info span {
	color: #4d4d4d;
	font-size: 12px;
}

.container .info span a {
	color: #000000;
	text-decoration: none;
}

.container .info span .fa {
	color: #EF3B3A;
}

body {
	background: #3c8dbc; /* fallback for old browsers */
	background: -webkit-linear-gradient(right, #3c8dbc, #a2b3f0);
	background: -moz-linear-gradient(right, #3c8dbc, #a2b3f0);
	background: -o-linear-gradient(right, #3c8dbc, #a2b3f0);
	background: linear-gradient(to left, #3c8dbc, #a2b3f0);
	font-family: "Roboto", sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
</style>


	<c:if test="${not empty error }">
		<div>${error}</div>
	</c:if>
	<c:if test="${not empty logout }">
		<div>${logout}</div>
	</c:if>
	<div class="login-page">
		<div class="form">
			<form class="login-form" action="<c:url value='j_spring_security_check' />" method='POST'>
				<input type="text" class="form-control" placeholder="Nama gl"
						name="username" autofocus>
				<input type="password" class="form-control" placeholder="Password"
						name="password">
						
				<button type="submit">Login</button>
				<!-- <p class="message">
					Not registered? <a href="#">Create an account</a>
				</p> -->
				<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			</form>
		</div>
	</div>

	<script>
$('.message a').click(function(){
	   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
	});
</script>
</body>

</html>
