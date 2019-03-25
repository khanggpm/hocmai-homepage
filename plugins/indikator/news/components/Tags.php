<?php namespace Indikator\News\Components;

use Cms\Classes\ComponentBase;
use Indikator\News\Models\Posts as NewsPost;
use Redirect;
use BackendAuth;
use Db;

class Tags extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'Tags',
            'description' => 'Tags'
        ];
    }



    public $posts;

    public function defineProperties()
    {
        return [
            'slug' => [
                'title'       => 'Tag',
                'description' => 'Tag',
                'default'     => '{{ :tags }}',
                'type'        => 'string'
            ]
        ];
    }

    public function onRun()
    {
        $tag = $this->param('tags');
        $tags = [];
        $tags = explode(',',$tag);
        $arrPosts = [];
        foreach($tags as $t) {
            $posts = Db::table('indikator_news_posts')->where('tags','like', '%'.$t.'%')->get()->toArray();
            $arrPosts = $posts;
        }

        $newListNews = [];
        $arr = [];

        foreach($arrPosts as $list ) {
            $newListNews = [
                'id' => $list->id,
                'title' => $list->title,
                'slug' => $list->slug,
                'introductory' => $list->introductory,
                'content' => $list->content,
                'published_at' => $list->published_at,
                'status' => $list->status,
                'created_at' => $list->created_at,
                'image' => $list->image,
                'category_id' => $list->category_id,
                'tag' => $list->tags,
                'tagPosts' => explode(',',$list->tags),
             
            ];
            $arr[] = $newListNews;
        }
        $this->posts = $this->page['posts'] =  $arr;
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
        // $this->page->meta_title = $post->title;
        $this->page->meta_description = $meta_description;

        return $post;
    }
}

