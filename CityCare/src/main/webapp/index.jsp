<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<style type="text/css">
img {
	width: 100%;
	height: auto;
	max-height: 90vh; /* Adjust the maximum height */
	/* Maintain aspect ratio and cover the container */
}

.carousel-item {
	align-items: center;
	height: 90vh; /* Ensure carousel items have a fixed height */
}
</style>
<%@ include file="components/allcss.jsp"%>
</head>
<body>
	<%@ include file="components/Navbar.jsp"%>
	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/doctor_team_1.jpg" class="d-block" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/doctor_team_2.jpg" class="d-block" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/doctor.jpg" class="d-block" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container p-3">
		<p class="text-center fs-2">Key Features of our Hospital</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>lsdfjl sdfjljf sldfjslf sldfjslfj slfdjsf</p>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>lsdfjl sdfjljf sldfjslf sldfjslfj slfdjsf</p>
							</div>
						</div>
					</div>

					<div class="col-md-6 mt-4">
						<div class="card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>lsdfjl sdfjljf sldfjslf sldfjslfj slfdjsf</p>
							</div>
						</div>
					</div>

					<div class="col-md-6 mt-4">
						<div class="card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>lsdfjl sdfjljf sldfjslf sldfjslfj slfdjsf</p>
							</div>
						</div>
					</div>

				</div>
			</div>

			<div class="col-md-4">
				<img alt="" src="img/doc.jpg" style="height:300px;">
			</div>

		</div>
	</div>
</body>
</html>