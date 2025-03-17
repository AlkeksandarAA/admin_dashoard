<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Log;
use App\Http\Requests\InvoiceRequest;
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
    public function store(InvoiceRequest $request)
    {

        Log::info("Store method was called!");

        $validatedData = $request->validated();

        Invoice::create($validatedData);

        Log::info("Validated data: ", $validatedData);

        return response()->json("Invoice created");
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
    public function update(InvoiceRequest $request, int $id)
    {
        $validateData = $request->validated();


        $invoice = Invoice::findOrFail($id);

        $invoice->update($validateData);

        return response()->json("invoice updated");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(int $id)
    {
        $invoice = Invoice::findOrFail($id);

        $invoice->delete();

        return response()->json($invoice);
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
