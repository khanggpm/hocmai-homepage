<?php namespace Hocmai\Recruitment\Components;

use Cms\Classes\ComponentBase;
use hocmai\Recruitment\Models\Jobs as NewJobs;
use hocmai\Recruitment\Models\Detail as NewDetails;
use hocmai\Recruitment\Models\Slider as NewSLider;
use Db;
class Jobs extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'Jobs ',
            'description' => 'Nghề nghiệp'
        ];
    }

    public $jobs;

    public $slider;

    public function defineProperties()
    {
        return [];
    }

    public function onRun() {
        $jobs = $this->jobs= NewJobs::all()->toArray();
        $slider = $this->slider= NewSLider::orderBy('order','DESC')->take(8)->get()->toArray();
    }
}