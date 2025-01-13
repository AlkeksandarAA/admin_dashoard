<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <script src="https://kit.fontawesome.com/52dd7732e0.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</head>
<body class="bg-stone-200">

    <div class="grid grid-cols-[auto,1fr] h-screen">
        <div class="w-52 bg-white p-4">
            <div class="flex items-center justify-center cursor-pointer " id="home">
                <img src="{{asset('media_1eeac4f414fef7a2538f45d131ecae95e859923d9.png')}}" alt="random img" class="rounded-full block h-12" >
        </div>
            <ul class="list-none p-2">
                <li pointer id="employeeList" tabindex="0" class="cursor-pointer py-2 px-5 rounded-lg focus:outline-none focus:ring focus:ring-blue-100 hover:bg-blue-100 transition duration-200">
                    Employee list
                </li>
                <li tabindex="0" class="py-2 px-5 rounded-lg focus:outline-none focus:ring focus:ring-blue-100 hover:bg-blue-100 transition duration-200">
                    Hello World
                </li>
                <li tabindex="0" class="py-2 px-5 rounded-lg focus:outline-none focus:ring focus:ring-blue-100 hover:bg-blue-100 transition duration-200">
                    Hello World
                </li>
                <li tabindex="0" class="py-2 px-5 rounded-lg focus:outline-none focus:ring focus:ring-blue-100 hover:bg-blue-100 transition duration-200">
                    Hello World
                </li>     <li tabindex="0" class="py-2 px-5 rounded-lg focus:outline-none focus:ring focus:ring-blue-100 hover:bg-blue-100 transition duration-200">
                    Hello World
                </li>     <li tabindex="0" class="py-2 px-5 rounded-lg focus:outline-none focus:ring focus:ring-blue-100 hover:bg-blue-100 transition duration-200">
                    Hello World
                </li>     <li tabindex="0" class="py-2 px-5 rounded-lg focus:outline-none focus:ring focus:ring-blue-100 hover:bg-blue-100 transition duration-200">
                    Hello World
                </li>     <li tabindex="0" class="py-2 px-5 rounded-lg focus:outline-none focus:ring focus:ring-blue-100 hover:bg-blue-100 transition duration-200">
                    Hello World
                </li>
            </ul>
        </div>

        <div class="p-6">
            @yield('content')
        </div>
    </div>
  
</body>
</html>