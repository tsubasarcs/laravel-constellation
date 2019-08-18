<?php

namespace App\Repositories;

use App\Horoscope;
use Yish\Generators\Foundation\Repository\Repository;

class HoroscopeRepository extends Repository
{
    protected $model;

    public function __construct(Horoscope $horoscope)
    {
        $this->model = $horoscope;
    }

    public function updateOrCreate(array $attributes, array $values = [])
    {
        return $this->model::updateOrCreate($attributes, $values);
    }
}
