<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<title>Tech Elevator Student Profiles</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
<script src="http://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.js "></script>
<script src="https://cdn.jsdelivr.net/jquery.timeago/1.4.1/jquery.timeago.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<c:url var="pwValidationSrc" value="/passwordValidation.js" />
<script src="${pwValidationSrc}"></script>
<c:url var="effectsSrc" value="/effects.js" />
<script src="${effectsSrc}"></script>

<c:url var="cssHref" value="/site.css" />
<link rel="stylesheet" type="text/css" href="${cssHref}">
<c:url value="/bootstrap.css" var="bootstrapCssHref" />
<link rel="stylesheet" href="${bootstrapCssHref}">
<c:url value="/navbar-static-top.css" var="navbarHref" />
<link rel="stylesheet" href="${navbarHref}">
<c:url value="/carousel.css" var="carouselHref" />
<link rel="stylesheet" href="${carouselHref}">

<script type="text/javascript">
	$(document).ready(function() {
		$("time.timeago").timeago();

		$("#logoutLink").click(function(event) {
			$("#logoutForm").submit();
		});

		var pathname = window.location.pathname;
		$("nav a[href='" + pathname + "']").parent().addClass("active");

	});
</script>

</head>
<body>
	<header>
		<c:url var="homePageHref" value="/" />
		<c:url var="imgSrc" value="/img/te_logo.png" />

		<!-- Static navbar -->
		<nav class="navbar navbar-default navbar-static-top top-navbar-css">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<div class="navbar-header">
						<a class="navbar-brand" href="${homePageHref}"><img
							src="${imgSrc}" alt="Tech Elevator" width="150"></a>
					</div>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a style="background-color: white; color: black" href="${homePageHref}">Home</a></li>
						<c:url var="currentCohort" value="/currentCohort" />
						<li><a style="background-color: white" href="${currentCohort}">Current Cohort Roster</a></li>
						<c:if test="${not empty currentUser}">
						
]						
							<c:url var="dashboard" value="/dashboard" />
							<li><a href="${dashboard}">Dashboard</a></li>
						</c:if>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<c:choose>
							<c:when test="${empty currentUser}">

								<c:url var="loginHref" value="/login" />
								<li><a style="background-color: white" href="${loginHref}"><span
										class="glyphicon glyphicon-user" style="font-size: 17px"></span>Login</a></li>
							</c:when>
							<c:otherwise>
								<c:url var="logoutAction" value="/logout" />
								<form id="logoutForm" action="${logoutAction}" method="POST">
									<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
								</form>
								<li><a id="logoutLink" href="#"><span
										class="glyphicon glyphicon-log-out" style="font-size: 17px"></span>Log Out</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>

	</header>
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-3"></div>
			<div class="col-md-3"></div>
			<div class="col-md-3">
				<c:if test="${not empty currentUser}">
					<p id="currentUser">
						Current User:
						<c:out value="${currentUser}" />
					</p>
				</c:if>
			</div>
		</div>
	</div>