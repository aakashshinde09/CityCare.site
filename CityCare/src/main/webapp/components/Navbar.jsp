<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<nav class="bg-gray-800">
	<div class=" max-w-7xl px-2 sm:px-6 lg:px-8">
		<div class="relative flex h-16 items-center justify-between">
			<div class="absolute inset-y-0 left-0 flex items-center sm:hidden">

				<button type="button"
					class="relative inline-flex items-center justify-center rounded-md p-2 text-gray-400 hover:bg-gray-700 hover:text-white focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white"
					aria-controls="mobile-menu" aria-expanded="false">
					<span class="absolute -inset-0.5"></span> <span class="sr-only">Open
						main menu</span>

				</button>
			</div>
			<div
				class="flex flex-1 items-center justify-center sm:items-stretch sm:justify-start">
				<div class="flex flex-shrink-0 items-center">

					<a href="../CityCare">
						<h2 class="font-bold text-2xl text-white">
							<i class="fa-solid fa-stethoscope"></i> City <span
								class="bg-[#f84525] text-white px-2 rounded-md">Care</span>
						</h2>
					</a>
				</div>

			</div>

			<c:if test="${not empty userobj}">


				<div
					class="absolute inset-y-0 right-0 flex items-center sm:static sm:inset-auto sm:ml-6 sm:pr-0">
					<div class="relative ml-3">
						<div class="hidden sm:ml-6 sm:block">
							<div class="flex space-x-4">
								<a href="user/user_appointment.jsp"
									class="text-gray-300 hover:bg-gray-700 hover:text-white rounded-md px-3 py-3 text-sm font-medium">
									<i class="fa-solid fa-calendar-check"></i> Appointments
								</a> <a href="#"
									class="text-gray-300 hover:bg-gray-700 hover:text-white rounded-md px-3 py-3 text-sm font-medium">
									<i class="fa-solid fa-calendar-check"></i> View Appointments
								</a>
								<div class="dropdown ml-3">
									<button type="button"
										class="dropdown-toggle flex items-center text-white"
										id="dropdownMenuButton1" data-bs-toggle="dropdown"
										aria-expanded="false">
										<div class="flex-shrink-0 w-10 h-10 relative">
											<div
												class="p-1 bg-dark rounded-full focus:outline-none focus:ring">
												<img class="w-8 h-8 rounded-full"
													src="https://laravelui.spruko.com/tailwind/ynex/build/assets/images/faces/9.jpg"
													alt="" />
												<div
													class="top-0 left-7 absolute w-3 h-3 bg-lime-400 border-2 border-white rounded-full animate-ping"></div>
												<div
													class="top-0 left-7 absolute w-3 h-3 bg-lime-500 border-2 border-white rounded-full"></div>
											</div>
										</div>
										<div class="p-2 md:block text-left">
											<h2 class="text-sm font-semibold text-white">${userobj.name }</h2>
											<p class="text-xs text-gray-500">User</p>
										</div>
									</button>
									<ul
										class="dropdown-menu shadow-md shadow-black/5 z-30 hidden py-1.5 rounded-md bg-white border border-gray-100 w-full max-w-[140px]">
										<li><a href="#"
											class="flex items-center text-[13px] py-1.5 px-4 text-gray-600 hover:text-[#f84525] hover:bg-gray-50"><i
												class="fa-solid fa-user mr-2"></i> Profile</a></li>
										<li><a href="#"
											class="flex items-center text-[13px] py-1.5 px-4 text-gray-600 hover:text-[#f84525] hover:bg-gray-50"><i
												class="fa-solid fa-gear mr-2"></i> Settings</a></li>
										<li><a href="userLogout"
											class="flex items-center text-[13px] py-1.5 px-4 text-gray-600 hover:text-[#f84525] hover:bg-gray-50"><i
												class="fa-solid fa-right-from-bracket mr-2"></i> Logout</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:if>

			<c:if test="${empty userobj}">
				<div
					class="absolute inset-y-0 right-0 flex items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0">
					<div class="relative ml-3">
						<div class="hidden sm:ml-6 sm:block">
							<div class="flex space-x-4">
								<a href="admin_login.jsp"
									class="hover:bg-gray-700 hover:text-white text-gray-300 rounded-md px-3 py-2 text-sm font-medium">
									<i class="fa-solid fa-user-tie"></i> Admin
								</a> <a href="doctor_login.jsp"
									class="text-gray-300 hover:bg-gray-700 hover:text-white rounded-md px-3 py-2 text-sm font-medium">
									<i class="fa-solid fa-user-doctor"></i> Doctor
								</a> <a href="#"
									class="text-gray-300 hover:bg-gray-700 hover:text-white rounded-md px-3 py-2 text-sm font-medium">
									<i class="fa-solid fa-calendar-check"></i> Appointment
								</a> <a href="user_login.jsp"
									class="text-gray-300 hover:bg-gray-700 hover:text-white rounded-md px-3 py-2 text-sm font-medium">
									<i class="fa-solid fa-user"></i> User
								</a>
							</div>
						</div>
					</div>
				</div>
			</c:if>





		</div>
	</div>


	<c:if test="${empty userobj }">

		<div class="sm:hidden" id="mobile-menu">
			<div class="space-y-1 px-2 pb-3 pt-2">

				<a href="#"
					class="bg-gray-900 text-white block rounded-md px-3 py-2 text-base font-medium"
					aria-current="page"><i class="fa-solid fa-user-tie"></i> Admin</a>
				<a href="#"
					class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium"><i
					class="fa-solid fa-user-doctor"></i> Doctor</a> <a href="#"
					class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium"><i
					class="fa-solid fa-calendar-check"></i> Appointment</a> <a href="#"
					class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium"><i
					class="fa-solid fa-user"></i> User</a>
			</div>
		</div>

	</c:if>

	<c:if test="${not empty userobj }">

		<div class="sm:hidden" id="mobile-menu">
			<div class="space-y-1 px-2 pb-3 pt-2">

				<a href="#"
					class="bg-gray-900 text-white block rounded-md px-3 py-2 text-base font-medium"
					aria-current="page"><i class="fa-solid fa-calendar-check"></i>
					Appointments</a> <a href="#"
					class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium"><i
					class="fa-solid fa-calendar-check"></i> View Appointments</a> <a
					href="#"
					class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium"><i
					class="fa-solid fa-user"></i> Profile</a> <a href="#"
					class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium"><i
					class="fa-solid fa-gear"></i> Setting</a> <a href="#"
					class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium"><i
					class="fa-solid fa-right-from-bracket"></i> Logout</a>
			</div>
		</div>

	</c:if>

</nav>
