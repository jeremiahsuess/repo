<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/header.jsp" />

<div class="container">
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<h1>Update Portfolio</h1>
		</div>
		<div class="col-md-4"></div>
	</div>

	<h1>
		<c:out value="${firstName.firstName}" />
	</h1>

	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<c:url var="formAction" value="/updatePortfolio" />
			<form method="POST" action="${formAction}">

				<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
				<div class="form-group">
					<label for="projectName">Project Name: </label> <input type="text"
						id="projectName" name="projectName" placeHolder="Project Name"
						class="form-control" />
				</div>

				<div class="form-group">
					<label for="linkToSourceCode">Link to Source Code: </label> <input
						type="url" id="linkToSourceCode" name="linkToSourceCode"
						placeHolder="Paste Your Source Code Link Here"
						class="form-control" />
				</div>
				<div>
					<p>Type of project:</p>
					<select name="isGroupProject" id="groupOrSingle">
						<option value="FALSE">Personal Project</option>
						<option value="TRUE">Group Project</option>
					</select> <br> <br>
				</div>

				<div class="form-group">
					<label for="projectDescription">Project Desription: </label>
					<textarea rows="8" cols="59" name="projectDescription"
						placeholder="Type Project Description Here"></textarea>
				</div>

				<div class="row">
					<div class="col-md-5">
						<p>Technologies Used:</p>
					</div>
					<div class="col-md-3"></div>
					<div class="col-md-4"></div>
				</div>

				<div class="row">
					<div class="col-md-6">
						<input type="checkbox" name="Java" value="Java"> Java<br>
						<input type="checkbox" name="Csharp" value="Csharp"> Csharp<br>
						<input type="checkbox" name="Html" value="Html"> HTML<br>
					</div>
					<div class="col-md-6">
						<input type="checkbox" name="Css" value="Css"> CSS<br>
						<input type="checkbox" name="Js" value="Javascript">
						JavaScript<br> 
						<input type="checkbox" name="Sql" value="Sql">
						SQL<br>

					</div>
				</div>


				<button type="submit" class="btn btn-lg btn-success">Submit</button>
			</form>

		</div>
		<div class="col-md-3"></div>
	</div>









</div>






<c:import url="/WEB-INF/jsp/footer.jsp" />