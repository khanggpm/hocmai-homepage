<?php namespace Hocmai\Homepage\Components;

use Cms\Classes\ComponentBase;
use Hocmai\Homepage\Models\Partner as NewPartner;
class Partner extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'Partner ',
            'description' => 'Đối tác'
        ];
    }

    public $partner;

    public $count;

    public $pars;

    public function defineProperties()
    {
        return [];
    }

    public function onRun(){
         $pars = $this->pars= $this->page['pars'] = NewPartner::all()->reverse()->take(12)->toArray();
       
        $partner = $this->partner= $this->page['count'] = 0;
    }
}
