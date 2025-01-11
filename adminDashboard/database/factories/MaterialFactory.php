<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Material>
 */
class MaterialFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'material' => $this->faker->word(),
            'price' => $this->faker->numberBetween(1.00, 150.00),
            'quantity' => $this->faker->numberBetween(1, 60),
        ];
    }
}
