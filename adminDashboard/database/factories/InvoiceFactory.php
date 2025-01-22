<?php

namespace Database\Factories;

use App\Models\Company;
use App\Models\Material;
use App\Models\WorkOrder;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Invoice>
 */
class InvoiceFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'work_order' => $this->faker->randomElement(WorkOrder::all()->pluck('id')->toArray()),
            'labor_cost' => $this->faker->numberBetween(300, 1000),
            'issued_by' => $this->faker->randomElement(User::all()->pluck('id')->toArray()),
            'total_price' => $this->faker->numberBetween(1000.00, 20000.00),
            'company_id' => $this->faker->randomElement(Company::all()->pluck('id')->toArray()),
            'paid' => $this->faker->boolean(),
            'material_used' => $this->faker->randomElement(Material::all()->pluck('id')->toArray()),
        ];
    }
}
