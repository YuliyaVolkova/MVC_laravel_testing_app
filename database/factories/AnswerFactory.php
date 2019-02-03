<?php

use Faker\Generator as Faker;

$factory->define(App\Answer::class, function (Faker $faker) {
    return [
        'text' => $faker->text,
        'question_id' => $faker->numberBetween($min = 1, $max = 6),
        'right_or_not' => $faker->boolean,
        'created_at' =>$faker->dateTime($min = '2018-07-01'),
        'updated_at' =>$faker->dateTime($min = '2018-07-01')
    ];
});
