<?php

use Faker\Generator as Faker;

$factory->define(App\Horoscope::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'entirety' => $faker->realText(),
        'love' => $faker->realText(),
        'career' => $faker->realText(),
        'wealth' => $faker->realText(),
        'day_at' => \Illuminate\Support\Carbon::now()->toDateString()
    ];
});
