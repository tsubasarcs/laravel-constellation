<?php

namespace App\Services;

use App\Repositories\UserRepository;
use Illuminate\Support\Str;
use Yish\Generators\Foundation\Service\Service;

class UserService extends Service
{
    protected $repository;

    public function __construct(UserRepository $userRepository)
    {
        $this->repository = $userRepository;
    }

    /**
     * @param $google_user
     * @return \Illuminate\Database\Eloquent\Model|mixed
     */
    public function getByGoogleLogin($google_user)
    {
        $user = $this->repository->firstBy('email', $google_user->email);

        if (empty($user)) {
            $user = $this->repository->create([
                'name' => $google_user->name,
                'google_id' => $google_user->id,
                'email' => $google_user->email,
                'password' => bcrypt(Str::random(15))
            ]);
        } else {
            $this->repository->updateBy('google_id', $google_user->id);
        }

        return $user;
    }
}
