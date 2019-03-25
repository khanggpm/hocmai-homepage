<?php namespace Indikator\News\Components;

use Cms\Classes\ComponentBase;
use Cms\Classes\Page;
use Indikator\News\Models\Posts as NewsPost;
use Indikator\News\Models\Categories as NewsCategory;
use Lang;
use Redirect;

class BigNews extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'BigNews',
            'description' => '3 tin nổi đầu trang'
        ];
    }

    public $big_news;

    public $first_big_new;

    public $two_big_new;

    public function defineProperties()
    {
        return [];
    }

    public function onRun() {
        $cat_id = $this->param('cat_id');
        $big_news = NewsPost::all()->where('category_id', $cat_id)->where('status', 1)->where('hot_news',1)->reverse()->take(3);

        $this->big_news = $this->page['big_news'] =  $big_news;
        $this->page['first_big_new'] = $big_news->take(1);
        $this->page['two_big_new'] = $big_news->slice(1);
        $this->big_news = [];
        foreach($big_news as $news) {
            $this->big_news[] = [
                'id' => $news->id,
                'title' => $news->title,
                'slug' => $news->slug,
                'image' => $news->image
            ];
        }
    }
}
