<?php

namespace App\Http\Controllers;

use App\Http\Resources\CompaniesCollection;
use App\Http\Resources\CompanyResource;
use App\Models\Company;
use Illuminate\Http\Request;

class CompanyController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $companies = Company::with('representative', 'invoices')->get();

        $mappedCompanies = $companies->map(function ($company) {
            return [
                'name' => $company->name,
                'address' => $company->address,
                'representative' => $company->representative->name,
                'invoices' => $company->invoices->pluck('id')->toArray(),
            ];
        });

        return response()->json(new CompaniesCollection($mappedCompanies));
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
    public function show(Company $company)
    {
        $company->load('representative', 'invoices');

        return response()->json(new CompanyResource($company));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Company $company)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Company $company)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Company $company)
    {
        //
    }

    public function getOptions()
    {

        $company = Company::all();

        $mappedOption = $company->map(function ($company) {
            return [
                'id' => $company->id,
                'name' => $company->name,
            ];
        });
        return response()->json($mappedOption);

    }
}
