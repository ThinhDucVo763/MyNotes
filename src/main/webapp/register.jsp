<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Register page</title>
	<%@include file="all_component/allcss.jsp" %>
	<title>Create Your Accounts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link rel="stylesheet" href="CSS/login&register.css">
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
</head>
<body>
	<%@include file="all_component/navbar.jsp" %>
	<div class="main-w3layouts wrapper">
		
		<h1><i class="fa fa-user-plus " aria-hidden="true" ></i>Create your Accounts</h1>
		<div class="main-agileinfo">	
			
			<% 
			String regMsg = (String) session.getAttribute("reg-sucess");
			if(regMsg != null){
			%>
				<div class="alert alert-success" role="alert">
  				<%=regMsg %>Login <a href= "login.jsp">Click Here</a>
				</div>
			<%
			session.removeAttribute("reg-sucess");
				}
			%>	
			<%
				String FailedMsg = (String) session.getAttribute("failed-msg");
				if(FailedMsg != null){
			%>
				<div class="alert alert-warning" role="alert">
				<%=FailedMsg %>
				</div>
			<%
			session.removeAttribute("failed-msg");
				}
			%>
			
			
			<div class="agileits-top">
				<form action="UserServlet" method="post">
					<input class="text" type="text" name="fname" placeholder="Username" required="">
					<input class="text email" type="email" name="uemail" placeholder="Email" required="">
					<input class="text" type="password" name="upassword" placeholder="Password" required="">
				<!--  	<input class="text w3lpass" type="password" name="password" placeholder="Confirm Password" required="">-->
					<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>I Agree To The Terms & Conditions</span>
						</label>
						<div class="clear"> </div>
					</div>
					<input type="submit" value="Register">
				</form>
				<p>Already have an account? <a href="login.jsp"> Login Now!</a></p>
			</div>
		</div>
		<!-- copyright -->
		<div class="colorlibcopy-agile">
			<p>© 2018 Colorlib Signup Form. All rights reserved | Design by <a href="https://colorlib.com/" target="_blank">Colorlib</a></p>
		</div>
		<!-- //copyright -->
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<%@include file="all_component/footer.jsp" %>
</body>
</html>