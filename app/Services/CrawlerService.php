<?php

namespace App\Services;

use GuzzleHttp\Client;
use Illuminate\Support\Carbon;
use Symfony\Component\DomCrawler\Crawler;

class CrawlerService
{
    const ASTRO_CLICK108 = 'http://astro.click108.com.tw';

    const FORTUNES = ['entirety', 'love', 'career', 'wealth'];

    /**
     * @var Client
     */
    private $client;

    private $horoscopes = [];

    public function __construct(Client $client)
    {
        $this->client = $client;
    }

    /**
     * @return array
     */
    public function getAstroClick108HoroscopeContent()
    {
        $date = Carbon::now()->toDateString();

        foreach (config('constellation') as $key => $constellation) {
            $uri = self::ASTRO_CLICK108 . '/daily_' . $key . '.php?iAcDay=' . $date . '&iAstro=' . $key;
            $content = $this->client->get($uri)->getBody()->getContents();

            $crawler = new Crawler($content);
            $domElements = $crawler->filter('div.TODAY_CONTENT');

            $this->setHoroscope($domElements, $constellation);
        }

        return $this->horoscopes;
    }

    /**
     * @param Crawler $domElements
     * @param String $constellation
     */
    private function setHoroscope(Crawler $domElements, String $constellation)
    {
        $horoscope = [];

        foreach ($domElements->children() as $domElement) {
            array_push($horoscope, $domElement->textContent);
        }

        array_pull($horoscope, 0);
        $horoscope = array_chunk($horoscope, 2);

        $horoscope = array_map(function ($array) {
            return head($array) . last($array);
        }, $horoscope);

        $horoscope = array_combine(self::FORTUNES, $horoscope);

        data_set($this->horoscopes, $constellation, $horoscope);
    }
}
