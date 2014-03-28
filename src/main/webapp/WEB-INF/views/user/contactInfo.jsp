<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Contact Info</title>

<link rel="stylesheet" type="text/css" href="resources/styles/common.css">
<link rel="stylesheet" type="text/css" href="resources/styles/contactInfo.css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">

<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>
$(window).load(function(){
	$('#dvLoading').fadeOut(2000);	
});

	$(document).ready(function($) {
		
		    $.fn.extend( {
		        limiter: function(limit, elem) {
		            $(this).on("keyup focus", function() {
		                setCount(this, elem);
		            });
		            function setCount(src, elem) {
		                var chars = src.value.length;
		                if (chars > limit) {
		                    src.value = src.value.substr(0, limit);
		                    chars = limit;
		                }
		                elem.html( limit - chars );
		            }
		            setCount($(this)[0], elem);
		        }
		    });
		    
		    var elem = $("#chars");
			$("#text").limiter(500, elem);
			
			$("#successMessage").click(function() {
				$("#successMessage").fadeOut();	
			});
			
		})(jQuery);
</script>
</head>

<body>

<div class="wrapper">
	<div id="header">
	<div id="login">
		<form action="j_spring_security_check" method="post">
			<input type="text" name="j_username" placeholder="Username"/>
			<input type="password" name="j_password" placeholder="Password"/>
			<input id="submit" type="submit" value="Login"/>
		</form>
	</div>
		<h1><a id="myName" href="welcome">Aleksi Monaco</a></h1>
		
		<ul id="navbar">
			<li><a class="navlink" href="curriculum">CV</a></li>
			<li><a class="navlink" href="contactInfo">Contact Information</a></li>
		</ul>
	</div>
	
	<c:if test="${sM != null }">
		<p id="successMessage">
			<i class="fa fa-check-circle-o"></i> ${sM}
		</p>
	</c:if>

	<div id="content">
	
	<div id="dvLoading"></div>
	
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
			<td><a href="mailto:${person.email}"> <c:out value="${person.email}" /></a></td>
		</tr>
	</tbody>
	
	</table>
	
	<div class="border"></div>
	
	<div id="profile" onclick="window.open('http://fi.linkedin.com/in/aleksimonaco', 'mywindow');" style="cursor: pointer;">
		LinkedIn Profile
		<img id ="profileImg" src="resources/images/linkedin.png" />
	</div>
	

	<div id="profile" onclick="window.open('https://fi-fi.facebook.com/aleksi.monaco', 'mywindow');" style="cursor: pointer;">
		Facebook Profile
		<img id ="profileImg" src="resources/images/facebook.png" />
	</div>
	
	<div id="profile" onclick="window.open('https://github.com/aleksimonaco/', 'mywindow');" style="cursor: pointer;">
		GitHub Profile
		<img id ="profileImg" src="resources/images/GitHub-Mark-32px.png" />
	</div>
	
	<div class="border"></div>
	
		<form:form modelAttribute="message" method="post">
		
			<legend id="ContactHeading">
				<spring:message code="person.contact.heading" />
			</legend>
			
			<div id="MessageForm">
			
			<spring:hasBindErrors name="message">
				<p class="ErrorMessage">
					<spring:message code="person.contact.errors" />
				</p>
			</spring:hasBindErrors>
			
				<p>
					<spring:message code="person.contact.name" /><br/>
					<form:input path="name" />
				</p>
				
				<p>
					<spring:message code="person.contact.message" /><br/>
					<form:textarea id="text" path="message" style="resize:none" rows="10" cols="40" maxlength="500" /><br/>
					<div id="chars"></div><form:errors path="message" cssClass="ErrorMessage"></form:errors>
				</p>
				
				<p>
					<spring:message code="person.contact.required" />
				</p>
				
				<button id="MessageButton" type="submit"><spring:message code="person.contact.submit" /></button>
		
			</div>
		</form:form>
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