<?php

namespace App\Http\Controllers;

use App\Models\Material;
use Illuminate\Http\Request;

class MaterialController extends Controller
{
    public function usedMaterials()
    {

        $usedMaterial = Material::sum('quantity');

        return response()->json(['usedMaterials' => $usedMaterial]);

    }

    public function usedMaterialCost()
    {
        $usedMaterialCost = Material::get();
        $totalCost = $usedMaterialCost->sum(function ($material) {
            return $material->quantity * $material->price;
        });

        return response()->json(['usedMaterialCost' => $totalCost]);
    }
}
