<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/header.jsp" />

<div class="container">
	<h1 class="page-header">Student Dashboard</h1>
	<div class="row">

		<div class="row placeholders">
			<div class="col-md-4">
				<c:url var="studentProfile" value="/studentProfile" />
				<a href="${studentProfile}"> <img id="flipper1"
					src="img/57267.jpg" width="300" height="300" class="img-responsive"
					alt="Generic placeholder thumbnail" />
				</a>
				<h4 id="studentdash">
					<a href="${studentProfile}">View Profile</a>
				</h4>
			</div>
			<div class="col-md-4">
				<c:url var="updateProfile" value="/updateProfile" />
				<a href="${updateProfile}"> <img id="flipper2"
					src="img/transmission.jpg" width="300" height="300"
					class="img-responsive" alt="Generic placeholder thumbnail" />
				</a>
				<h4 id="studentdash">
					<a href="${updateProfile}">Update Profile</a>
				</h4>
			</div>
			<div class="col-md-4">
				<c:url var="updatePortfolio" value="/updatePortfolio" />
				<a href="${updatePortfolio}"> <img id="flipper3"
					src="img/ultra-thin-zaggkeys-pro-plus-apple-ipad-keyboard-offers-seven-unique-backlight-colors.jpg"
					width="300" height="300" class="img-responsive"
					alt="Generic placeholder thumbnail" />
				</a>

				<h4 id="studentdash">
					<a href="${updatePortfolio}">Update User Portfolio</a>
				</h4>
			</div>

		</div>


	</div>
</div>
<br>
<br>
<div class="container">
	<div class="row">

		<div class="col-md-6">
			<div>
    <c:if test="${not empty isPublic}" >
        <p> Your profile has been successfully submitted </p>
    </c:if>
   </div>

			<c:url var="formAction" value="/publicSetting" />
			<form method="POST" action="${formAction}">
				<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
				<div>
					<h3>Would you like your profile public or private?</h3>
					<br> <select name="isPublic" id="public">
						<option value="FALSE">Private</option>
						<option value="TRUE">Public</option>
					</select> <br> <br>
				</div>
				<button type="submit" class="btn btn-lg btn-success">Submit</button>
			</form>



		</div>
		<div class="col-md-6"></div>
	</div>
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />
