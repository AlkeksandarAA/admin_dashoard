@extends('master.layout')

@section('content')

<div class="w-5/6 mt-12 ml-10 bg-white flex justify-between p-3 rounded-lg shadow-2xl">
    <div class="w-5/6">
        <form action="" class="flex w-full">
            <i class="fa-solid fa-magnifying-glass inline mr-2 self-center"></i>
            <input type="text" class="focus:outline-none py-2 w-full" placeholder="Search...">
        </form>
    </div>
    <div class="flex">
        <div class="text-2xl text-stone-700 mr-5">
            <i id="theme" class="fa-regular fa-sun"></i>
        </div>
        <div class="text-2xl text-stone-700 mr-5">
            <i class="fa-solid fa-bell"></i>
        </div>
        <div class="text-2xl">
            <i class="fa-solid fa-circle-user"></i>
        </div>
    </div>
</div>

    <div id="container" class="container flex mt-5 flex-col align-center justify-center">
        <div id="box1" class="w-full h-52 flex justify-around mt-10 ">
            <div class="w-3/5 bg-white p-4 flex justify-around rounded shadow-2xl">
                <div class="flex-1 mr-5">
                <canvas  id="chart1"></canvas>
            </div>
            <div class="vertical-line h-full mr-2 ml-2"></div>
            <div>
                <canvas id="chart2"></canvas>
            </div>
            </div>
            <div id="income" class="w-48 bg-white text-3xl flex flex-col p-3 font-bold rounded shadow-2xl">
            <div>
                <i class="fa-solid fa-wallet mb-3 stroke-2 bg-green-100 p-3 rounded text-blue-600"></i>
            </div>
            <p class="text-lg text-stone-600/50 mb-3 ">Sales</p>
            </div>
            <div id="usedMaterials" class="w-48 bg-white text-3xl flex flex-col p-3 font-bold rounded shadow-2xl">
                <div class="mb-3">
                <i class="fa-solid fa-cubes bg-stone-300  p-3 rounded"></i>
                </div>
                <p class="text-lg text-stone-600/50 mb-3 ">Materials used</p>
            </div>

        </div>
        <div id="box2" class="w-full flex justify-around mt-10  flex-warp">
            <div  class="w-3/5 bg-white p-4 flex justify-around rounded shadow-2xl h-full">
            <canvas id="chart3"></canvas>
            </div>
            <div id="cardsBox" class="h-full flex flex-col justify-between w-2/5">
                <div class="flex h-1/2 justify-between">
            <div id="unpaid" class="w-48 bg-white text-3xl flex flex-col p-3 font-bold rounded shadow-2xl h-full">
                <div class="mb-3 ">
                    <i class="fa-solid fa-money-bill-1-wave p-3 rounded text-indigo-600 bg-teal-200"></i>
                </div>
                <p class="text-lg text-stone-600/50 mb-3 ">Invoices to be paid</p>
            </div>
            <div id="netIncome" class="w-48 text-3xl flex flex-col p-3 font-bold rounded shadow-2xl h-full">
                <div class="mb-3">
                    <i class="fa-solid fa-chart-line p-3 rounded bg-yellow-100"></i>
                </div>
                <p class="text-lg text-stone-600/50 mb-3 ">Total net Income</p>
            </div>
        </div>
        <div class="h-2/5 text-center bg-white font-bold rounded shadow-2xl">
            <p>place holder</p>
        </div>
        </div>
        </div>         
    </div>


@endsection