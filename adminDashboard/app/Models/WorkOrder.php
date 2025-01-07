<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class WorkOrder extends Model
{
    /** @use HasFactory<\Database\Factories\CompanyFactory> */
    use HasFactory, SoftDeletes;

    public function materials()
    {
        return $this->hasMany(Material::class);
    }
    public function Ordered()
    {
        return $this->hasOne(User::class, "order_by");
    }
    public function workers()
    {
        return $this->hasMany(User::class, 'worker_id');
    }
}
