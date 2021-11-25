<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

use App\Models\User;

class UserSeeder extends Seeder {

    public function run() {
        User::insert([
            'name' => 'Test User',
            'email' => 'test@example.com',
            'password' => \Hash::make('password123'),
        ]);
    }

}
