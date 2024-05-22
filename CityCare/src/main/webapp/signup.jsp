<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<%@ include file="components/allcss.jsp"%>
</head>
<body>
	<%@ include file="components/Navbar.jsp"%>
	<div class="flex min-h-full flex-col justify-center px-6 py-12 lg:px-8">
		<div class="sm:mx-auto sm:w-full sm:max-w-sm">


			<h2
				class="mt-10 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900">Sign
				Up</h2>
		</div>

		<c:if test="${not empty succmsg }">
			<p class="text-center text-success fs-3">${succmsg }</p>
			<c:remove var="succmsg" scope="session" />
		</c:if>

		<c:if test="${not empty error }">
			<p class="text-center text-danger fs-3">${error }</p>
			<c:remove var="error" scope="session" />
		</c:if>

		<div class="mt-10 sm:mx-auto sm:w-full sm:max-w-sm">
			<!-- Form Starts -->
			<form class="space-y-6" action="user_register" method="POST">
				<div>
					<label for="name"
						class="block text-sm font-medium leading-6 text-gray-900">Full
						Name</label>
					<div class="mt-2">
						<input id="name" name="name" type="text" class="form-control" autocomplete="name"
							required
							class="block w-full rounded-md border-2 py-1.5 text-gray-900 shadow-sm ring-3 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
					</div>
				</div>

				<div>
					<label for="email"
						class="block text-sm font-medium leading-6 text-gray-900">Email
						address</label>
					<div class="mt-2">
						<input id="email" name="email" class="form-control" type="email" autocomplete="email"
							required
							class="block w-full rounded-md border-2 py-1.5 text-gray-900 shadow-sm ring-3 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
					</div>
				</div>

				<div>
					<div class="flex items-center justify-between">
						<label for="password"
							class="block text-sm font-medium leading-6 text-gray-900">Password</label>
						<div class="text-sm">
							<a href="#"
								class="font-semibold text-indigo-600 hover:text-indigo-500">Forgot
								password?</a>
						</div>
					</div>
					<div class="mt-2">
						<input id="password" class="form-control" name="password" type="password"
							autocomplete="current-password" required
							class="block w-full rounded-md border-2 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
					</div>
				</div>

				<div>
					<button type="submit"
						class="flex w-full justify-center rounded-md bg-indigo-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Sign
						up</button>
				</div>
			</form>

			<p class="mt-10 text-center text-sm text-gray-500">
				Not a member? <a href="signup.jsp"
					class="font-semibold leading-6 text-indigo-600 hover:text-indigo-500">Sign
					Up Now</a>
			</p>
		</div>
	</div>

</body>
</html>