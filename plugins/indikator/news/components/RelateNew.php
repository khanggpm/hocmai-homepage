<?php namespace Indikator\News\Components;

use Cms\Classes\ComponentBase;
use Indikator\News\Models\Posts as NewsPost;
class RelateNew extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'RelateNew Component',
            'description' => 'No description provided yet...'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

    public $relate_news;

    public function onRun() {
        $cat_id = $this->param('cat_id');
        $relate_news = NewsPost::all()->where('category_id', $cat_id)->where('status', 1)->reverse()->take(10);
        $this->relate_news = $this->page['relate_news'] = $relate_news;
    }
}
