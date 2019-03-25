<?php namespace Hocmai\Recruitment\Components;

use Cms\Classes\ComponentBase;
use Hocmai\Recruitment\Models\Ranks as NewRanks;

class Ranks extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'Ranks Component',
            'description' => 'No description provided yet...'
        ];
    }

    public $ranks;

    public function defineProperties()
    {
        return [];
    }

    public function onRun() {
        $ranks = $this->ranks= NewRanks::all()->toArray();
    }
}
