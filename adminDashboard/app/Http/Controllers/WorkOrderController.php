<?php

namespace App\Http\Controllers;

use App\Models\WorkOrder;
use App\Http\Requests\StoreWorkOrderRequest;
use App\Http\Requests\UpdateWorkOrderRequest;
use Illuminate\Support\Facades\DB;

class WorkOrderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreWorkOrderRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(WorkOrder $workOrder)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(WorkOrder $workOrder)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateWorkOrderRequest $request, WorkOrder $workOrder)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(WorkOrder $workOrder)
    {
        //
    }
    public function activeWO()
    {
        $workOrders = DB::table('work_orders')
            ->select(DB::raw('DATE_FORMAT(ordered_date, "%Y-%m") as month_year'), DB::raw('count(*) as total'))
            ->groupBy(DB::raw('DATE_FORMAT(ordered_date, "%Y-%m")'))
            // ->orderBy(DB::raw('DATE_FORMAT(ordered_date, "%Y-%m")'))
            ->get();

        $months = $workOrders->pluck('month_year');
        $totals = $workOrders->pluck('total');

        return response()->json([
            'months' => $months,
            'totals' => $totals
        ]);
    }
}
