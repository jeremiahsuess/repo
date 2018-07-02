<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<div class="container">




	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6"><img id="home_banner" src="img/banner.png" /></div>
		<div class="col-md-3"></div>
	</div>

</div>

<div class="container">




	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6 sprofiles"><p>Student Profiles</p></div>
		<div class="col-md-3"></div>
	</div>

</div>
<div class="container">







	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="first-slide" src="img/javaclass2.png" alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Never Stop Learning</h1>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="second-slide" src="img/cohort2.png" alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Unity</h1>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide" src="img/matchmaking.png" alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Matchmaking</h1>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- /.carousel -->

</div>



<!-- Marketing messaging and featurettes
    ================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

	<!-- Three columns of text below the carousel -->
	<div class="row">
		<div class="col-lg-4">
			<img class="img-circle" src="img/Java.png"
				alt="Generic placeholder image" width="140" height="140">
			<h2>Have What it Takes to Become a Developer?</h2>
			<p>If you're wondering if you would make a good software
				developer, take our short test and get an idea of where you stand.</p>
			<p>
				<a class="btn btn-lg btn-success"
					href="http://www.techelevator.com/aptitude-test" role="button">Take
					Test &raquo;</a>
			</p>
		</div>
		<!-- /.col-lg-4 -->
		<div class="col-lg-4">
			<img class="img-circle" src="img/csharp.png"
				alt="Generic placeholder image" width="140" height="140">
			<h2>Events</h2>
			<p>Come check out one of our events!</p>
			<p>
				<a class="btn btn-lg btn-success"
					href="http://www.techelevator.com/events/" role="button">Events
					&raquo;</a>
			</p>
		</div>
		<!-- /.col-lg-4 -->
		<div class="col-lg-4">
			<img class="img-circle bcblack" src="img/html5css3.png"
				alt="Generic placeholder image" width="140" height="140">
			<h2>Contact Us</h2>
			<p>Please contact us if you need any additional information.</p>
			<p>
				<a class="btn btn-lg btn-success"
					href="http://www.techelevator.com/contact" role="button">Contact
					Us &raquo;</a>
			</p>
		</div>
		<!-- /.col-lg-4 -->
	</div>
	<!-- /.row -->


	<!-- START THE FEATURETTES -->

	<hr class="featurette-divider home-divider">

	<div class="row featurette">
		<div class="col-md-7">
			<p class="lead">
				Baker Electric Building<br> 7100 Euclid Avenue<br> Suite
				140<br> Cleveland, OH 44103
			</p>
		</div>
		<div class="col-md-5">
			<img class="featurette-image img-responsive center-block"
				src="img/cleveland.png" alt="Generic placeholder image">
		</div>
	</div>

	<hr class="featurette-divider home-divider">

	<div class="row featurette">
		<div class="col-md-7 col-md-push-5">
			<p class="lead">
				Rev1 Ventures<br> 1275 Kinnear Road<br> Columbus, OH 43212
			</p>
		</div>
		<div class="col-md-5 col-md-pull-7">
			<img class="featurette-image img-responsive center-block"
				src="img/columbus.png" alt="Generic placeholder image">
		</div>
	</div>


	<!-- /END THE FEATURETTES -->


</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />
