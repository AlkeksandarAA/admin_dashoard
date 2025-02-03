<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use App\Models\Invoice;

class Company extends Model
{
    /** @use HasFactory<\Database\Factories\CompanyFactory> */
    use HasFactory;
    public function representative()
    {
        return $this->belongsTo(User::class, 'rep_id');
    }
    public function invoices()
    {
        return $this->hasMany(Invoice::class, 'company_id', 'id');
    }
}

