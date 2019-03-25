<?php namespace Hocmai\Homepage;

use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
    	return [
    		'Hocmai\Homepage\Components\Info' => 'info',
            'Hocmai\Homepage\Components\ThreeNews' => 'threenews',
            'Hocmai\Homepage\Components\Partner' => 'partner',
            'Hocmai\Homepage\Components\Event' => 'event',
    		'Hocmai\Homepage\Components\Settings' => 'settings',
    	];
    }

    public function registerSettings()
    {
        
    }
}
