<?php

namespace App\Http\Controllers;

use App\Http\Resources\InvoiceResource;
use App\Http\Resources\WorkOrderResource;
use App\Models\Invoice;
use App\Models\WorkOrder;
use Illuminate\Http\Request;

class InvoiceController extends Controller
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
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(int $invoiceId)
    {
        $invoice = Invoice::with(['workOrder', 'issuedBy', 'company'])->findOrFail($invoiceId);


        return response()->json(['Invoice' => new InvoiceResource($invoice)]);

    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Invoice $invoice)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Invoice $invoice)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Invoice $invoice)
    {
        //
    }

    public function status()
    {
        $paid = Invoice::where('paid', true)->get()->toArray();

        $unpaid = Invoice::where('paid', false)->get()->toArray();

        return response()->json(['paid' => $paid, 'unpaid' => $unpaid]);
    }

    public function income()
    {
        $totalIncome = 0;
        $paid = Invoice::where('paid', true)->get();

        foreach ($paid as $invoice) {
            $totalIncome += $invoice->total_price;
        }

        return response()->json(['totalPrice' => $totalIncome]);
    }
    public function unPaid()
    {

        $unpaidInvoice = Invoice::where('paid', false)->sum('total_price');

        return response()->json(['totalUnpaid' => $unpaidInvoice]);

    }

}
