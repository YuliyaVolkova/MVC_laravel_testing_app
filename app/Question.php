<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    protected $guarded = ['id'];
    protected $fillable = ['num', 'text'];
    public $table = "questions";

    public function answers()
    {
        return $this->hasMany(Answer::class, 'question_id', 'id');
    }

    public static function getDataForTest()
    {
        return self::with('answers')->orderBy('num', 'asc')->get();
    }

    public static function getArIds()
    {
        return self::all()->pluck('id')->toArray();
    }
}
