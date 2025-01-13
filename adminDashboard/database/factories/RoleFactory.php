<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Role>
 */
class RoleFactory extends Factory
{

    private array $roles = [
        1 => 'Worker',
        2 => 'Menager',
        3 => 'Representative'
    ];
    private static int $counter = 1;
    public function definition(): array
    {
        $id = self::$counter++;
        return [
            'id' => $id,
            'position' => $this->roles[$id],
        ];
    }
}
