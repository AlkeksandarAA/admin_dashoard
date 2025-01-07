<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Company>
 */
class CompanyFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $userIds = User::where('role_id', '=', 3)->pluck('id')->toArray();

        dd($userIds);

        return [
            'name' => $this->faker->company(),
            'address' => $this->faker->address(),
            'rep_id' => $this->faker->randomElement(),
        ];
    }
}
