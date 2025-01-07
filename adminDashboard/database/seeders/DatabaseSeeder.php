<?php

namespace Database\Seeders;

use App\Models\Company;
use App\Models\Invoice;
use App\Models\Material;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\WorkOrder;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        Material::factory()->count(100)->create();
        User::factory()->count(40)->create();
        Company::factory()->count(10)->create();
        WorkOrder::factory()->count(15)->create();
        Invoice::factory()->count(10)->create();
    }
}
