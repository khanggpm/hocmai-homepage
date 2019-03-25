<?php namespace Hocmai\Homepage\Components;

use Cms\Classes\ComponentBase;
use Hocmai\Homepage\Models\Settings as NewSettings;
class Settings extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'Settings',
            'description' => 'Settings'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

    public $setting;

    public $set;
    public function onRun() {
        $this->setting = $this->page['setting'] = NewSettings::all()->reverse()->take(1);
    }
}
