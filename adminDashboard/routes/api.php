<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('all/companies', [App\Http\Controllers\CompanyController::class, 'index'])->name('all.companies');
Route::get('company/{company}', [App\Http\Controllers\CompanyController::class, 'show'])->name('show.company');

Route::get('workers', [App\Http\Controllers\UserController::class, 'workers'])->name('all.workers');

Route::get('invoice/status', [App\Http\Controllers\InvoiceController::class, 'status'])->name('invoice.status');

Route::get('total/income', [App\Http\Controllers\InvoiceController::class, 'income'])->name('total.income');

Route::get('used/materials', [App\Http\Controllers\Materialcontroller::class, 'usedMaterials'])->name('usedMaterials');

Route::get('material/cost', [App\Http\Controllers\Materialcontroller::class, 'usedMaterialCost'])->name('MaterialCost');

route::get('unpaid/price', [App\Http\Controllers\InvoiceController::class, 'unPaid'])->name('unpaid.price');