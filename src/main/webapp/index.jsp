<%@page import="com.Db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.back-img{
	background: url("img/n4.jpg");
	width: 100%;
	height: 80vh;
	background-size: cover;
  	background-repeat: no-repeat;
}
</style>
<title>Home page</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>

	<%@include file="all_component/navbar.jsp" %>
	<div class="container-fluid back-img">
		<div class="text-center">
			<br><br>
			<h1 class="text-white">S Notes - Save Your Notes</h1>
			<br>
			<a href="login.jsp" class="btn btn-light"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Login</a>
			<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
		</div>
	</div>
	<%@include file="all_component/footer.jsp" %>
</body>
</html>