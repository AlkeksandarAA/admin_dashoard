<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserRequest;
use App\Http\Resources\UserCollection;
use App\Http\Resources\UserResource;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return response()->json(new UserCollection(User::with('postion')->get()));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {

    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UserRequest $request, User $user)
    {
        $validatedData = $request->validated();

        $user->update($validatedData);

        return response()->json(['success' => true, 'message' => 'User updated successfully']);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(int $user)
    {
        $user = User::findOrFail($user);
        $user->delete();

        return redirect()->back()->with('success', 'User deleted successfully');
    }
    public function workers()
    {
        $workers = User::where('role_id', 1)->count();
        $manegers = User::where('role_id', 2)->count();
        $reps = User::where('role_id', 3)->count();
        return response()->json(['total_workers' => $workers, 'manegers' => $manegers, 'representatives' => $reps]);
    }
}
