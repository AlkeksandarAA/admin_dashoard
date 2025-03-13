<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class WorkOrderResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'Materials' => new MaterialResource($this->whenLoaded('materials')),
            'Order by' => new UserResource($this->whenLoaded('ordered')),
            'Assinged to' => new UserResource($this->whenLoaded('workers')),
        ];
    }
}
