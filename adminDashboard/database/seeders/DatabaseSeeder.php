<?php

namespace Database\Seeders;

use App\Models\Company;
use App\Models\Invoice;
use App\Models\Material;
use App\Models\User;
use App\Models\Role;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\WorkOrder;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{

    private function reps()
    {
        $reps = User::where('role_id', '=', 3)->count();

        return $reps;
    }
    public function run(): void
    {


        Role::factory()->count(3)->create();
        Material::factory()->count(100)->create();
        User::factory()->count(40)->create();
        Company::factory()->count($this->reps())->create();
        WorkOrder::factory()->count(100)->create();
        Invoice::factory()->count(10)->create();
    }
}
