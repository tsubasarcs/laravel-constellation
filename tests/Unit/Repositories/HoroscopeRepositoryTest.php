<?php

namespace Tests\Unit\Repositories;

use App\Horoscope;
use App\Repositories\HoroscopeRepository;
use Illuminate\Support\Carbon;
use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class HoroscopeRepositoryTest extends TestCase
{
    use RefreshDatabase;

    /**
     * @test
     * @group HoroscopeRepository
     */
    public function it_should_create_a_record_by_UpdateOrCreate()
    {
        $fake_horoscope = factory(Horoscope::class)->make()->toArray();

        $repository = $this->app->make(HoroscopeRepository::class);
        $repository->updateOrCreate(
            [
                'name' => $fake_horoscope['name'],
                'day_at' => Carbon::now()->toDateString()
            ],
            $fake_horoscope
        );

        $this->assertDatabaseHas('horoscopes', $fake_horoscope);
    }

    /**
     * @test
     * @group HoroscopeRepository
     */
    public function it_should_update_a_record_by_UpdateOrCreate()
    {
        $fake_horoscope = factory(Horoscope::class)->create();

        $repository = $this->app->make(HoroscopeRepository::class);
        $repository->updateOrCreate(
            [
                'name' => $fake_horoscope->name,
                'day_at' => Carbon::now()->toDateString()
            ],
            [
                'love' => 'I Love you so much!'
            ]
        );

        $this->assertDatabaseHas('horoscopes', [
            'name' => $fake_horoscope->name,
            'love' => 'I Love you so much!',
            'day_at' => Carbon::now()->toDateString()
        ]);
    }
}
