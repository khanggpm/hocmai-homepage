<?php namespace Hocmai\Recruitment;

use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
    	return [
    		'Hocmai\Recruitment\Components\SelectList' => 'selectList',
            'Hocmai\Recruitment\Components\DetailList' => 'detailsList',
            'Hocmai\Recruitment\Components\Jobs' => 'jobs',
            'Hocmai\Recruitment\Components\Ranks' => 'ranks',
            'Hocmai\Recruitment\Components\Rooms' => 'rooms',
    		'Hocmai\Recruitment\Components\ListsJob' => 'listsjob',
            'Hocmai\Recruitment\Components\ListsJob'   => 'listsjob',
            'Hocmai\Recruitment\Components\DetailJob'   => 'detailjob',
    	];
    }

    public function registerSettings()
    {
    }
}
