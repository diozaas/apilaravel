<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class PenggunaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();
        $limit = 20;

        for ($i=0; $i < $limit; $i++) { 
        	DB::table('users')->insert([
        		'name' => $faker->name,
        		'email' => $faker->unique()->email,
        		'password' => Hash::make('123456'),
        		'remember_token' => $faker->regexify('[A-Za-z0-9]{20}'),
                'api_token' => str_random(100)
        	]);
        }
    }
}
