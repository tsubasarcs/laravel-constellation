<?php

namespace App\Console\Commands;

use App\Services\CrawlerService;
use App\Services\HoroscopeService;
use Illuminate\Console\Command;

class GetHoroscopes extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'horoscope:fetch';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Fetch http://astro.click108.com.tw horoscopes data and write in database.';

    /**
     * @var CrawlerService
     */
    private $crawlerService;

    /**
     * @var HoroscopeService
     */
    private $horoscopeService;

    /**
     * Create a new command instance.
     *
     * @param CrawlerService $crawlerService
     * @param HoroscopeService $horoscopeService
     */
    public function __construct(CrawlerService $crawlerService, HoroscopeService $horoscopeService)
    {
        parent::__construct();
        $this->crawlerService = $crawlerService;
        $this->horoscopeService = $horoscopeService;
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $horoscopes = $this->crawlerService->getAstroClick108HoroscopeContent();

        if (!empty($horoscopes)) {
            foreach ($horoscopes as $constellation => $horoscope) {
                $this->horoscopeService->create([
                    'name' => $constellation,
                    'entirety' => $horoscope['entirety'],
                    'love' => $horoscope['love'],
                    'career' => $horoscope['career'],
                    'wealth' => $horoscope['wealth']
                ]);
            }

            $this->info('Success!');

            return true;
        }

        $this->error('The horoscope web site content is empty, please check it out!');

        return true;
    }
}
