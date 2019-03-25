<?php namespace Indikator\News\Components;

use Cms\Classes\ComponentBase;
use Indikator\News\Models\Posts as NewsPost;
use Redirect;
use BackendAuth;

class DetailNews extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'DetailNews ',
            'description' => 'Chi tiết tin tức '
        ];
    }



    public $post;

    public $postsUpcoming;

    public $postsNomal;

    public $postReadMosts;

    public $detail_news;

    public $read_most;

    public $tieu_de;

    public $readMost;

   

    public function defineProperties()
    {
        return [
            'slug' => [
                'title'       => 'indikator.news::lang.settings.slug_title',
                'description' => 'indikator.news::lang.settings.slug_description',
                'default'     => '{{ :slug }}',
                'type'        => 'string'
            ]
        ];
    }

    public function onRun()
    {
        $cat_id = $this->param('cat_id');
        $detail_news = $this->detail_news = $this->page['detail_news'] = $this->loadPost();
        $readMost = $detail_news->read_most;
        $newRead = $readMost + 1;
        $id = $this->detail_news->id;
        NewsPost::where('id', $id)->update(['read_most' => $newRead]);
    }

    protected function loadPost()
    {
        $slug = $this->property('slug');

        $slug_check = strpos($slug,"default");
        

        if (strpos($slug, 'default') !== false) {
            $slug = substr($slug,7);
        } else {
            $slug = $slug;
        }
        // $slug_check = substr($this->property('slug'),7);
        $post = new NewsPost;

        $post = $post->isClassExtendedWith('RainLab.Translate.Behaviors.TranslatableModel')
            ? $post->transWhere('slug', $slug)
            : $post->where('slug', $slug);

        $post = $post->isPublished();

        if ($post->count() == 0 || !$post = $post->first()) {
            return Redirect::to('404');
        }

        if (!BackendAuth::check()) {
            NewsPost::where('slug', $slug)->increment('statistics');
        }

        $post->tags = explode(',', $post->tags);

        $meta_description = strip_tags($post->introductory);
        if (strlen($meta_description) > 252) {
            $meta_description = substr($meta_description, 0, 252).'...';
        }

        // $this->page->title = $post->title;
        $this->page->meta_title = $post->title;
        $this->page->meta_description = $meta_description;

        return $post;
    }
}

