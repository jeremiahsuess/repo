<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/WEB-INF/jsp/header.jsp" />

<div class="container">
<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<h1>Employer Link</h1>
		<p>Please copy the text below and send it to the employer.  The employer will be able to use the provided link to activate their account.</p>
	</div>
	<div class="col-md-2"></div>
</div>
<br>
<div class="row">
	<div class="col-md-1"></div>
	<div class="col-md-10">
		<div class="activation-message">
		<p> Dear Sir or Madam: </p>
		<p> Welcome to TechElevator.  We are thrilled <c:out value ="${employerName}"/> is interested in our students. Please follow the link below to create your employer account.</p>
		<p>  <c:out value ="${employerLink}"/> </p>
		<P>Thank you.</P>
		<br>
		
		<p>Best Regards,</p>
		<p>TechElevator Admin</p>
		</div>		
		
	</div>
	<div class="col-md-1"></div>
</div>
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />