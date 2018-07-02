<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/header.jsp" />

<div class="container">
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-6">
			<h1>Student Search Results</h1>
		</div>
		<div class="col-md-2"></div>
	</div>



</div>

<br>



<div class="container">


<div> <p class="align-right"> <c:out value = "${str}"> </c:out> </p>
</div>

	<c:forEach items="${students}" var="student">

		<div class="container profile-page">
			<br>
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-3 profile-pic info_container2">
					<img src="img/gender_neutral_user_filled1600.png"
						alt="Profile Picture">

				</div>
				<div class="col-md-1"></div>
				<div class="col-md-6 info_container3">
					<c:url value="/studentProfileById" var="studentProfileByIdURL">
						<c:param name="studentId" value="${student.studentId}" />
					</c:url>
					<p>
						<a id="blue-url" href="${studentProfileByIdURL}"><c:out
								value="${student.firstName}" /> <c:out
								value="${student.lastName}" /></a>
					</p>
					<p>
						<c:out value="${student.emailId}" />
					</p>
					<p>
						<strong>Phone:</strong>
						<c:out value="${student.phoneNumber}" />
					</p>
					<p>
						<strong>Summary:</strong><br>
						<c:out value="${student.summary}" />
					</p>
					<p>
						<strong>Interests:</strong><br>
						<c:out value="${student.interests}" />
					</p>
				</div>
				<div class="col-md-1"></div>
			</div>
		</div>








		<br>
		<br>
	</c:forEach>
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />