<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class InvoiceResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'Total Price' => $this->total_price,
            'Issued by' => new UserResource($this->whenLoaded("issuedBy")),
            'Labor cost' => $this->labor_cost,
            'Work order Id' => new WorkOrderResource($this->whenLoaded('workOrder')),
            'Company' => new CompanyResource($this->whenLoaded('company')),
            'Paid' => (bool) $this->paid,
        ];
    }
}
