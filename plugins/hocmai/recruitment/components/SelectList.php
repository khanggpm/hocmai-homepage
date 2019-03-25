<?php namespace Hocmai\Recruitment\Components;

use Cms\Classes\ComponentBase;
use Hocmai\Recruitment\Models\Room;
use Hocmai\Recruitment\Models\Ranks;
use Hocmai\Recruitment\Models\Detail;

class SelectList extends ComponentBase
{
    public $rooms;

    public $ranks;

    public $nameRecuitments;

    public function componentDetails()
    {
        return [
            'name'        => 'Select List',
            'description' => 'Hiển thị select list'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

    public function onRun() 
    {
        $this->ranks = Ranks::all();
        $this->nameRecuitments = Detail::all();
    }
}
