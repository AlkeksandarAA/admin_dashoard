<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class InvoiceRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            "total_price" => "required|numeric",
            "labor_cost" => "required|numeric",
            "issued_by" => 'required',
            "work_order" => 'required',
            "company_id" => 'required',
            'material_used' => 'required|numeric',
            'paid' => 'required'
        ];
    }
}
