<?php namespace Hocmai\Recruitment\Components;

use Cms\Classes\ComponentBase;
use Hocmai\Recruitment\Models\Room as NewRooms;
class Rooms extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'Rooms Component',
            'description' => 'No description provided yet...'
        ];
    }


    public $rooms;

    public function defineProperties()
    {
        return [];
    }

    public function onRun() {
        $rooms = $this->rooms= NewRooms::all()->toArray();
    }
}
