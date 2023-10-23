<%--Head--%>
<jsp:include page="../../components/includes/static/head.jsp"></jsp:include>

<%--Content body--%>
    <div class="bg-gray-100 xl:h-screen dark:bg-primary-100">
        <div class="body-content" x-data="{ open: true }">
            <!-- sidebar -->
            <jsp:include page="components/includes/sidebar.jsp"></jsp:include>
            <!-- main with navbar -->
            <div class="mx-auto transition-all content-wrapper" id="dash"
                x-bind:class="! open ? 'lg:ml-0' : 'lg:ml-[280px]'">
                <!-- navbar -->
                <jsp:include page="components/includes/navbar.jsp"></jsp:include>
                <!-- statistics -->
                <section class="px-4 pt-6">
                    <div class="grid grid-cols-1 gap-6 md:grid-cols-2 xl:grid-cols-4">
                        <div
                            class="p-4 bg-white rounded-lg shadow hover:shadow-xl dark:bg-primary-100 border-2 border-primary-50">
                            <div class="flex flex-row items-center">
                                <div class="flex-1 text-left md:text-left">
                                    <h2 class="mb-2 text-lg font-bold text-gray-600 uppercase dark:text-gray-400">
                                        Total orders</h2>
                                    <p class="mb-2 text-lg font-medium text-gray-600 dark:text-gray-400">110 </p>
                                    <p class="text-sm font-medium text-gray-400 dark:text-gray-400">Lorem ipsum dor amet
                                    </p>
                                </div>
                                <div class="flex-shrink">
                                    <a href="#" class="flex items-center px-8 py-4 text-gray-400 dark:text-gray-400 ">
                                        <span class="inline-block mr-3">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor"
                                                class="w-10 h-10 dark:group-hover:text-gray-300 bi bi-basket"
                                                viewBox="0 0 16 16">
                                                <path
                                                    d="M5.757 1.071a.5.5 0 0 1 .172.686L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1v4.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 13.5V9a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h1.217L5.07 1.243a.5.5 0 0 1 .686-.172zM2 9v4.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V9H2zM1 7v1h14V7H1zm3 3a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 4 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 6 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 8 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5z">
                                                </path>
                                            </svg>
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div
                            class="p-4 bg-white rounded-lg shadow hover:shadow-xl dark:bg-primary-100 border-2 border-primary-50">
                            <div class="flex flex-row items-center">
                                <div class="flex-1 text-left md:text-left">
                                    <h2 class="mb-2 text-lg font-bold text-gray-600 uppercase dark:text-gray-400">
                                        Total Revenue</h2>
                                    <p class="mb-2 text-lg font-medium text-gray-600 dark:text-gray-400">569 </p>
                                    <p class="text-sm font-medium text-gray-400 dark:text-gray-400">Lorem ipsum dor amet
                                    </p>
                                </div>
                                <div class="flex-shrink">
                                    <a href="#" class="flex items-center px-8 py-4 text-gray-400 dark:text-gray-400 ">
                                        <span class="inline-block mr-3 dark:group-hover:text-gray-300">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                class="w-10 h-10bi bi-bag" fill="currentColor"
                                                viewBox="0 0 16 16">
                                                <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z" />
                                            </svg>
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div
                            class="p-4 bg-white rounded-lg shadow hover:shadow-xl dark:bg-primary-100 border-2 border-primary-50">
                            <div class="flex flex-row items-center">
                                <div class="flex-1 text-left md:text-left">
                                    <h2 class="mb-2 text-lg font-bold text-gray-600 uppercase dark:text-gray-400">
                                        Total Payment</h2>
                                    <p class="mb-2 text-lg font-medium text-gray-600 dark:text-gray-400">4567 </p>
                                    <p class="text-sm font-medium text-gray-400 dark:text-gray-400">Lorem ipsum dor amet
                                    </p>
                                </div>
                                <div class="flex-shrink">
                                    <a href="#" class="flex items-center px-8 py-4 text-gray-400 dark:text-gray-400 ">
                                        <span class="inline-block mr-3 dark:group-hover:text-gray-300">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="w-10 h-10 bi bi-cash" viewBox="0 0 16 16">
                                                <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z" />
                                                <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z" />
                                            </svg>
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div
                            class="p-4 bg-white rounded-lg shadow hover:shadow-xl dark:bg-primary-100 border-2 border-primary-50">
                            <div class="flex flex-row items-center">
                                <div class="flex-1 text-left md:text-left">
                                    <h2 class="mb-2 text-lg font-bold text-gray-600 uppercase dark:text-gray-400">
                                        Total Customers</h2>
                                    <p class="mb-2 text-lg font-medium text-gray-600 dark:text-gray-400">2310 </p>
                                    <p class="text-sm font-medium text-gray-400 dark:text-gray-400">Lorem ipsum dor amet
                                    </p>
                                </div>
                                <div class="flex-shrink">
                                    <a href="#" class="flex items-center px-8 py-4 text-gray-400 dark:text-gray-400 ">
                                        <span class="inline-block mr-3">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="w-10 h-10 bi bi-people" viewBox="0 0 16 16">
                                                <path d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022zM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0zM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816zM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275zM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4z" />
                                            </svg>
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- table users -->
                <section class="px-4 py-6">
                    <div class="grid grid-cols-1">
                        <div
                            class="p-4 bg-white rounded-md shadow md:p-6 dark:bg-primary-100 border-2 border-primary-50">
                            <h2 class=" pb-4 text-xl font-bold border-b dark:border-gray-700
                            dark:text-gray-400">Users</h2>
                            <div class="overflow-x-auto rounded shadow dark:bg-transparent bg-white">
                                <table class="w-full table-auto">
                                    <thead class="bg-lightGray-50">
                                        <tr
                                            class="text-xs text-left text-gray-500 border-b border-gray-200 dark:border-gray-800">
                                            <th class="flex items-center py-4 pl-6 font-medium dark:text-gray-400">
                                                <span>Name</span>
                                            </th>
                                            <th class="px-6 py-4 font-medium dark:text-gray-400">Age</th>
                                            <th class="px-6 py-4 font-medium dark:text-gray-400">Created</th>
                                            <th class="px-6 py-4 font-medium dark:text-gray-400">Job Title</th>
                                            <th class="px-6 py-4 font-medium dark:text-gray-400">Status</th>
                                            <th class="px-6 py-4 font-medium dark:text-gray-400">Actions</th>
                                            <th class="px-6 py-4 font-medium dark:text-gray-400"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="border-b border-gray-200 dark:border-gray-800">
                                            <td class="flex items-center px-6 py-3 font-medium">
                                                <div class="flex">
                                                    <img class="object-cover w-10 h-10 mr-4 rounded-full"
                                                        src="https://i.postimg.cc/WbPKvgBr/pexels-italo-melo-2379005.jpg"
                                                        alt="">
                                                    <div>
                                                        <p class="text-sm font-medium dark:text-gray-400">John Smith</p>
                                                        <p class="text-xs text-gray-500 dark:text-gray-500">
                                                            john@gmail.com</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">28</td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">07/01/2022</td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">Product Designer
                                            </td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">
                                                <span
                                                    class="inline-block px-2 py-1 text-blue-700 bg-blue-100 rounded-full dark:bg-gray-800 dark:text-gray-400">Approved</span>
                                            </td>
                                            <td class="px-6">
                                                <div class="flex ">
                                                    <a href="#"
                                                        class="px-4 py-2 mr-4 text-sm text-gray-600 bg-gray-200 rounded-md dark:bg-gray-600 dark:text-gray-400 dark:hover:bg-gray-800 hover:bg-gray-300">Edit</a>
                                                    <a href="#"
                                                        class="px-4 py-2 text-sm text-gray-600 bg-gray-200 rounded-md dark:bg-gray-600 dark:text-gray-400 dark:hover:bg-gray-800 hover:bg-gray-300">Delete</a>
                                                </div>
                                            </td>
                                            <td class="px-6 text-sm font-medium">
                                                <a href="#"
                                                    class="text-gray-700 dark:text-gray-400 dark:hover:text-gray-200 hover:text-gray-400">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                        fill="currentColor" class="bi bi-three-dots"
                                                        viewBox="0 0 16 16">
                                                        <path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z" />
                                                    </svg>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="border-b border-gray-200 dark:border-gray-800">
                                            <td class="flex items-center px-6 py-3 font-medium">
                                                <div class="flex">
                                                    <img class="object-cover w-10 h-10 mr-4 rounded-full"
                                                        src="https://i.postimg.cc/WbPKvgBr/pexels-italo-melo-2379005.jpg"
                                                        alt="">
                                                    <div>
                                                        <p class="text-sm font-medium dark:text-gray-400">Adam Smith</p>
                                                        <p class="text-xs text-gray-500 dark:text-gray-500">
                                                            adam@gmail.com</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">28</td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">07/01/2022</td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">Product Designer
                                            </td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">
                                                <span
                                                    class="inline-block px-2 py-1 text-blue-700 bg-blue-100 rounded-full dark:bg-gray-800 dark:text-gray-400">Approved</span>
                                            </td>
                                            <td class="px-6">
                                                <div class="flex ">
                                                    <a href="#"
                                                        class="px-4 py-2 mr-4 text-sm text-gray-600 bg-gray-200 rounded-md dark:bg-gray-600 dark:text-gray-400 dark:hover:bg-gray-800 hover:bg-gray-300">Edit</a>
                                                    <a href="#"
                                                        class="px-4 py-2 text-sm text-gray-600 bg-gray-200 rounded-md dark:bg-gray-600 dark:text-gray-400 dark:hover:bg-gray-800 hover:bg-gray-300">Delete</a>
                                                </div>
                                            </td>
                                            <td class="px-6 text-sm font-medium">
                                                <a href="#"
                                                    class="text-gray-700 dark:text-gray-400 dark:hover:text-gray-200 hover:text-gray-400">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                        fill="currentColor" class="bi bi-three-dots"
                                                        viewBox="0 0 16 16">
                                                        <path
                                                            d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z" />
                                                    </svg>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="border-b border-gray-200 dark:border-gray-800">
                                            <td class="flex items-center px-6 py-3 font-medium">
                                                <div class="flex">
                                                    <img class="object-cover w-10 h-10 mr-4 rounded-full"
                                                        src="https://i.postimg.cc/WbPKvgBr/pexels-italo-melo-2379005.jpg"
                                                        alt="">
                                                    <div>
                                                        <p class="text-sm font-medium dark:text-gray-400">Adron Anthony
                                                        </p>
                                                        <p class="text-xs text-gray-500 dark:text-gray-500">
                                                            adron@gmail.com</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">28</td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">07/01/2022</td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">Product Designer
                                            </td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">
                                                <span
                                                    class="inline-block px-2 py-1 text-blue-700 bg-blue-100 rounded-full dark:bg-gray-800 dark:text-gray-400">Approved</span>
                                            </td>
                                            <td class="px-6">
                                                <div class="flex ">
                                                    <a href="#"
                                                        class="px-4 py-2 mr-4 text-sm text-gray-600 bg-gray-200 rounded-md dark:bg-gray-600 dark:text-gray-400 dark:hover:bg-gray-800 hover:bg-gray-300">Edit</a>
                                                    <a href="#"
                                                        class="px-4 py-2 text-sm text-gray-600 bg-gray-200 rounded-md dark:bg-gray-600 dark:text-gray-400 dark:hover:bg-gray-800 hover:bg-gray-300">Delete</a>
                                                </div>
                                            </td>
                                            <td class="px-6 text-sm font-medium">
                                                <a href="#"
                                                    class="text-gray-700 dark:text-gray-400 dark:hover:text-gray-200 hover:text-gray-400">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                        fill="currentColor" class="bi bi-three-dots"
                                                        viewBox="0 0 16 16">
                                                        <path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z" />
                                                    </svg>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="border-b border-gray-200 dark:border-gray-800">
                                            <td class="flex items-center px-6 py-3 font-medium">
                                                <div class="flex">
                                                    <img class="object-cover w-10 h-10 mr-4 rounded-full"
                                                        src="https://i.postimg.cc/WbPKvgBr/pexels-italo-melo-2379005.jpg"
                                                        alt="">
                                                    <div>
                                                        <p class="text-sm font-medium dark:text-gray-400">Robin Adren
                                                        </p>
                                                        <p class="text-xs text-gray-500 dark:text-gray-500">
                                                            robin@gmail.com</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">28</td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">07/01/2022</td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">Product Designer
                                            </td>
                                            <td class="px-6 text-sm font-medium dark:text-gray-400">
                                                <span
                                                    class="inline-block px-2 py-1 text-blue-700 bg-blue-100 rounded-full dark:bg-gray-800 dark:text-gray-400">Declined</span>
                                            </td>
                                            <td class="px-6">
                                                <div class="flex ">
                                                    <a href="#"
                                                        class="px-4 py-2 mr-4 text-sm text-gray-600 bg-gray-200 rounded-md dark:bg-gray-600 dark:text-gray-400 dark:hover:bg-gray-800 hover:bg-gray-300">Edit</a>
                                                    <a href="#"
                                                        class="px-4 py-2 text-sm text-gray-600 bg-gray-200 rounded-md dark:bg-gray-600 dark:text-gray-400 dark:hover:bg-gray-800 hover:bg-gray-300">Delete</a>
                                                </div>
                                            </td>
                                            <td class="px-6 text-sm font-medium">
                                                <a href="#"
                                                    class="text-gray-700 dark:text-gray-400 dark:hover:text-gray-200 hover:text-gray-400">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                        fill="currentColor" class="bi bi-three-dots"
                                                        viewBox="0 0 16 16">
                                                        <path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z" />
                                                    </svg>
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="px-6 py-5 text-right">
                                    <a class="inline-flex items-center text-xs font-medium text-blue-500 dark:hover:text-blue-400 dark:text-blue-300 hover:text-blue-700"
                                        href="#">
                                        <span class="mr-1">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                                <path
                                                    d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z" />
                                            </svg>
                                        </span>
                                        <span>View all</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- containers -->
                <section class="px-4 py-6">
                    <div class="grid grid-cols-1 gap-6 lg:grid-cols-3 ">
                        <div class="p-4 bg-white rounded-md shadow md:p-6 dark:bg-primary-100 border-2 border-primary-50">
                            <h2 class=" pb-4 text-xl font-bold border-b dark:border-gray-700 dark:text-gray-400">Task
                            overview</h2>
                            <div class="px-4 py-3 text-xs font-medium">
                                <div class="flex px-4 mb-3 text-gray-500 dark:text-gray-400">
                                    <h2 class="mr-auto">Task Name</h2>
                                    <h2>Action</h2>
                                </div>
                                <div class="flex justify-between p-4 mb-4 bg-gray-100 rounded dark:bg-primary-100">
                                    <div class="flex ">
                                        <span
                                            class="inline-flex items-center justify-center w-8 h-8 mr-2 text-blue-600 rounded dark:text-gray-400 dark:bg-gray-700 bg-blue-50">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-people" viewBox="0 0 16 16">
                                                <path
                                                    d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022zM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0zM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816zM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275zM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4z" />
                                            </svg>
                                        </span>
                                        <div class="text-xs">
                                            <p class="font-medium dark:text-gray-400">Team members</p>
                                            <p class="text-gray-500 dark:text-gray-400">Meeting</p>
                                        </div>
                                    </div>
                                    <div class="flex">
                                        <button class="mr-2 text-blue-600 dark:text-gray-400">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                                <path
                                                    d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
                                                <path fill-rule="evenodd"
                                                    d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" />
                                            </svg>
                                        </button>
                                        <button class="text-red-600 dark:text-gray-400">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                                <path
                                                    d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
                                                <path fill-rule="evenodd"
                                                    d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
                                            </svg>
                                        </button>
                                    </div>

                                </div>
                                <div class="flex justify-between p-4 mb-4 bg-gray-100 rounded dark:bg-primary-100">
                                    <div class="flex">
                                        <span
                                            class="inline-flex items-center justify-center w-8 h-8 mr-2 text-blue-600 rounded dark:text-gray-400 dark:bg-gray-700 bg-blue-50">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor"
                                                class="w-5 h-5 dark:group-hover:text-gray-300 bi bi-basket"
                                                viewBox="0 0 16 16">
                                                <path
                                                    d="M5.757 1.071a.5.5 0 0 1 .172.686L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1v4.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 13.5V9a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h1.217L5.07 1.243a.5.5 0 0 1 .686-.172zM2 9v4.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V9H2zM1 7v1h14V7H1zm3 3a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 4 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 6 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 8 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5z">
                                                </path>
                                            </svg>
                                        </span>
                                        <div class="text-xs">
                                            <p class="font-medium dark:text-gray-400"> Products</p>
                                            <p class="text-gray-500 dark:text-gray-400">household</p>
                                        </div>
                                    </div>
                                    <div class="flex">
                                        <button class="mr-2 text-blue-600 dark:text-gray-400">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                                <path
                                                    d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
                                                <path fill-rule="evenodd"
                                                    d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" />
                                            </svg>
                                        </button>
                                        <button class="text-red-600 dark:text-gray-400">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                                <path
                                                    d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
                                                <path fill-rule="evenodd"
                                                    d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                                <div class="flex justify-between p-4 mb-4 bg-gray-100 rounded dark:bg-primary-100">
                                    <div class="flex">
                                        <span
                                            class="inline-flex items-center justify-center w-8 h-8 mr-2 text-blue-600 rounded dark:text-gray-400 dark:bg-gray-700 bg-blue-50">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="w-5 h-5 group-" viewBox="0 0 16 16">
                                                <path
                                                    d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z">
                                                </path>
                                                <path
                                                    d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z">
                                                </path>
                                            </svg>
                                        </span>
                                        <div class="text-xs">
                                            <p class="font-medium dark:text-gray-400">Time</p>
                                            <p class="text-gray-500 dark:text-gray-400">3 hours</p>
                                        </div>
                                    </div>
                                    <div class="flex">
                                        <button class="mr-2 text-blue-600 dark:text-gray-400">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                                <path
                                                    d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
                                                <path fill-rule="evenodd"
                                                    d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" />
                                            </svg>
                                        </button>
                                        <button class="text-red-600 dark:text-gray-400">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                                <path
                                                    d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
                                                <path fill-rule="evenodd"
                                                    d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                                <div class="flex justify-between p-4 mb-4 bg-gray-100 rounded dark:bg-primary-100">
                                    <div class="flex">
                                        <span
                                            class="inline-flex items-center justify-center w-8 h-8 mr-2 text-blue-600 rounded dark:text-gray-400 dark:bg-gray-700 bg-blue-50">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="w-5 h-5 group-" viewBox="0 0 16 16">
                                                <path
                                                    d="M5.5 7a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zM5 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5z">
                                                </path>
                                                <path
                                                    d="M9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.5L9.5 0zm0 1v2A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5z">
                                                </path>
                                            </svg>
                                        </span>
                                        <div class="text-xs">
                                            <p class="font-medium dark:text-gray-400">Documents</p>
                                            <p class="text-gray-500 dark:text-gray-400">pdf</p>
                                        </div>
                                    </div>
                                    <div class="flex">
                                        <button class="mr-2 text-blue-600 dark:text-gray-400">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                                <path
                                                    d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
                                                <path fill-rule="evenodd"
                                                    d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" />
                                            </svg>
                                        </button>
                                        <button class="text-red-600 dark:text-gray-400">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                                <path
                                                    d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
                                                <path fill-rule="evenodd"
                                                    d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-4 bg-white rounded-md shadow md:p-6 dark:bg-primary-100 border-2 border-primary-50">
                            <h2 class=" pb-2 mb-2 text-xl font-bold border-b dark:border-gray-700 dark:text-gray-400">
                            Comments</h2>
                            <div class="flex flex-wrap mb-6">
                                <div class="px-4 ">
                                    <img class="object-cover w-20 h-20 p-2 rounded-full"
                                        src="https://i.postimg.cc/RhQYkKYk/pexels-italo-melo-2379005.jpg">
                                </div>
                                <div class="flex-grow px-4">
                                    <a href="#" class="text-black ">
                                        <span class="mr-2 text-lg font-medium dark:text-gray-400">Johnsena</span>
                                        <span class="font-normal text-gray-600 dark:text-gray-400">John@gmail.com</span>
                                    </a>
                                    <div class="flex items-center my-1 text-xs text-gray-600 dark:text-gray-400">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                            fill="currentColor" class="w-3 h-3 mr-2" viewBox="0 0 16 16">
                                            <path
                                                d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z">
                                            </path>
                                            <path
                                                d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z">
                                            </path>
                                        </svg>
                                        <span>2 hours ago</span>
                                    </div>
                                    <div class="py-4 text-gray-600 dark:text-gray-400">
                                        Lorem ipsum dor amet
                                    </div>
                                    <div class="flex pt-2 text-sm border-t dark:border-gray-700">
                                        <a href="#"
                                            class="flex items-center px-4 py-2 text-black no-underline dark:text-gray-400 ">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-hand-thumbs-up" viewBox="0 0 16 16">
                                                <path
                                                    d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z" />
                                            </svg>
                                            <span class="ml-2">Like</span>
                                        </a>
                                        <a href="#"
                                            class="flex items-center px-4 py-2 text-black no-underline dark:text-gray-400 ">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
                                                <path
                                                    d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z" />
                                            </svg>
                                            <span class="ml-2">Reply</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="flex flex-wrap ">
                                <div class="px-4 ">
                                    <img class="object-cover w-20 h-20 p-2 rounded-full"
                                        src="https://i.postimg.cc/RhQYkKYk/pexels-italo-melo-2379005.jpg">
                                </div>
                                <div class="flex-grow px-4">
                                    <a href="#" class="text-black ">
                                        <span class="mr-2 text-lg font-medium dark:text-gray-400">Johnsena</span>
                                        <span class="font-normal text-gray-600 dark:text-gray-400">John@gmail.com</span>
                                    </a>
                                    <div class="flex items-center my-1 text-xs text-gray-600 dark:text-gray-400">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                            fill="currentColor" class="w-3 h-3 mr-2" viewBox="0 0 16 16">
                                            <path
                                                d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z">
                                            </path>
                                            <path
                                                d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z">
                                            </path>
                                        </svg>
                                        <span>2 hours ago</span>
                                    </div>
                                    <div class="py-4 text-gray-600 dark:text-gray-400">
                                        Lorem ipsum dor amet
                                    </div>
                                    <div class="flex pt-2 text-sm border-t dark:border-gray-700">
                                        <a href="#"
                                            class="flex items-center px-4 py-2 text-black no-underline dark:text-gray-400 ">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-hand-thumbs-up" viewBox="0 0 16 16">
                                                <path
                                                    d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z" />
                                            </svg>
                                            <span class="ml-2">Like</span>
                                        </a>
                                        <a href="#"
                                            class="flex items-center px-4 py-2 text-black no-underline dark:text-gray-400 ">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
                                                <path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z" />
                                            </svg>
                                            <span class="ml-2">Reply</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-4 bg-white rounded-md shadow md:p-6 dark:bg-primary-100 border-2 border-primary-50">
                            <h2 class=" pb-2 mb-2 text-xl font-bold border-b dark:border-gray-700 dark:text-gray-400">
                            Notice</h2>
                            <div class="flex flex-wrap justify-between mb-4">
                                <div>
                                    <p class="font-bold dark:text-gray-400">
                                        Lorem ipsum dor amet set ispicusas
                                    </p>
                                    <p class="text-sm text-gray-400"> Today 10:01pm </p>
                                </div>
                                <p class="text-sm text-gray-400">1h ago</p>
                            </div>
                            <div class="flex flex-wrap justify-between mb-4">
                                <div>
                                    <p class="font-bold dark:text-gray-400">
                                        Lorem ipsum dor amet set ispicusas
                                    </p>
                                    <p class="text-sm text-gray-400"> Today 7:31pm </p>
                                </div>
                                <p class="text-sm text-gray-400">20m ago</p>
                            </div>
                            <div class="flex flex-wrap justify-between mb-4">
                                <div>
                                    <p class="font-bold dark:text-gray-400">
                                        Lorem ipsum dor amet set ispicusas
                                    </p>
                                    <p class="text-sm text-gray-400"> Today 7:31pm </p>
                                </div>
                                <p class="text-sm text-gray-400">1h ago</p>
                            </div>
                            <div class="flex flex-wrap justify-between mb-4">
                                <div>
                                    <p class="font-bold dark:text-gray-400">
                                        Lorem ipsum dor amet set ispicusas
                                    </p>
                                    <p class="text-sm text-gray-400"> Today 7:31pm </p>
                                </div>
                                <p class="text-sm text-gray-400">2h ago</p>
                            </div>
                            <div class="flex flex-wrap justify-between mb-4">
                                <div>
                                    <p class="font-bold dark:text-gray-400">
                                        Lorem ipsum dor amet set ispicusas
                                    </p>
                                    <p class="text-sm text-gray-400"> Today 7:31am </p>
                                </div>
                                <p class="text-sm text-gray-400">5h ago</p>
                            </div>
                            <div class="flex flex-wrap justify-between mb-4">
                                <div>
                                    <p class="font-bold dark:text-gray-400">
                                        Lorem ipsum dor amet set ispicusas
                                    </p>
                                    <p class="text-sm text-gray-400"> Today 7:2pm </p>
                                </div>
                                <p class="text-sm text-gray-400">4h ago</p>
                            </div>
                        </div>
                    </div>
                </section>

            </div>
        </div>
    </div>

    <%--links js--%>
    <jsp:include page="../../components/includes/js.jsp"></jsp:include>