<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
// use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class WorkOrder extends Model
{
    /** @use HasFactory<\Database\Factories\CompanyFactory> */
    use HasFactory;

    public function material()
    {
        return $this->belongsTo(Material::class, 'mats_id');
    }
    public function ordered()
    {
        return $this->belongsTo(User::class, "order_by");
    }
    public function workers()
    {
        return $this->belongsTo(User::class, 'worker_id');
    }
}
