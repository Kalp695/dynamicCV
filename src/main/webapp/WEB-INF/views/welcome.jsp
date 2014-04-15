<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aleksi Monaco's CV</title>

<link rel="stylesheet" type="text/css" href="resources/styles/common.css">
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>
$(window).load(function(){
	$('#dvLoading').fadeOut(2000);	
});

$(document).ready(function($) {
	$("#logoutMessage").fadeOut(3000);
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
	
	
	<div id="dvLoading"></div>
	
	<c:if test="${loggedout == true }">
		<p id="logoutMessage">
			<i class="fa fa-check-circle-o"></i>Logout succesful!
		</p>
	</c:if>
	
	<div id="content">
	
	<p>
		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut at nisl tincidunt, euismod urna rhoncus, cursus justo. Suspendisse luctus vestibulum metus, ut egestas magna auctor non. 
		Mauris eu tempus erat. Praesent vel justo ligula. Nam venenatis quam interdum vestibulum euismod. Proin ut adipiscing massa. Phasellus blandit tincidunt molestie. Fusce id ligula vitae lorem facilisis eleifend sed et purus. Vivamus nec feugiat felis. Donec cursus nisi neque, ac facilisis odio commodo et. Vestibulum urna nisi, blandit eu arcu non, feugiat consectetur ipsum. Pellentesque accumsan sapien tortor, eget eleifend sapien porta a.
		 Proin id libero sed lacus varius feugiat ac sit amet dui. 
		Proin ut ipsum ligula. Nullam vitae elit ac tortor imperdiet varius luctus id neque. Vestibulum dignissim quis lacus nec dapibus
	</p>
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