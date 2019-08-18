<?php

namespace App\Services;

use App\Repositories\HoroscopeRepository;
use Yish\Generators\Foundation\Service\Service;

class HoroscopeService extends Service
{
    protected $repository;

    public function __construct(HoroscopeRepository $horoscopeRepository)
    {
        $this->repository = $horoscopeRepository;
    }

    public function updateOrCreate(array $attributes, array $values)
    {
        return $this->repository->updateOrCreate($attributes, $values);
    }
}
