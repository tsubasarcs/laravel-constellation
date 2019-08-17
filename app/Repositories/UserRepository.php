<?php

namespace App\Repositories;

use App\User;
use Yish\Generators\Foundation\Repository\Repository;

class UserRepository extends Repository
{
    protected $model;

    public function __construct(User $user)
    {
        $this->model = $user;
    }
}
