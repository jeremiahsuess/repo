<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/header.jsp" />
<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<h1>Search Student Profiles</h1>
		</div>
		<div class="col-md-3"></div>
	</div>

	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<c:url var="formAction" value="/searchStudent" />
			<form method="POST" action="${formAction}">

				<div>
					<p>Technology preference:</p>
					<select name="technologiesUsed" id="technologiesUsed">
						<option value="Java">Java</option>
						<option value="Csharp">Csharp</option>
						<option value="Html">HTML</option>
						<option value="Css">CSS</option>
						<option value="Js">Javascript</option>
						<option value="Sql">SQL</option>
					</select> <br> <br>
				</div>


				<div>
					<p>Cohort Selection:</p>
					<select name="cohortNumber" id="cohortNumber">
						<option value="1">Cohort 1</option>
						<option value="2">Cohort 2</option>
						<option value="3">Cohort 3</option>
						<option value="4">Cohort 4</option>
						<option value="0">Any</option>
						
					</select> <br> <br>
				</div>

				<div>
					<p>Academic Background:</p>
					<select name="academicBackground" id="academicBackground">
						<option value="Ph.D">Doctorate</option>
						<option value="MS">Masters</option>
						<option value="BS">Bachelors</option>
						<option value="AS">Associates</option>
						<option value="HS">High School</option>
					</select> <br> <br>
				</div>

				<div>
					<p>Prior Industry Experience:</p>
					<select name="industryExperience" id="industryExperience">
						<option value="TRUE">Yes</option>
						<option value="FALSE">No</option>
					</select> <br> <br>
				</div>



				<button type="submit" class="btn btn-lg btn-success">Submit</button>
			</form>

		</div>
		<div class="col-md-3"></div>
	</div>
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />