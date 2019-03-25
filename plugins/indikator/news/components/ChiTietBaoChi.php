<?php namespace Indikator\News\Components;

use Cms\Classes\ComponentBase;
use Indikator\News\Models\Posts as NewsPost;
use Redirect;
use BackendAuth;

class ChiTietBaoChi extends ComponentBase
{
    public $post;

    public $postsUpcoming;

    public $postsNomal;
    
    public $postReadMosts;


    public function componentDetails()
    {
        return [
            'name'        => 'Chi tiết BC',
            'description' => 'Chi tiết tin báo chí'
        ];
    }

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
        $this->post = $this->page['post'] = $this->loadPost();
        $readMost = $this->post->read_most;
        $newRead = $readMost + 1;
        $idPost = $this->post->id;
        NewsPost::where('id', $idPost)->update(['read_most' => $newRead]);

        $posts = NewsPost::all();
        $this->postsUpcoming = $this->page['postsUpcoming'] = $posts->where('featured',1)->where('category_id', 2)->take(5)->reverse();
        $this->postsNomal = $this->page['postsNomal'] = $posts->where('category_id', 2)->take(5)->reverse();
        $this->postReadMosts = $this->page['postReadMosts'] = NewsPost::where('category_id', 2)->orderBy('read_most', 'desc')
            ->take(10)
            ->get();

    }

    protected function loadPost()
    {
        $slug = $this->property('slug');

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

        $this->page->title = $post->title;
        $this->page->meta_title = $post->title;
        $this->page->meta_description = $meta_description;

        return $post;
    }
}
