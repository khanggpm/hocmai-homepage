<?php namespace Hocmai\Homepage\Components;

use Cms\Classes\ComponentBase;
use  Indikator\News\Models\Posts as NewPosts;
class ThreeNews extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'ThreeNews ',
            'description' => 'Lấy 3 tin footer'
        ];
    }

    public function defineProperties()
    {
        return [];
    }
    public $three_new;
    public $three_news;
    public function onRun() {
        $three_new = $this->three_new = $this->page['three_new'] = NewPosts::all()->where('status', 1)->where('category_id','<>', 3)->reverse()->take(3);

        $this->three_news = [];
        foreach($three_new as $news) {
            $this->three_news[] = [
                'id' => $news->id,
                'title' => $news->title,
                'slug' => $news->slug,
                'content' => strip_tags($news->introductory),
                'image' => $news->image,
                'category' => $news->category_id,
            ];
        }
    }


}
