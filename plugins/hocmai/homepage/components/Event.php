<?php namespace Hocmai\Homepage\Components;

use Cms\Classes\ComponentBase;
use Hocmai\Homepage\Models\Events as NewEvent;
class Event extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'Event ',
            'description' => ''
        ];
    }

    public function defineProperties()
    {
        return [];
    }

    public $events;
    
    public function onRun() {
        $events = NewEvent::all()->reverse()->take(10);

        $this->events= $this->page['events'] = $events;
        
    }
}
