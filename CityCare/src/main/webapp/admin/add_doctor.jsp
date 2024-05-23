<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<c:if test="${empty adminobj}">
	<c:redirect url="../admin_login.jsp" />
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Doctor</title>
<%@include file="../components/css.jsp"%>
<%@ include file="../components/allcss.jsp"%>
</head>
<body>
	<%@ include file="../admin/navbar.jsp"%>
	<!--sidenav -->
	<div
		class="fixed left-0 top-0 w-64 h-full bg-[#f8f4f3] p-4 z-50 sidebar-menu transition-transform">
		<a href="#" class="flex items-center pb-4 border-b border-b-gray-800">

			<h2 class="font-bold text-2xl">
				<i class="fa-solid fa-stethoscope"></i> City <span
					class="bg-[#f84525] text-white px-2 rounded-md">Care</span>
			</h2>
		</a>
		<ul class="mt-4">
			<span class="text-gray-400 font-bold">ADMIN</span>
			<li class="mb-1 group"><a href="index.jsp"
				class="flex font-semibold items-center py-2 px-4 text-gray-900 hover:bg-gray-950 hover:text-gray-100 rounded-md group-[.active]:bg-gray-800 group-[.active]:text-white group-[.selected]:bg-gray-950 group-[.selected]:text-gray-100">
					<i class="ri-home-2-line mr-3 text-lg"></i> <span class="text-sm">Dashboard</span>
			</a></li>

			<li class="mb-1 group"><a href="add_doctor.jsp"
				class="flex font-semibold items-center py-2 px-4 bg-gray-950 text-gray-100 rounded-md group-[.active]:bg-gray-800 group-[.active]:text-white group-[.selected]:bg-gray-950 group-[.selected]:text-gray-100">
					<i class="fa-solid fa-user-doctor mr-3 text-lg"></i> <span
					class="text-sm">Doctors</span>
			</a></li>

			<li class="mb-1 group"><a href=""
				class="flex font-semibold items-center py-2 px-4 text-gray-900 hover:bg-gray-950 hover:text-gray-100 rounded-md group-[.active]:bg-gray-800 group-[.active]:text-white group-[.selected]:bg-gray-950 group-[.selected]:text-gray-100">
					<i class="bx bx-user mr-3 text-lg"></i> <span class="text-sm">Users</span>
			</a></li>

			<li class="mb-1 group"><a href=""
				class="flex font-semibold items-center py-2 px-4 text-gray-900 hover:bg-gray-950 hover:text-gray-100 rounded-md group-[.active]:bg-gray-800 group-[.active]:text-white group-[.selected]:bg-gray-950 group-[.selected]:text-gray-100">
					<i class="fa-solid fa-user-nurse mr-3 text-lg"></i> <span
					class="text-sm">Specialists</span>
			</a></li>
		</ul>
	</div>
	<div
		class="fixed top-0 left-0 w-full h-full bg-black/50 z-40 md:hidden sidebar-overlay"></div>
	<!-- end sidenav -->

	<main
		class="w-full md:w-[calc(100%-256px)] md:ml-64 bg-gray-200 min-h-screen transition-all main">
		<!-- navbar -->
		<div
			class="py-2 px-6 bg-[#f8f4f3] flex items-center shadow-md shadow-black/5 sticky top-0 left-0 z-30">
			<button type="button"
				class="text-lg text-gray-900 font-semibold sidebar-toggle">
				<i class="ri-menu-line"></i>
			</button>

			<ul class="ml-auto flex items-center">
				<li class="mr-1 dropdown"></li>
				<li class="dropdown"></li>
				<button id="fullscreen-button">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						class="hover:bg-gray-100 rounded-full" viewBox="0 0 24 24"
						style="fill: gray; transform:; msFilter:;">
						<path
							d="M5 5h5V3H3v7h2zm5 14H5v-5H3v7h7zm11-5h-2v5h-5v2h7zm-2-4h2V3h-7v2h5z"></path></svg>
				</button>
				<script>
                    const fullscreenButton = document.getElementById('fullscreen-button');
                
                    fullscreenButton.addEventListener('click', toggleFullscreen);
                
                    function toggleFullscreen() {
                        if (document.fullscreenElement) {
                            // If already in fullscreen, exit fullscreen
                            document.exitFullscreen();
                        } else {
                            // If not in fullscreen, request fullscreen
                            document.documentElement.requestFullscreen();
                        }
                    }
                </script>

				<li class="dropdown ml-3">
					<button type="button" class="dropdown-toggle flex items-center"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">
						<div class="flex-shrink-0 w-10 h-10 relative">
							<div
								class="p-1 bg-white rounded-full focus:outline-none focus:ring">
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
							<h2 class="text-sm font-semibold text-gray-800">Admin</h2>
							<p class="text-xs text-gray-500">Administrator</p>
						</div>
					</button>
					<ul
						class="dropdown-menu shadow-md shadow-black/5 z-30 hidden py-1.5 rounded-md bg-white border border-gray-100 w-full max-w-[140px]">
						<li><a href="#"
							class="flex items-center text-[13px] py-1.5 px-4 text-gray-600 hover:text-[#f84525] hover:bg-gray-50">Profile</a>
						</li>
						<li><a href="#"
							class="flex items-center text-[13px] py-1.5 px-4 text-gray-600 hover:text-[#f84525] hover:bg-gray-50">Settings</a>
						</li>
						<li><a href="../adminLogout"
							class="flex items-center text-[13px] py-1.5 px-4 text-gray-600 hover:text-[#f84525] hover:bg-gray-50">Logout</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>


		<!-- end navbar -->

		<c:if test="${not empty error }">
			<p class="text-center text-danger fs-3 mt-2">${error }</p>
			<c:remove var="error" scope="session" />
		</c:if>

		<c:if test="${not empty succmsg }">
			<p class="text-center text-success fs-3 mt-2">${succmsg }</p>
			<c:remove var="succmsg" scope="session" />
		</c:if>


		<!-- Content -->
		<div class="p-9">
			<!-- Add doctor Form Starts -->
			<form>
				<div class="items-center justify-end gap-x-6">
					<div class="border-b border-gray-900/10">
						<p class=" fs-3">Add Doctor</p>
						
						<div class="mt-4 grid gap-x-6 gap-y-4 sm:grid-cols-6 ">
							<div class="sm:col-span-2 sm:col-start-1">
								<label for="city"
									class="block text-sm font-medium leading-6 text-gray-900">Full
									Name</label>
								<div class="mt-2">
									<input type="text" name="name" id="name" autocomplete="name"
										class="form-control block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
								</div>
							</div>

							<div class="sm:col-span-2 sm:col-start-3">
								<label for="region"
									class="block text-sm font-medium leading-6 text-gray-900">Date
									of Birth </label>
								<div class="mt-2">
									<input type="date" name="dob" id="dob" autocomplete="dob"
										class="form-control block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
								</div>
							</div>


							<div class="sm:col-span-2 sm:col-start-1">
								<label for="city"
									class="block text-sm font-medium leading-6 text-gray-900">Qualification</label>
								<div class="mt-2">
									<input type="text" name="qualification" id="qualification" autocomplete="qualification"
										class="form-control block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
								</div>
							</div>

							<div class="sm:col-span-3 sm:col-start-3">
								<label for="country"
									class="block text-sm font-medium leading-6 text-gray-900">Specialist</label>
								<div class="mt-2">
									<select id="country" name="country" autocomplete="country-name"
										class="form-control block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:max-w-xs sm:text-sm sm:leading-6">
										<option>--select--</option>
										<option>Canada</option>
										<option>Mexico</option>
									</select>
								</div>
							</div>


							<div class="sm:col-span-2 sm:col-start-1">
								<label for="city"
									class="block text-sm font-medium leading-6 text-gray-900">Email</label>
								<div class="mt-2">
									<input type="email" name="email" id="email" autocomplete="email"
										class="form-control block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
								</div>
							</div>

							<div class="sm:col-span-2 sm:col-start-3">
								<label for="region"
									class="block text-sm font-medium leading-6 text-gray-900">Mobile
									Number </label>
								<div class="mt-2">
									<input type="text" name="mobile" id="mobile" autocomplete="mobile"
										class="form-control block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
								</div>
							</div>


							<div class="sm:col-span-2 sm:col-start-1">
								<label for="city"
									class="block text-sm font-medium leading-6 text-gray-900">Password</label>
								<div class="mt-2">
									<input type="password" name="password" id="password" autocomplete="password"
										class="form-control block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
								</div>
							</div>
							
							<div class="sm:col-span-2 sm:col-start-3">
								<div class="mt-8 flex items-center justify-end gap-x-6">
								<button type="submit"
									class="rounded-md block w-full bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Add
									Doctor</button>
							</div>
							</div>

							
						</div>
					</div>
				</div>


			</form>



			<!-- Add Doctor Form End -->
		</div>
		<!-- End Content -->


	</main>

	<script src="https://unpkg.com/@popperjs/core@2"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

	<script>
        // start: Sidebar
        const sidebarToggle = document.querySelector('.sidebar-toggle')
        const sidebarOverlay = document.querySelector('.sidebar-overlay')
        const sidebarMenu = document.querySelector('.sidebar-menu')
        const main = document.querySelector('.main')
        sidebarToggle.addEventListener('click', function (e) {
            e.preventDefault()
            main.classList.toggle('active')
            sidebarOverlay.classList.toggle('hidden')
            sidebarMenu.classList.toggle('-translate-x-full')
        })
        sidebarOverlay.addEventListener('click', function (e) {
            e.preventDefault()
            main.classList.add('active')
            sidebarOverlay.classList.add('hidden')
            sidebarMenu.classList.add('-translate-x-full')
        })
        document.querySelectorAll('.sidebar-dropdown-toggle').forEach(function (item) {
            item.addEventListener('click', function (e) {
                e.preventDefault()
                const parent = item.closest('.group')
                if (parent.classList.contains('selected')) {
                    parent.classList.remove('selected')
                } else {
                    document.querySelectorAll('.sidebar-dropdown-toggle').forEach(function (i) {
                        i.closest('.group').classList.remove('selected')
                    })
                    parent.classList.add('selected')
                }
            })
        })
        // end: Sidebar



        // start: Popper
        const popperInstance = {}
        document.querySelectorAll('.dropdown').forEach(function (item, index) {
            const popperId = 'popper-' + index
            const toggle = item.querySelector('.dropdown-toggle')
            const menu = item.querySelector('.dropdown-menu')
            menu.dataset.popperId = popperId
            popperInstance[popperId] = Popper.createPopper(toggle, menu, {
                modifiers: [
                    {
                        name: 'offset',
                        options: {
                            offset: [0, 8],
                        },
                    },
                    {
                        name: 'preventOverflow',
                        options: {
                            padding: 24,
                        },
                    },
                ],
                placement: 'bottom-end'
            });
        })
        document.addEventListener('click', function (e) {
            const toggle = e.target.closest('.dropdown-toggle')
            const menu = e.target.closest('.dropdown-menu')
            if (toggle) {
                const menuEl = toggle.closest('.dropdown').querySelector('.dropdown-menu')
                const popperId = menuEl.dataset.popperId
                if (menuEl.classList.contains('hidden')) {
                    hideDropdown()
                    menuEl.classList.remove('hidden')
                    showPopper(popperId)
                } else {
                    menuEl.classList.add('hidden')
                    hidePopper(popperId)
                }
            } else if (!menu) {
                hideDropdown()
            }
        })

        function hideDropdown() {
            document.querySelectorAll('.dropdown-menu').forEach(function (item) {
                item.classList.add('hidden')
            })
        }
        function showPopper(popperId) {
            popperInstance[popperId].setOptions(function (options) {
                return {
                    ...options,
                    modifiers: [
                        ...options.modifiers,
                        { name: 'eventListeners', enabled: true },
                    ],
                }
            });
            popperInstance[popperId].update();
        }
        function hidePopper(popperId) {
            popperInstance[popperId].setOptions(function (options) {
                return {
                    ...options,
                    modifiers: [
                        ...options.modifiers,
                        { name: 'eventListeners', enabled: false },
                    ],
                }
            });
        }
        // end: Popper



        // start: Tab
        document.querySelectorAll('[data-tab]').forEach(function (item) {
            item.addEventListener('click', function (e) {
                e.preventDefault()
                const tab = item.dataset.tab
                const page = item.dataset.tabPage
                const target = document.querySelector('[data-tab-for="' + tab + '"][data-page="' + page + '"]')
                document.querySelectorAll('[data-tab="' + tab + '"]').forEach(function (i) {
                    i.classList.remove('active')
                })
                document.querySelectorAll('[data-tab-for="' + tab + '"]').forEach(function (i) {
                    i.classList.add('hidden')
                })
                item.classList.add('active')
                target.classList.remove('hidden')
            })
        })
        // end: Tab



        // start: Chart
        new Chart(document.getElementById('order-chart'), {
            type: 'line',
            data: {
                labels: generateNDays(7),
                datasets: [
                    {
                        label: 'Active',
                        data: generateRandomData(7),
                        borderWidth: 1,
                        fill: true,
                        pointBackgroundColor: 'rgb(59, 130, 246)',
                        borderColor: 'rgb(59, 130, 246)',
                        backgroundColor: 'rgb(59 130 246 / .05)',
                        tension: .2
                    },
                    {
                        label: 'Completed',
                        data: generateRandomData(7),
                        borderWidth: 1,
                        fill: true,
                        pointBackgroundColor: 'rgb(16, 185, 129)',
                        borderColor: 'rgb(16, 185, 129)',
                        backgroundColor: 'rgb(16 185 129 / .05)',
                        tension: .2
                    },
                    {
                        label: 'Canceled',
                        data: generateRandomData(7),
                        borderWidth: 1,
                        fill: true,
                        pointBackgroundColor: 'rgb(244, 63, 94)',
                        borderColor: 'rgb(244, 63, 94)',
                        backgroundColor: 'rgb(244 63 94 / .05)',
                        tension: .2
                    },
                ]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        function generateNDays(n) {
            const data = []
            for(let i=0; i<n; i++) {
                const date = new Date()
                date.setDate(date.getDate()-i)
                data.push(date.toLocaleString('en-US', {
                    month: 'short',
                    day: 'numeric'
                }))
            }
            return data
        }
        function generateRandomData(n) {
            const data = []
            for(let i=0; i<n; i++) {
                data.push(Math.round(Math.random() * 10))
            }
            return data
        }
        // end: Chart

        
    </script>
</body>
</html>