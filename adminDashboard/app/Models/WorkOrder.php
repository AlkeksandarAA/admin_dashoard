<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
// use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class WorkOrder extends Model
{
    /** @use HasFactory<\Database\Factories\CompanyFactory> */
    use HasFactory;

    public function materials()
    {
        return $this->belongsToMany(Material::class);
    }
    public function Ordered()
    {
        return $this->belongsTo(User::class, "order_by");
    }
    public function workers()
    {
        return $this->belongsTo(User::class, 'worker_id');
    }
}
