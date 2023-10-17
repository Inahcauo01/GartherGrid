<%--Head--%>
<jsp:include page="../../components/includes/static/head.jsp"></jsp:include>

<%--Content body--%>
<div class="bg-gray-100 xl:h-screen dark:bg-primary-100">
  <div class="body-content" x-data="{ open: true }">
    <!-- sidebar -->
    <%@ include file="components/includes/sidebar.jsp"%>

    <!-- main with navbar -->
    <div class="mx-auto transition-all content-wrapper" id="dash"
         x-bind:class="! open ? 'lg:ml-0' : 'lg:ml-[280px]'">
      <!-- navbar -->
      <%@ include file="components/includes/navbar.jsp"%>

      <!-- statistics -->
      <jsp:include page="components/statistics.jsp"></jsp:include>

      <!-- table events -->
      <section class="px-4 py-6" x-data="{ open: false }">
        <div class="grid grid-cols-1">
          <div
                  class="p-4 bg-white rounded-md shadow md:p-6 dark:bg-primary-100 border-2 border-primary-50">
            <div class="flex justify-between border-b pb-4 dark:border-gray-700 dark:text-gray-400">
              <h2 class="text-xl font-bold">Events</h2>
              <%--btn add--%>
              <button
                      class="px-4 py-2 text-white rounded-md select-none bg-second-100"
                      @click="open = true">Add</button>
              <%--modal--%>
              <div class="absolute top-0 left-0 flex items-center justify-center w-full h-full"
                   style="background-color: rgba(0,0,0,.5);" x-show="open">
                <div
                        class="relative mx-4 overflow-hidden text-left transition-all transform bg-white rounded-lg shadow-xl dark:bg-gray-900 sm:my-8 sm:max-w-lg sm:w-full">
                  <div class="px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                    <div class="sm:flex sm:items-start">

                    </div>
                  </div>
                  <div class="px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                    <button type="button"
                            class="inline-flex justify-center w-full px-4 py-2 text-base font-medium text-blue-500 border border-transparent border-blue-600 rounded-md shadow-sm bg-blue-50 hover:text-gray-100 hover:bg-blue-700 focus:outline-none dark:hover:bg-blue-500 dark:text-gray-100 dark:bg-blue-400 focus:ring-2 focus:ring-offset-2 dark:focus:ring-0 dark:focus:ring-offset-0 focus:ring-blue-500 sm:ml-3 sm:w-auto sm:text-sm">Deactivate</button>
                    <button @click="open = false"
                            class="inline-flex justify-center w-full px-4 py-2 mt-3 text-base font-medium text-gray-700 bg-white border border-gray-300 rounded-md shadow-sm hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-offset-2 dark:bg-gray-700 dark:hover:bg-gray-600 dark:border-gray-700 dark:text-gray-100 focus:ring-blue-500 sm:mt-0 sm:ml-3 sm:w-auto sm:text-sm dark:focus:ring-0 dark:focus:ring-offset-0">Cancel</button>
                  </div>
                </div>
              </div>
            </div>
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
                    <span class="inline-block px-2 py-1 text-blue-700 bg-blue-100 rounded-full dark:bg-gray-800 dark:text-gray-400">Approved</span>
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
                        <path
                                d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z" />
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
        </div>
      </section>
</div>
</div>


<%--links js--%>
<jsp:include page="../../components/includes/js.jsp"></jsp:include>