<?php

use App\Http\Controllers\DebugController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get(
    '/_debug/config/dump',
    [DebugController::class, 'dumpConfig']
);


Route::get(
    '/_debug/schema/dump',
    [DebugController::class, 'dumpSchema']
);

