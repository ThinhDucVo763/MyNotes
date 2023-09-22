<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<%@include file="all_component/allcss.jsp" %>
	<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="stylesheet" href="CSS/login&register.css">
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
</head>
<body>
	<%@include file="all_component/navbar.jsp" %>
	<div class="main-w3layouts wrapper">
		
		<h1><i class="fa fa-user " aria-hidden="true" ></i>Login</h1>
		<div class="main-agileinfo">
			<%
				String invalidMsg = (String) session.getAttribute("login-failed");
				
				if(invalidMsg != null){
			%>
				<div class="alert alert-danger" role="alert">
					<%=invalidMsg %>
				</div>
			<%
				session.removeAttribute("login-failed");
				}
			%>
			<%
				String withloutLogin = (String) session.getAttribute("Login-error");
				if(withloutLogin != null)
				{%>
					<div class="alert alert-danger" role="alert">
					<%=	withloutLogin%>
					</div>	
				<%
				session.removeAttribute("Login-error"); 
				}
			%>
			
			<%
				String lgMsg = (String) session.getAttribute("logoutMsg");
				if(lgMsg!=null)
				{%>
					<div class="alert alert-success" role="alert"> <%=	lgMsg%> </div>
				<%
				session.removeAttribute("logoutMsg"); 
				}
			%>
			
			<div class="agileits-top">
				<form action="loginServlet" method="post">
					<input class="text email" type="email" name="uemail" placeholder="Email" required="">
					<input class="text w3lpass" type="password" name="upassword" placeholder="Password" required="">
					<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>I Agree To The Terms & Conditions</span>
						</label>
						<div class="clear"> </div>
					</div>
					<input type="submit" value="Login">
				</form>
				<p>Don't have an Account? <a href="register.jsp"> Register Now!</a></p>
			</div>
		</div>
		<!-- copyright -->
		<div class="colorlibcopy-agile">
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