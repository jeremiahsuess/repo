<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/WEB-INF/jsp/header.jsp" />



<div class="container">
<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<h1>Student Link</h1>
		<p>Please copy the text below and send it to the student.  The student will be able to use the provided link to activate their account.</p>
	</div>
	<div class="col-md-2"></div>
</div>
<br>
<div class="row">
	<div class="col-md-1"></div>
	<div class="col-md-10">
		<div class="activation-message">
		<p> Greetings <c:out value ="${firstName}"/> <c:out value ="${lastName}"/>, </p>
		<p> Welcome to TechElevator. Please follow the link below to create user account.</p>
		<p>  <c:out value ="${studentLink}"/> </p>
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