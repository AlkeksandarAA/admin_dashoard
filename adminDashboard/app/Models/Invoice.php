<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
// use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    /** @use HasFactory<\Database\Factories\InvoiceFactory> */
    use HasFactory;

    public function workOrder()
    {
        return $this->belongsTo(WorkOrder::class, 'work_order');
    }

    public function issuedBy()
    {
        return $this->belongsTo(User::class, 'id');
    }

    public function company()
    {
        return $this->belongsTo(Company::class);
    }
}
