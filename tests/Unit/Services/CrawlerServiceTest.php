<?php

namespace Tests\Unit\Services;

use App\Services\CrawlerService;
use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class CrawlerServiceTest extends TestCase
{
    use RefreshDatabase;

    /**
     * @test
     * @group CrawlerService
     */
    public function it_should_get_the_same_day_horoscope_content_by_getAstroClick108HoroscopeContent()
    {
        $service = $this->app->make(CrawlerService::class);

        $horoscopes = $service->getAstroClick108HoroscopeContent();

        $this->assertCount(12, $horoscopes);
        foreach ($horoscopes as $horoscope) {
            $this->assertArrayHasKey('entirety', $horoscope);
            $this->assertArrayHasKey('love', $horoscope);
            $this->assertArrayHasKey('career', $horoscope);
            $this->assertArrayHasKey('wealth', $horoscope);
        }
    }
}
