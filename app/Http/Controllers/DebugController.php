<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Artisan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class DebugController extends Controller
{
    public function dumpConfig()
    {
        return config()->all();
    }

    public function dumpSchema()
    {
        Artisan::call('schema:dump');
        return File::get(database_path('schema/pgsql-schema.sql'));
  }
}
