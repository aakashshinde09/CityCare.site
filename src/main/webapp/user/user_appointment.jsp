
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DoctorDao"%>
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

.backImg{
	background: linear-gradient(rgba(0,0,0,.4), rgba(0,0,0,.4)),
	url("../img/hospital.jpg");
	height: 40vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
<%@ include file="../components/allcss.jsp"%>
</head>
<body>
	<%@ include file="../components/Navbar.jsp"%>
	
	<div class="container-fluid backImg p-5">
	<p class="text-center fs-2 text-white"></p>
	</div>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 p-5">
				<img alt="" src="../img/appoint.jpg">
			</div>

			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<p class="text-center fs-3">User Appointment</p>

						<c:if test="${not empty error }">
							<p class="fs-4 text-center text-danger">${error }</p>
							<c:remove var="error" scope="session" />
						</c:if>

						<c:if test="${not empty succmsg }">
							<p class="fs-4 text-center text-success">${succmsg }</p>
							<c:remove var="succmsg" scope="session" />
						</c:if>

						<form class="row g-3" action="add_appointment" method="post">

							<input type="hidden" name="id" value="${userobj.user_Id }">

							<div class="col-md-6">
								<label for="name" class="form-label">Full Name</label> <input
									required type="text" class="form-control" name="name">
							</div>

							<div class="col-md-6">
								<label for="Gender" class="form-label">Gender</label> <select
									required class="form-control" name="gender">
									<option value="male">Male</option>
									<option value="female">female</option>
								</select>
							</div>

							<div class="col-md-6">
								<label for="age" class="form-label">Age</label> <input required
									type="text" class="form-control" name="age">
							</div>

							<div class="col-md-6">
								<label for="date" class="form-label">Appointment</label> <input
									required type="date" class="form-control"
									name="appointment_date">
							</div>

							<div class="col-md-6">
								<label for="email" class="form-label">Email</label> <input
									required type="email" class="form-control" name="email">
							</div>

							<div class="col-md-6">
								<label for="mobile" class="form-label">Mobile No</label> <input
									required type="text" class="form-control" name="mobile">
							</div>

							<div class="col-md-6">
								<label for="disease" class="form-label">Disease</label> <input
									required type="text" class="form-control" name="disease">
							</div>

							<div class="col-md-6">
								<label for="name" class="form-label">Doctor</label> <select
									required class="form-control" name="doctor">
									<option value="">--select--</option>
									
									<% 
									DoctorDao dao = new DoctorDao();
									List<Doctor> list = dao.getAllDoctors();
										for(Doctor d : list) {
									%>
									
									<option value="<%=d.getDoctor_Id()%>"><%=d.getDoctor_name() %> (<%=d.getDoctor_specialist() %>)</option>
									
									<%
										}
									%>
								</select>
							</div>

							<div class="col-md-12">
								<label for="address" class="form-label">Address</label>
								<textarea rows="3" cols="" required name="address"
									class="form-control"></textarea>
							</div>

							<c:if test="${empty userobj }">
								<a href="../user_login.jsp"
									class="col-md-6 offset-md-3 btn btn-success">Submit</a>
							</c:if>

							<c:if test="${not empty userobj }">
								<button class="col-md-6 offset-md-3 btn btn-success"
									type="submit">Submit</button>
							</c:if>

						</form>


					</div>
				</div>
			</div>
		</div>
	</div>

	<hr>
	<%@ include file="../components/footer.jsp"%>
</body>
</html>