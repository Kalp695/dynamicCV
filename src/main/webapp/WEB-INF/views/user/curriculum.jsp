<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/styles/common.css">
<link rel="stylesheet" type="text/css" href="resources/styles/curriculum.css">
<link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon" />

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script src="resources/scripts/curriculum.js">

</script>
<title>Curriculum Vitae</title>
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
	
	<div id="accordion" class="ui-accordion ui-widget ui-helper-reset">
		    <h3 class="accordion-header ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all curriculum-accordion">
		        <span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e"></span>
		        Personal Information
		        <i class="plusSymbol fa fa-plus-circle"></i>
		    </h3>
		    <div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom curriculum-accordion-content">
		    <table>
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
					<td><c:out value="${person.email}" /></td>
				</tr>
			</table>
  	 		 </div>
  	 		 <h3 class="accordion-header ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all curriculum-accordion">
		        <span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e"></span>
		        Education
		         <i class="plusSymbol fa fa-plus-circle"></i>
		    </h3>
		    <div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom  curriculum-accordion-content">
		    	<table>
						<tr>
							<td class="CVTdHead">Degree Name</td>
							<td class="CVTdHead">Completion Year</td>
							<td class="CVTdHead">School</td>
						</tr>
					<c:forEach items="${degrees}" var="d">
						<tr>
							<td class="CVTd"><c:out value="${d.name }" /></td>
							<td class="CVTd"><c:out value="${d.compYear }" /></td>
							<td class="CVTd"><c:out value="${d.school }" /></td>
						</tr>
						<tr>
							<td></td><td>Description</td>
						</tr>
						<tr>
							<td></td><td id="DegreeDesc"><c:out value="${d.description }" /></td>
						</tr>
					</c:forEach>
				</table>
		    </div>
		    <h3 class="accordion-header ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all curriculum-accordion">
		        <span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e"></span>
		        Work Experience
		        <i class="plusSymbol fa fa-plus-circle"></i>
		    </h3>
		    <div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom curriculum-accordion-content">
		    	lol
		    </div>
		    <h3 class="accordion-header ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all curriculum-accordion">
		        <span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e"></span>
		        Skills
		        <i class="plusSymbol fa fa-plus-circle"></i>
		    </h3>
		    <div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom  curriculum-accordion-content">
		    	lol
		    </div>
		</div>
	
	<!-- Old version of CV table
	<table>
	
	<thead class="CVTableHead">
		<tr>
			<td>Personal Information</td>
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
			<td><c:out value="${person.email}" /></td>
		</tr>
	</tbody>
	
	</table>
	
	<div class="border"></div>
	
	<table class="CVTable">
	
	<thead class="CVTableHead">
		<tr>
			<td class="CVTableHeadTd">Education</td>
		</tr>
	</thead>
	
	<tbody id="CVTableBody">
		<tr>
			<td class="CVTdHead">Degree Name</td>
			<td class="CVTdHead">Completion Year</td>
			<td class="CVTdHead">School</td>
		</tr>
	<c:forEach items="${degrees}" var="d">
		<tr>
			<td class="CVTd"><c:out value="${d.name }" /></td>
			<td class="CVTd"><c:out value="${d.compYear }" /></td>
			<td class="CVTd"><c:out value="${d.school }" /></td>
		</tr>
		<tr>
			<td></td><td>Description</td>
		</tr>
		<tr>
			<td></td><td id="DegreeDesc"><c:out value="${d.description }" /></td>
		</tr>
	</c:forEach>
	</tbody>
	
	</table>
	
	<div class="border"></div>
	
	<table class="CVTable">
	
	<thead class="CVTableHead">
		<tr>
			<td class="CVTableHeadTd">Work Experience</td>
		</tr>
	</thead>
	
	<tbody id="CVTableBody">
		<tr>
			<td class="CVTdHead">Employer</td>
			<td class="CVTdHead">Title</td>
			<td class="CVTdHead">Start Date</td>
			<td class="CVTdHead">End Date</td>
		</tr>
	<c:forEach items="${workExps}" var="we">
		<tr>
			<td class="CVTd"><c:out value="${we.employer }" /></td>
			<td class="CVTd"><c:out value="${we.title }" /></td>
			<td class="CVTd"><c:out value="${we.startDate }" /></td>
			<c:choose>
				<c:when test="${we.endDate != null }">
					<td class="CVTd"><c:out value="${we.endDate }" /></td>
				</c:when>
				<c:otherwise>
					<td class="CVTd"><c:out value="ongoing" /></td>
				</c:otherwise>
			</c:choose>
		</tr>
		<tr>
			<td></td><td>Task Description</td>
		</tr>
		<tr>
			<td></td><td id="DegreeDesc"><c:out value="${we.taskDescription }" /></td>
		</tr>
	</c:forEach>
	</tbody>
	
	</table>
	
	<div class="border"></div>

	<table class="CVTable">
	
	<thead class="CVTableHead">
		<tr>
			<td class="CVTableHeadTd">Skills</td>
		</tr>
	</thead>
	
	<tbody id="CVTableBody">
		<tr>
			<td class="CVTdHead">Name</td>
			<td class="CVTdHead">Level</td>
		</tr>
	<c:forEach items="${skills}" var="s">
		<tr>
			<td class="CVTd"><c:out value="${s.name }" /></td>
			<td class="CVTd"><c:out value="${s.level }" /></td>
		</tr>
	</c:forEach>
	</tbody>
	
	</table> -->
	
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