<?php

namespace Tests\Unit\Services;

use App\Horoscope;
use App\Repositories\HoroscopeRepository;
use App\Services\HoroscopeService;
use Illuminate\Support\Carbon;
use Mockery;
use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class HoroscopeServiceTest extends TestCase
{
    use RefreshDatabase;

    /**
     * @test
     * @group HoroscopeService
     */
    public function it_should_create_a_record_by_UpdateOrCreate()
    {
        $fake_horoscope = factory(Horoscope::class)->make()->toArray();

        $mock_horoscope_repository = Mockery::mock(HoroscopeRepository::class);
        $this->app->instance(HoroscopeRepository::class, $mock_horoscope_repository);
        $mock_horoscope_repository->shouldReceive('updateOrCreate')->once();

        $service = $this->app->make(HoroscopeService::class);
        $service->updateOrCreate(
            [
                'name' => $fake_horoscope['name'],
                'day_at' => Carbon::now()->toDateString()
            ],
            $fake_horoscope
        );
    }

    /**
     * @test
     * @group HoroscopeService
     */
    public function it_should_update_a_record_by_UpdateOrCreate()
    {
        $fake_horoscope = factory(Horoscope::class)->create();

        $mock_horoscope_repository = Mockery::mock(HoroscopeRepository::class);
        $this->app->instance(HoroscopeRepository::class, $mock_horoscope_repository);
        $mock_horoscope_repository->shouldReceive('updateOrCreate')->once();

        $service = $this->app->make(HoroscopeService::class);
        $service->updateOrCreate(
            [
                'name' => $fake_horoscope->name,
                'day_at' => Carbon::now()->toDateString()
            ],
            [
                'love' => 'I Love you so much!'
            ]
        );
    }
}
