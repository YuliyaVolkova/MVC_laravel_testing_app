<?php

use Faker\Generator as Faker;

$factory->define(App\Question::class, function (Faker $faker) {
    return [
        'num' => $faker->unique()->numberBetween($min = 1, $max = 6),
        'text' => $faker->text,
        'created_at' =>$faker->dateTime($min = '2018-07-01'),
        'updated_at' =>$faker->dateTime($min = '2018-07-01')
    ];
});
