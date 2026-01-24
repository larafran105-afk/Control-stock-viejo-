<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ActivityLog;
class AuditoriaController extends Controller
{
    public function index() {
        // Traemos todos los logs ordenados por fecha de creación
        session(['audit_last_seen' => now()]);

        $logs = ActivityLog::orderBy('created_at', 'desc')->get();
        return view('auditoria.index', compact('logs'));
    }
}
