<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/header.jsp" />
<div class="container">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-4">
			<h1>
				<c:out value="${student.firstName}" />
				's Profile
			</h1>
		</div>
		<div class="col-md-4"></div>
	</div>



</div>

<div class="container">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-3 profile-pic info_container2">
			<img src="img/gender_neutral_user_filled1600.png"
				alt="Profile Picture">
		</div>
		<div class="col-md-2"></div>
		<div class="col-md-3 info_container3">
			<p>
				<c:out value="${student.firstName}" />
				<c:out value="${student.lastName}" />
			</p>
			<p>
				<c:out value="${student.phoneNumber}" />
			</p>
			<p>
				<c:out value="${student.emailId}" />
			</p>
			<p>
				Education:
				<c:out value="${student.academicBackground}" />
			</p>
			<p>
				Industry Experience:
				<c:choose>
					<c:when test="${student.industryExperience}">Yes</c:when>
					<c:otherwise>No</c:otherwise>
				</c:choose>
			</p>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>

<div class="container profile-page">
	<div class="row">
		<div class="col-md-0"></div>
		<div class="col-md-12">

			<div class="container">
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-10">
						<br>
						<p>
							<strong>Summary:</strong>
						</p>
					</div>
					<div class="col-md-1"></div>
				</div>
			</div>

			<div class="container">

				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-10 info_container">
						<p>
							<c:out value="${student.summary}" />

						</p>
					</div>
					<div class="col-md-1"></div>
				</div>

			</div>


			<div class="container">
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-10">
						<p>
							<strong>Soft Skills:</strong>
						</p>
					</div>
					<div class="col-md-1"></div>
				</div>
			</div>

			<div class="container">

				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-10 info_container">
						<p>

							<c:out value="${student.softSkills}" />
						</p>
					</div>
					<div class="col-md-1"></div>
				</div>

			</div>

			<div class="container">
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-10">
						<p>
							<strong>Fields Of Interest:</strong>
						</p>
					</div>
					<div class="col-md-1"></div>
				</div>
			</div>

			<div class="container">

				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-10 info_container">
						<p>
							<c:out value="${student.interests}" />
						</p>
					</div>
					<div class="col-md-1"></div>
				</div>

			</div>


			<div class="container">
				<div class="row">
					<div class="col-md-5"></div>
					<div class="col-md-3">
						<h1>Portfolio</h1>
					</div>
					<div class="col-md-4"></div>
				</div>



			</div>



			<c:forEach var="portfolio" items="${portfolios}">
				<div class="container">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10">
							<p>
								<strong>
									<p>
										<strong>Project Name:</strong>
										<c:out value="${portfolio.projectName}" />
									</p>
								</strong>
							</p>
						</div>
						<div class="col-md-1"></div>
					</div>
				</div>
				<div class="container">

					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10 info_container">

							<p>
								<strong>Project Description:</strong>
								<c:out value="${portfolio.projectDescription}" />
							</p>
							<p>
								<strong>Technology Used:</strong>
								<c:out value="${portfolio.technologyUsed}" />
							</p>
							<c:set var="link" value="${portfolio.sourceCodeLink}" />
							<p>
								<a id="blue-url" href="${link}"><c:out value="${portfolio.projectName}" /></a>
							</p>
							<p>
								<strong>Group Project:</strong>

								<c:choose>
									<c:when test="${portfolio.groupProject}">Yes</c:when>
									<c:otherwise>No</c:otherwise>
								</c:choose>
							</p>
						</div>
						<div class="col-md-1"></div>
					</div>

				</div>
			</c:forEach>



		</div>
		<div class="col-md-0"></div>
	</div>
</div>





<c:import url="/WEB-INF/jsp/footer.jsp" />