<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UsersTableSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            'name' => 'Jinyang', 
            'email' => 'tuonglinh0218@gmail.com',
            'password' => bcrypt('123456'),
            'remember_token' => '',
            'avatar' => 'avatar_jinyang.jpg',
         ];
         DB::table('users')->insert($data);
    }
}
