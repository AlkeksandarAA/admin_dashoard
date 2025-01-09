@extends('master.layout')

@section('content')

<div class="w-1/2 mt-12 ml-10 bg-white flex p-3 rounded-lg shadow-2xl">
    <form action="" class="flex w-full">
        <i class="fa-solid fa-magnifying-glass inline mr-2 self-center"></i>
        <input type="text" class="focus:outline-none py-2 w-full" placeholder="Search...">
    </form>

</div>

    <div class="container flex mt-5 flex-col align-center justify-center">
        <div class="w-full h-52 flex justify-around mt-10 ">
            <div class="w-3/5 bg-white p-2 flex justify-around">
                <div class="flex-1 mr-5">
                <canvas  id="chart1"></canvas>
            </div>
            <div class="vertical-line h-full mr-2 ml-2"></div>
            <div>
                <canvas id="chart2"></canvas>
            </div>
            </div>
            <div id="income" class="w-48 bg-white text-3xl flex flex-col p-3 font-bold ">
                <div>
                <i class="fa-solid fa-wallet mb-3 stroke-2 bg-green-100 p-3 rounded text-blue-600"></i>
            </div>
            <p class="text-lg text-stone-600/50 mb-3 ">Sales</p>
            </div>
            <div class="w-48 bg-red-500"></div>

        </div>
    </div>


@endsection