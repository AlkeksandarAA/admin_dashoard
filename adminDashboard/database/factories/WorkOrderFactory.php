<?php

namespace Database\Factories;
use App\Models\User;
use App\Models\Material;



use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class WorkOrderFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'mats_id' => $this->faker->randomElement(Material::all()->pluck('id')->toArray()),
            'order_by' => $this->faker->randomElement(User::where('role_id', 3)->pluck('id')->toArray()),
            'worker_id' => $this->faker->randomElement(User::where('role_id', 1)->pluck('id')->toArray()),
        ];
    }
}
