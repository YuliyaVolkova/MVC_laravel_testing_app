<?php

namespace App\Http\Controllers;

use App\Question;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Answer;
use App\Result;

class TestController extends Controller
{
    public function create()
    {
        $data['questions'] = Question::getDataForTest();
        return view('test', $data);
    }

    public function store(Request $request)
    {
        $result = Validator::make($request->all(), [
            'start_time' => 'required',
            'finish_time' => 'required'
        ])->validate();

        $answers = $request->answered;

        asort($answers);

        $answered = Answer::getArQuestionIds($answers);
        $total = Question::getArIds();
        $diff = array_diff($total, $answered);
        if (! empty($diff)) {
            return ['errors' => 'Ответьте на все вопросы'];
        }
        $result['user_answers'] = implode(';', $answers);

        Result::create($result);

        return ['success' => 'Ваш результат записан, спасибо'];
    }
}
