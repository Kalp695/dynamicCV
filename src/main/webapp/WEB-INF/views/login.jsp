<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="resources/styles/common.css">
<link rel="stylesheet" type="text/css" href="resources/styles/login.css">
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">

<link rel="shortcut icon" href="resources/images/faviconLogin.ico" type="image/x-icon" />

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>
$(window).load(function(){
	$('#dvLoading').fadeOut(2000);	
});

$(document).ready(function($) {
	
	$("#failureMessage").click(function() {
		$("#failureMessage").fadeOut();	
	});
});
</script>
</head>

<body>
<div class="wrapper">
	<div id="header">
	<div id="login">
		<form action="j_spring_security_check" method="post">
			<input class="inputField" type="text" name="j_username" placeholder="Username"/>
			<input class="inputField" type="password" name="j_password" placeholder="Password"/>
			<input id="submit" type="submit" value="Login"/>
		</form>
	</div>
		<h1><a id="myName" href="welcome">Aleksi Monaco</a></h1>
		
		<ul id="navbar">
			<li><a class="navlink" href="curriculum">CV</a></li>
			<li><a class="navlink" href="contactInfo">Contact Information</a></li>
		</ul>
	</div>
	
	<div id="content">
	
	<div id="dvLoading"></div>
	
	<h2>Login</h2>
	
	<c:if test="${loginerror == true }">
		<p id="failureMessage">
			<i class="fa fa-times-circle-o"></i>The username or password is wrong!
		</p>
	</c:if>
	
	<form id="LoginForm" action="j_spring_security_check" method="post">
		<table>
		
			<tr>
				<td><span class="LoginInputText">Username</span></td>
				<td><input class="LoginInput" type="text" name="j_username"/></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input class="LoginInput" type="password" name="j_password"/></td>
			</tr>
			
		</table>
		
		<input id="LoginSubmit" type="submit" value="Login"/>
		
	</form>

	</div>

	<div class="push"></div>
</div>

<div class="footer">
	<div id="Cdt"></div>
		<script language="javascript" type="text/javascript" src="resources/scripts/current.js">
			formatAMPM();
		</script>
	</div>

</body>
</html>