<?php

namespace App\Http\Controllers;

use App\Result;
use App\Question;

class ResultController extends Controller
{
    public function index()
    {
        $data = ['results' => Result::all(),
                 'totalQ' => Question::all()->count()];
        return view('result', $data);
    }
}
