<?php namespace Indikator\News\Components;

use Cms\Classes\ComponentBase;
use Cms\Classes\Page;
use Indikator\News\Models\Posts as NewsPost;
use Indikator\News\Models\Categories as NewsCategory;
use Lang;
use Redirect;

class ReadMosts extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'ReadMosts ',
            'description' => 'Đọc nhiều nhất'
        ];
    }

    public $read_mosts;

    public function defineProperties()
    {
        return [];
    }

    public function onRun() {
        $cat_id = $this->param('cat_id')? $this->param('cat_id') :'null';
        
        if ($cat_id != 'null') {
             $read_mosts =  NewsPost::where('category_id', $cat_id)->where('status', 1)
                ->orderBy('read_most', 'desc')
                ->take(10)
            ->get();
        } else {
             $read_mosts =  NewsPost::where('status', 1)
                ->orderBy('read_most', 'desc')
                ->take(10)
            ->get();
        }
       
        $this->read_mosts = $this->page['read_mosts'] =  $read_mosts;
    }
}
