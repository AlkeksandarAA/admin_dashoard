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

Route::get('active/workorders', [App\Http\Controllers\WorkOrderController::class, 'activeWO'])->name('active.workorders');

Route::get('all/users', [App\Http\Controllers\UserController::class, 'index'])->name('all.users');

Route::patch('update/user', [App\Http\Controllers\UserController::class, 'update'])->name('update.user');

Route::get('company/get/option', [App\Http\Controllers\CompanyController::class, 'getOptions'])->name('company.options');

Route::get('invoice/{id}', [App\Http\Controllers\InvoiceController::class, 'show'])->name('show.invoice');

Route::delete('delete/{user}', [App\Http\Controllers\InvoiceController::class, 'destroy'])->name('destroy.user');

Route::post('create/user', [App\Http\Controllers\UserController::class, 'store'])->name('store.user');

Route::get('show/{id}', [App\Http\Controllers\UserController::class, 'show'])->name('show.user');

Route::post("create/invoice", [App\Http\Controllers\InvoiceController::class, "store"])->name('create.invoice');

Route::patch("update/invoice/{id}", [App\Http\Controllers\InvoiceController::class, "update"])->name('update.invoice');

route::delete('delete/invoice/{id}', [App\Http\Controllers\InvoiceController::class, 'destroy'])->name('delete.invoice');


// Route::put('updated/user', [App\Http\Controllers\UserController::class]);