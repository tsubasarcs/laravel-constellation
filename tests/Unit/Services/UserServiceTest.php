<?php

namespace Tests\Unit\Services;

use App\Repositories\UserRepository;
use App\Services\UserService;
use App\User;
use Illuminate\Support\Str;
use Mockery;
use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class UserServiceTest extends TestCase
{
    use RefreshDatabase;

    /**
     * @test
     * @group UserService
     */
    public function it_should_create_a_user_when_empty_in_database_by_getByGoogleLogin()
    {
        $google_user = (object)[
            'id' => Str::random(21),
            'name' => 'sean',
            'email' => 'tsubasarcs@gmail.com'
        ];
        $fake_user = factory(User::class)->create(['google_id' => $google_user->id]);

        $mock_user_repository = Mockery::mock(UserRepository::class);
        $this->app->instance(UserRepository::class, $mock_user_repository);
        $mock_user_repository->shouldReceive('firstBy')->once()->andReturn([]);
        $mock_user_repository->shouldReceive('create')->once()->andReturn($fake_user);
        $mock_user_repository->shouldNotReceive('updateBy');

        $user_service = $this->app->make(UserService::class);
        $user = $user_service->getByGoogleLogin($google_user);

        $this->assertEquals($user, $fake_user);
    }

    /**
     * @test
     * @group UserService
     */
    public function it_should_create_a_user_when_exist_in_database_by_getByGoogleLogin()
    {
        $google_user = (object)[
            'id' => Str::random(21),
            'name' => 'sean',
            'email' => 'tsubasarcs@gmail.com'
        ];

        $fake_user = factory(User::class)->create([
            'email' => 'tsubasarcs@gmail.com',
            'google_id' => $google_user->id
        ]);

        $mock_user_repository = Mockery::mock(UserRepository::class);
        $this->app->instance(UserRepository::class, $mock_user_repository);
        $mock_user_repository->shouldReceive('firstBy')->once()->andReturn($fake_user);
        $mock_user_repository->shouldNotReceive('create');
        $mock_user_repository->shouldReceive('updateBy')->once();

        $user_service = $this->app->make(UserService::class);
        $user = $user_service->getByGoogleLogin($google_user);

        $this->assertEquals($user, $fake_user);
    }
}
