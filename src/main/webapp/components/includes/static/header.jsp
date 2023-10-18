<header>
    <nav class="bg-white border-gray-200 px-4 lg:px-6 py-3 bg-primary-100 dark:bg-primary-100">
        <div class="flex flex-wrap justify-between items-center mx-auto max-w-screen-2xl">
            <a href="https://flowbite.com" class="flex items-center">
                <img src="https://flowbite.com/docs/images/logo.svg" class="mr-3 h-6 sm:h-9" alt="Flowbite Logo" />
                <span class="self-center text-xl font-semibold whitespace-nowrap dark:text-white">GatherGrid</span>
            </a>
            <div class="flex items-center lg:order-1">
                <button data-collapse-toggle="mobile-menu-2" type="button"
                        class="inline-flex items-center p-2 ml-1 text-sm text-gray-500 rounded-lg lg:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
                        aria-controls="mobile-menu-2" aria-expanded="false">
                    <span class="sr-only">Open main menu</span>
                    <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
                              clip-rule="evenodd"></path>
                    </svg>
                    <svg class="hidden w-6 h-6" fill="currentColor" viewBox="0 0 20 20"
                         xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                              clip-rule="evenodd"></path>
                    </svg>
                </button>
            </div>
            <div class="hidden justify-between items-center w-full lg:flex lg:w-auto lg:order-1" id="mobile-menu-2">
                <ul
                        class="flex items-center flex-col mt-4 font-medium lg:flex-row lg:space-x-8 lg:mt-0 font-poppins">
                    <li>
                        <a href="../../../index.jsp"
                           class="block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 lg:hover:bg-transparent lg:border-0 lg:hover:text-primary-700 lg:p-0 dark:text-gray-400 dark:hover:text-second-50 dark:border-gray-700">Home</a>
                    </li>
                    <li>
                        <a href="../../../pages/events.jsp"
                           class="block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 lg:hover:bg-transparent lg:border-0 lg:hover:text-primary-700 lg:p-0 dark:text-gray-400 dark:hover:text-second-50 dark:border-gray-700">Events</a>
                    </li>
                    <li>
                        <a href="#"
                           class="block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 lg:hover:bg-transparent lg:border-0 lg:hover:text-primary-700 lg:p-0 dark:text-gray-400 dark:hover:text-second-50 dark:border-gray-700">Contact</a>
                    </li>
                    <li>
                        <a href="#" id="defaultModalButton" data-modal-toggle="modal-sign-in"
                           class="flex items-center hover:bg-primary-100-800 hover:focus:ring-2 hover:focus:ring-second-100 rounded-lg text-sm px-4 lg:px-5 py-2 lg:py-2.5 dark:bg-second-100 dark:text-white focus:outline-none">Get
                            started <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                         viewBox="0 0 24 24">
                                <path fill="currentColor"
                                      d="M9.29 15.88L13.17 12L9.29 8.12a.996.996 0 1 1 1.41-1.41l4.59 4.59c.39.39.39 1.02 0 1.41L10.7 17.3a.996.996 0 0 1-1.41 0c-.38-.39-.39-1.03 0-1.42z" />
                            </svg></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<jsp:include page="../../modals/Login.jsp"></jsp:include>