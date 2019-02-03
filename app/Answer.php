<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    protected $guarded = ['id'];
    protected $fillable = ['text', 'question_id', 'right_or_not'];
    public $table = "answers";

    public function question()
    {
        return $this->belongsTo(Question::class, 'question_id', 'id');
    }

    public static function getArQuestionIds($ids)
    {
        return self::find($ids)->pluck('question_id')->toArray();
    }

    public static function getArRightAnswers()
    {
        return self::where('right_or_not', 1)->pluck('id')->toArray();
    }

    public static function getArWrongAnsweredQuestions($arEr)
    {
        $ar = self::find($arEr)->pluck('question_id')->toArray();
        return array_unique($ar);
    }
}
