@extends('master.layout')

@section('content')

    <div class="w-1/2 mt-12 ml-10 bg-white flex p-3 rounded-lg shadow-2xl">
        <form action="">
            <i class="fa-solid fa-magnifying-glass inline"></i>
        <input type="text" class="w-3/5  focus:outline-none py-2" placeholder="Search...">
        </form>
    </div>
    <div class="container flex mt-5 justify-around">
<div class= "w-80 h-64">
    <canvas id="chart1"></canvas>
</div>
<div class= "w-80 h-64">
    <canvas id="chart1"></canvas>
</div>
<div class= "w-80 h-64">
    <canvas id="chart1"></canvas>
</div>
</div>
@endsection