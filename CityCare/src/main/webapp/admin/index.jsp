<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<c:if test="${empty adminobj}">
	<c:redirect url="../admin_login.jsp" />
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Panel</title>

<%@include file="../components/css.jsp"%>
<%@ include file="../components/allcss.jsp"%>
</head>
<body class="text-gray-800 font-inter">
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
				class="flex font-semibold items-center py-2 px-4 bg-gray-950 text-gray-100 rounded-md group-[.active]:bg-gray-800 group-[.active]:text-white group-[.selected]:bg-gray-950 group-[.selected]:text-gray-100">
					<i class="ri-home-2-line mr-3 text-lg"></i> <span class="text-sm">Dashboard</span>
			</a></li>

			<li class="mb-1 group"><a href="add_doctor.jsp"
				class="flex font-semibold items-center py-2 px-4 text-gray-900 hover:bg-gray-950 hover:text-gray-100 rounded-md group-[.active]:bg-gray-800 group-[.active]:text-white group-[.selected]:bg-gray-950 group-[.selected]:text-gray-100">
					<i class="fa-solid fa-user-doctor mr-3 text-lg"></i> <span
					class="text-sm">Doctors</span>
			</a></li>

			<li class="mb-1 group"><a href="show_doctors.jsp"
				class="flex font-semibold items-center py-2 px-4 text-gray-900 hover:bg-gray-950 hover:text-gray-100 rounded-md group-[.active]:bg-gray-800 group-[.active]:text-white group-[.selected]:bg-gray-950 group-[.selected]:text-gray-100">
					<i class="fa-solid fa-user-doctor mr-3 text-lg"></i> <span
					class="text-sm">All Doctors</span>
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
		<div class="p-6">
			<div
				class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-6">

				<div
					class="bg-white rounded-md border border-gray-100 shadow-md shadow-black/5">
					<div class="card-body text-center">
						<i class="fa-solid fa-user-doctor fs-2 "></i>
						<p class="text-center fs-3">
							Doctors <br> 5
						</p>
					</div>
				</div>

				<div
					class="bg-white rounded-md border border-gray-100 shadow-md shadow-black/5">
					<div class="card-body text-center">
						<i class="fa-solid fa-user fs-2"></i>
						<p class="text-center fs-3">
							Users <br> 5
						</p>
					</div>
				</div>

				<div
					class="bg-white rounded-md border border-gray-100 shadow-md shadow-black/5">
					<div class="card-body text-center">
						<i class="fa-solid fa-calendar-days fs-2"></i>
						<p class="text-center fs-3">
							Total Appointments <br> 5
						</p>
					</div>
				</div>

				<div data-bs-toggle="modal" data-bs-target="#exampleModal"
					class="bg-white rounded-md border border-gray-100 shadow-md shadow-black/5">
					<div class="card-body text-center">
						<i class="fa-solid fa-user-nurse fs-2"></i>
						<p class="text-center fs-3">
							Specialists <br> 5
						</p>
					</div>
				</div>

			</div>
		</div>
		<!-- End Content -->

		<!-- Button trigger modal -->


		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form action="../addSpecialist" method="post">
							<div class="form-group">
								<label>Enter Specialist Name</label> <input type="text"
									name="specName" class="form-control">
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-primary">Add</button>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
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