<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Contact Info</title>
<link rel="stylesheet" type="text/css" href="resources/styles/welcome.css">
<link rel="stylesheet" type="text/css" href="resources/styles/contactInfo.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
<div class="wrapper">
	<div id="header">
	<div id="login">
		<form>
			<input type="text" name="username" placeholder="Username"/>
			<input type="text" name="password" placeholder="Password"/>
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
	
	<table>
	
	<thead>
		<tr>
			<td>Contact Info</td>
		</tr>
	</thead>
	
	<tbody>
		<tr>
			<td><c:out value="${person.FName}" /> <c:out value="${person.LName}" /></td>
		</tr>
		<tr>
			<td><c:out value="${person.address }" /></td>
		</tr>
		<tr>
			<td> <c:out value="${person.postNumber}" /> <c:out value="${person.city}" /></td>
		</tr>
		<tr>
			<td> <c:out value="${person.phone}" /></td>
		</tr>
		<tr>
			<td><a href="mailto:<c:out value="${person.email}" />"> <c:out value="${person.email}" /></a></td>
		</tr>
	</tbody>
	
	</table>
	
	<div class="border"></div>
	
	<div id="profile" onclick="window.open('http://fi.linkedin.com/in/aleksimonaco', 'mywindow');" style="cursor: pointer;">
	LinkedIn Profile
	<img id ="profileImg" src="resources/images/linkedin.png" />
	</div>
	

	<div id="profile" onclick="window.open('http://fi.linkedin.com/in/aleksimonaco', 'mywindow');" style="cursor: pointer;">Facebook Profile
	<img id ="profileImg" src="resources/images/facebook.png" />
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