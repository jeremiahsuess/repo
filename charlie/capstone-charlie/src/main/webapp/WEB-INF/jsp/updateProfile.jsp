<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/header.jsp" />

<div class="container">
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<h1>Update Profile</h1>
		</div>
		<div class="col-md-4"></div>
	</div>



	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<c:url var="formAction" value="/updateProfile" />
			<form id="updateProfileForm" method="POST" action="${formAction}">

				<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
				<div class="form-group">
					<label for="firstName">First Name: </label> <input type="text"
						id="firstName" name="firstName" placeHolder="first Name"
						class="form-control" />
				</div>
				<div class="form-group">
					<label for="lastName">Last Name: </label> <input type="text"
						id="lastName" name="lastName" placeHolder="lastName"
						class="form-control" />
				</div>

				<div class="form-group">
					<label for="PhoneNumber">Phone-number: </label> <input type="text"
						id="PhoneNumber" name="PhoneNumber" placeHolder="PhoneNumber"
						class="form-control" />
				</div>

				<div class="form-group">
					<label for="email">Email: </label> <input type="email" id="email"
						name="email" placeHolder="email" class="form-control" />
				</div>
				<div class="form-group">
					<p>Academic Background:</p>
					<select name="academicBackground" id="academicBackground">
						<option value="Ph.D">Doctorate</option>
						<option value="MS">Masters</option>
						<option value="BS">Bachelors</option>
						<option value="AS">Associates</option>
						<option value="HS">High School</option>
					</select>
				</div>
				<div>
					<p>Prior Industry Experience:</p>
					<select name="industryExperience" id="industryExperience">
						<option value="TRUE">Yes</option>
						<option value="FALSE">No</option>
					</select> <br> <br>
				</div>
				<div class="form-group">
					<textarea rows="8" cols="59" name="summary"
						placeholder="Type Summary here"></textarea>
				</div>
				<div class="form-group">
					<textarea rows="8" cols="59" name="softSkills"
						placeholder="Type Soft Skills here"></textarea>
				</div>
				<div class="form-group">
					<textarea rows="8" cols="59" name="fieldsOfInterest"
						placeholder="Type Fields of Interest here"></textarea>
				</div>
				<button type="submit" class="btn btn-lg btn-success">Submit</button>
			</form>

		</div>
		<div class="col-md-3"></div>
	</div>









</div>






<c:import url="/WEB-INF/jsp/footer.jsp" />