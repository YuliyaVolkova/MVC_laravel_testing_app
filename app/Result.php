<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Result extends Model
{
    protected $guarded = ['id'];
    protected $fillable = ['start_time','finish_time','user_answers'];
    public $table = "results";

    public function getDurationAttribute()
    {
        $tStart = Carbon::parse($this->start_time);
        $tEnd = Carbon::parse($this->finish_time);
        return $tStart->diffInMinutes($tEnd);
    }

    public function getWrongAnswersAttribute()
    {
        $a = explode(';', $this->user_answers);
        $arRightAnswers = Answer::getArRightAnswers();
        $diff = array_diff($a, $arRightAnswers);
        if (empty($diff)) {
            return null;
        }
        return Answer::getArWrongAnsweredQuestions($diff);
    }
}
