<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class SiswasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	DB::table('siswas')->insert([
    		'nama' => Str::random(10),
    		'alamat' => Str::random(10),
    	]);
    }
}
